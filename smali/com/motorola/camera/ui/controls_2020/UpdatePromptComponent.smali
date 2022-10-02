.class public final Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "UpdatePromptComponent.kt"


# static fields
.field public static final HIDE_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

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

.field public static final SHOW_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public acceptButton:Landroid/widget/Button;

.field public final activityContext:Landroid/app/Activity;

.field public bannerDismissed:Z

.field public bannerGroup:Landroidx/constraintlayout/widget/Group;

.field public bannerHidden:Z

.field public controlPanelOpen:Z

.field public final inAppUpdateUtils:Lcom/motorola/camera/utility/InAppUpdateUtils;

.field public final packageName:Ljava/lang/String;

.field public final panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

.field public refuseButton:Landroid/widget/Button;

.field public shouldKeepHidden:Z

.field public snackbarButton:Landroid/widget/Button;

.field public snackbarGroup:Landroidx/constraintlayout/widget/Group;

.field public snackbarIcon:Landroid/widget/ImageView;

.field public final snackbarProgress$delegate:Lkotlin/Lazy;

.field public snackbarText:Landroid/widget/TextView;

.field public updateAvailable:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v3, "MODE_WAIT_LOADING_KEY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->INFLATION_STATES:Ljava/util/List;

    const/4 v2, 0x6

    new-array v4, v2, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v6, "MODE_SHOW_UI_KEY"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v4, v3

    .line 4
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v6, "WS_CAPTURE_KEY"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v4, v0

    .line 5
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v6, "VIDEO_START_CAPTURE_KEY"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 6
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v7, "CODEC_VIDEO_RECORDING_KEY"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x3

    aput-object v5, v4, v7

    .line 7
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v8, "PS_CAPTURE_KEY"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    aput-object v5, v4, v8

    .line 8
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v9, "CINEMAGRAPH_CAPTURING_KEY"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x5

    aput-object v5, v4, v10

    .line 9
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->HIDE_STATES:Ljava/util/List;

    const/4 v11, 0x7

    new-array v11, v11, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v13, "MODE_HIDE_UI_KEY"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v12, v11, v3

    .line 11
    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v13, "MODE_CHANGE_KEY"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v12, v11, v0

    .line 12
    sget-object v12, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v13, "WS_STOPPING_CAPTURE_KEY"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v12, v11, v6

    .line 13
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v12, "VIDEO_STOP_CAPTURE_KEY"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v11, v7

    .line 14
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v7, "CODEC_VIDEO_STOP_KEY"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v11, v8

    .line 15
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v7, "PS_STOP_CAPTURE_KEY"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v11, v10

    .line 16
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v11, v2

    .line 17
    invoke-static {v11}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->SHOW_STATES:Ljava/util/List;

    .line 18
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 19
    move-object v6, v5

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 20
    move-object v1, v5

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 21
    move-object v1, v5

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 22
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v1, v0, v3

    .line 23
    move-object v1, v5

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 24
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 25
    move-object v1, v5

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 26
    check-cast v5, Ljava/util/Set;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "StateKeyCollectionBuilde\u2026\n                .build()"

    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$snackbarProgress$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$snackbarProgress$2;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarProgress$delegate:Lkotlin/Lazy;

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->activityContext:Landroid/app/Activity;

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->packageName:Ljava/lang/String;

    .line 5
    new-instance p2, Lcom/motorola/camera/utility/InAppUpdateUtils;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p1, v0}, Lcom/motorola/camera/utility/InAppUpdateUtils;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->inAppUpdateUtils:Lcom/motorola/camera/utility/InAppUpdateUtils;

    .line 6
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$panelTriggeredListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$panelTriggeredListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$panelTriggeredListener$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$panelTriggeredListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;)V

    .line 7
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 8
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    return-void
.end method


# virtual methods
.method public final cancelUpdate()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->inAppUpdateUtils:Lcom/motorola/camera/utility/InAppUpdateUtils;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->inAppUpdateUtils:Lcom/motorola/camera/utility/InAppUpdateUtils;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->updateTimesShown()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->activityContext:Landroid/app/Activity;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/camera/Util;->createGooglePlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final getSnackbarProgress()Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarProgress$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-object p0
.end method

