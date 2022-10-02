.class public final Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;
.super Lcom/motorola/camera/scenedetection/scene/ActionScene;
.source "SceneImpl.kt"


# instance fields
.field public final cameraType:Lcom/motorola/camera/settings/CameraType;

.field public final originCameraType:Lcom/motorola/camera/settings/CameraType;

.field public final persistOnLensSwitch:Z

.field public final zoomJump:Z

.field public final zoomRatio:F

.field public final zoomSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;Ljava/lang/Integer;IFZLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Z)V
    .locals 1

    const-string v0, "originCameraType"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraType"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/scenedetection/scene/ActionScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;Ljava/lang/Integer;I)V

    .line 2
    iput p5, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->zoomRatio:F

    .line 3
    iput-boolean p6, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->zoomJump:Z

    .line 4
    iput-object p7, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->originCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 5
    iput-object p8, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->cameraType:Lcom/motorola/camera/settings/CameraType;

    .line 6
    iput-object p9, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->zoomSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 7
    iput-boolean p10, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->persistOnLensSwitch:Z

    return-void
.end method


# virtual methods
.method public doAction(Lcom/motorola/camera/EventListener;)V
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->zoomSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    const-string v3, "ZOOM_SEGMENT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->cameraType:Lcom/motorola/camera/settings/CameraType;

    const-string v3, "CAMERA_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->originCameraType:Lcom/motorola/camera/settings/CameraType;

    const-string v4, "ORIGIN_CAMERA_TYPE"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/4 v2, 0x1

    const-string v4, "IS_MANUAL_JUMP"

    .line 5
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    iget-boolean v2, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->zoomJump:Z

    if-eqz v2, :cond_2

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackZoomBlendingCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isZoomBlendingSupportedMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 10
    sget-object v4, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->GROUPSHOT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne v2, v4, :cond_1

    .line 11
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v2, v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 12
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    iget v1, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->zoomRatio:F

    const-string v2, "ZOOM_JUMP_X"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->cameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 15
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_JUMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1

    .line 16
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 17
    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne p0, v2, :cond_3

    .line 18
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_3
    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOCUS_TOO_FAR:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne p0, v2, :cond_4

    .line 20
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 21
    :cond_4
    :goto_0
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_1
    return-void
.end method

.method public getPersistOnLensSwitch()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->persistOnLensSwitch:Z

    return p0
.end method
