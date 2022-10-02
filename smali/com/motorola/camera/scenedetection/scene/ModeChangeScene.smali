.class public final Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;
.super Lcom/motorola/camera/scenedetection/scene/ActionScene;
.source "SceneImpl.kt"


# instance fields
.field public final mode:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;III)V
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/scenedetection/scene/ActionScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;Ljava/lang/Integer;I)V

    .line 2
    iput p5, p0, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;->mode:I

    return-void
.end method


# virtual methods
.method public doAction(Lcom/motorola/camera/EventListener;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;->mode:I

    sget-object v1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 2
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getMainCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/motorola/camera/mode/ModeChangeHelper;->INSTANCE:Lcom/motorola/camera/mode/ModeChangeHelper;

    const/4 v0, 0x0

    iget v1, p0, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;->mode:I

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 8
    invoke-static {p1, v0, v1, p0}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/scenedetection/scene/Scene$Type;)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->TAG:Ljava/lang/String;

    const-string v1, "Mode "

    .line 10
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not supported for scene "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_ACTION_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p1, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_0
    return-void
.end method