.method public inflateViewStub()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :goto_0
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x7f0a0410

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    const v2, 0x7f0a040d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    :goto_2
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    const v2, 0x7f0a0412

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    :goto_3
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    const v2, 0x7f0a001b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    :goto_4
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->acceptButton:Landroid/widget/Button;

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_5

    :cond_5
    const v2, 0x7f0a0303

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    :goto_5
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refuseButton:Landroid/widget/Button;

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_6
    const v2, 0x7f0a0411

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    :goto_6
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_7

    :cond_7
    const v2, 0x7f0a0415

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_7
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    const v1, 0x7f0a0413

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    :goto_8
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->acceptButton:Landroid/widget/Button;

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :goto_9
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refuseButton:Landroid/widget/Button;

    if-nez v0, :cond_a

    goto :goto_a

    :cond_a
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_a
    return-void
.end method

.method public final refreshUIAnimation()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v1

    .line 4
    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-eqz v1, :cond_1

    rsub-int v2, v2, 0x168

    :cond_1
    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eq v2, v5, :cond_8

    if-eq v2, v4, :cond_4

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result p0

    const/4 v2, 0x0

    rsub-int v2, v2, 0x168

    int-to-float v2, v2

    sub-float/2addr v2, p0

    cmpg-float v3, v2, v9

    if-gez v3, :cond_2

    add-float/2addr v2, v7

    :cond_2
    cmpl-float v3, v2, v6

    if-lez v3, :cond_3

    sub-float/2addr v2, v7

    :cond_3
    add-float/2addr p0, v2

    move v3, v8

    move v2, v9

    move v4, v2

    goto :goto_3

    .line 6
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v2

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int p0, p0, 0x168

    int-to-float p0, p0

    sub-float/2addr p0, v2

    cmpg-float v3, p0, v9

    if-gez v3, :cond_5

    add-float/2addr p0, v7

    :cond_5
    cmpl-float v3, p0, v6

    if-lez v3, :cond_6

    sub-float/2addr p0, v7

    :cond_6
    add-float/2addr p0, v2

    if-nez v1, :cond_7

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    goto :goto_0

    .line 8
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    neg-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 9
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    neg-float v3, v3

    move v4, v3

    move v3, v8

    goto :goto_3

    :cond_8
    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    move v4, v5

    .line 10
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result p0

    rsub-int v2, v4, 0x168

    int-to-float v2, v2

    sub-float/2addr v2, p0

    cmpg-float v4, v2, v9

    if-gez v4, :cond_a

    add-float/2addr v2, v7

    :cond_a
    cmpl-float v4, v2, v6

    if-lez v4, :cond_b

    sub-float/2addr v2, v7

    :cond_b
    add-float/2addr p0, v2

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    neg-float v2, v2

    .line 12
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move v8, v3

    :goto_3
    if-eqz v1, :cond_d

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v9, v1

    :cond_d
    invoke-virtual {v0, v9}, Landroid/view/View;->setPivotX(F)V

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_e

    .line 16
    invoke-virtual {v0, p0}, Landroid/view/View;->setRotation(F)V

    .line 17
    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    .line 18
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 20
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_4

    .line 21
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 22
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_4
    return-void
.end method

.method public rotate(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 7
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->controlPanelOpen:Z

    if-nez p1, :cond_9

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->inAppUpdateUtils:Lcom/motorola/camera/utility/InAppUpdateUtils;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_LAST_CHECK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 8
    check-cast p1, Ljava/lang/Long;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v0, "lastUpdatePromptShownTimeInMilli"

    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 11
    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_DOWNLOAD_STARTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    const-string p1, "downloadStarted"

    .line 14
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    if-eqz v2, :cond_9

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->inAppUpdateUtils:Lcom/motorola/camera/utility/InAppUpdateUtils;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/InAppUpdateUtils;->initAppUpdaterAndCheckForUpdate()V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 17
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 18
    invoke-static {v1, p0, p1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_1

    .line 19
    :cond_3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->HIDE_STATES:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 21
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    .line 22
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->shouldKeepHidden:Z

    goto :goto_1

    .line 23
    :cond_4
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->SHOW_STATES:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 26
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 27
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    .line 28
    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 29
    :cond_5
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->controlPanelOpen:Z

    if-nez p1, :cond_7

    .line 30
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->updateAvailable:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    if-nez p1, :cond_6

    .line 31
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    .line 32
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 33
    :cond_6
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 34
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    .line 35
    :cond_7
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->shouldKeepHidden:Z

    goto :goto_1

    .line 36
    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 37
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 38
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 39
    invoke-static {v2, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 40
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->inAppUpdateUtils:Lcom/motorola/camera/utility/InAppUpdateUtils;

    .line 41
    iget-boolean p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->updateDownloaded:Z

    if-eqz p1, :cond_9

    .line 42
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->completeUpdate()V

    :cond_9
    :goto_1
    return-void
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
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->INFLATION_STATES:Ljava/util/List;

    return-object p0
.end method
