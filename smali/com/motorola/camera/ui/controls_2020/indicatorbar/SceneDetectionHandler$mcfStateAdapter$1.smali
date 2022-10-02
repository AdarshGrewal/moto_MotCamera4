.class public final Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler$mcfStateAdapter$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SceneDetectionHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAIScene(Lcom/motorola/camera/mcf/McfCallbackAIScene;)V
    .locals 3

    const-string v0, "aiScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mScene:Ljava/lang/String;

    const-string v0, "aiScene.mScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;->isCurrentScenePersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;

    sget-object v1, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->Companion:Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion;

    invoke-virtual {v1}, Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion;->getFactory()Lcom/motorola/camera/scenedetection/factory/SceneFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;

    .line 4
    iget-object v2, v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;->eventListener:Lcom/motorola/camera/EventListener;

    .line 5
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getScene(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Z)Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p1

    .line 6
    iput-object p1, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;

    .line 8
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->getSceneAdjustmentSetting(Lcom/motorola/camera/scenedetection/scene/Scene;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 13
    :goto_1
    iput-boolean v1, p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;->isEnabled:Z

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;->updateSceneDetection()V

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionHandler;->updateVisibility()V

    return-void
.end method
