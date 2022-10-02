.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;
.super Lcom/motorola/camera/fsm/ChangeListener;
.source "AppInfoViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/fsm/ChangeListener<",
        "Lcom/motorola/camera/fsm/camera/StateKey;",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel$Companion;

.field public static final LISTENED_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final coreModule:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

.field public final memoryModule:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->Companion:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel$Companion;

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 3
    move-object v2, v0

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    .line 4
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v3, v1, v2

    .line 5
    move-object v2, v0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "StateKeyCollectionBuilde\u2026\n                .build()"

    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/ChangeListener;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->coreModule:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->memoryModule:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    return-void
.end method


# virtual methods
.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 14
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "changeEvent.context"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    .line 3
    iget-object v3, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 4
    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {v3, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->coreModule:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 7
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 9
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v4, Ljava/lang/Boolean;

    const-string v7, "shouldRun"

    .line 11
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 12
    sget-object v4, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-nez v4, :cond_1

    move-object v4, v6

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v4}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_2

    .line 14
    sget-object v4, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 15
    iget-object v8, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    .line 16
    iget-object v8, v8, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aiScene:Landroidx/lifecycle/MutableLiveData;

    .line 17
    invoke-virtual {v8, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 18
    iget-object v4, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    .line 19
    iget-object v4, v4, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneMode:Landroidx/lifecycle/MutableLiveData;

    .line 20
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v4

    goto :goto_1

    .line 23
    :cond_3
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 24
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 25
    check-cast v4, Landroid/util/Size;

    .line 26
    :goto_1
    iget-object v8, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    .line 27
    iget-object v8, v8, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewSize:Landroidx/lifecycle/MutableLiveData;

    .line 28
    invoke-virtual {v8, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 29
    sget-object v4, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 30
    iget-object v4, v4, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 31
    iget-object v8, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->statusListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;

    invoke-virtual {v4, v8}, Lcom/motorola/camera/device/CameraStateManager;->addStateListener(Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;)V

    .line 32
    iget-object v4, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 33
    iget-object v4, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->focusStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 34
    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 35
    iget-object v2, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->envInfoListener:Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 37
    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->mcfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 38
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 39
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->LISTENED_NOTIFIERS:Ljava/util/List;

    .line 40
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/Notifier$TYPE;

    .line 41
    iget-object v2, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->notifiersListener:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_2

    .line 42
    :cond_4
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->previewSizeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 43
    iget-object p1, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->batteryDrainMonitor:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 45
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    iput-object v8, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v9, 0x0

    .line 46
    new-instance v11, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;

    invoke-direct {v11, p1, v6}, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 47
    iput-boolean v5, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->isRunning:Z

    .line 48
    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->memoryModule:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MEMORY_STATS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 50
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 51
    check-cast p1, Ljava/lang/Boolean;

    .line 52
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 53
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 54
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v8, 0x0

    .line 55
    new-instance v10, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;

    invoke-direct {v10, p0, v6}, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 56
    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->isRunning:Z

    goto/16 :goto_5

    .line 57
    :cond_6
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 58
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->coreModule:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    .line 59
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 60
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-boolean v4, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->isRunning:Z

    const/4 v7, 0x0

    if-eqz v4, :cond_9

    .line 62
    iget-object v4, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    .line 63
    iget-object v4, v4, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->list:Ljava/util/List;

    .line 64
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/lifecycle/MutableLiveData;

    .line 65
    invoke-virtual {v8, v6}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 66
    :cond_7
    sget-object v4, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 67
    iget-object v4, v4, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 68
    iget-object v8, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->statusListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;

    invoke-virtual {v4, v8}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 69
    iget-object v4, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 70
    iget-object v4, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->focusStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 71
    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 72
    iget-object v2, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->envInfoListener:Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 73
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 74
    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->mcfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 75
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 76
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->LISTENED_NOTIFIERS:Ljava/util/List;

    .line 77
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/Notifier$TYPE;

    .line 78
    iget-object v2, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->notifiersListener:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_4

    .line 79
    :cond_8
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->previewSizeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 80
    iget-object p1, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->batteryDrainMonitor:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    .line 81
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1, v6, v5}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;I)V

    .line 82
    iput-boolean v7, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->isRunning:Z

    .line 83
    :cond_9
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->memoryModule:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    .line 84
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->isRunning:Z

    if-eqz p1, :cond_a

    .line 85
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1, v6, v5}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;I)V

    .line 86
    iput-boolean v7, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->isRunning:Z

    :cond_a
    :goto_5
    return-void
.end method
