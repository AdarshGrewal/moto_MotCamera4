.class public Lcom/motorola/camera/Controller$1;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/Controller;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Controller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 3
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

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

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_OPT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_DRAW_MASK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->RESET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 7
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 9
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    iget-object v1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isAnyCameraFacingAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCamerasErrors()Lcom/motorola/camera/utility/Error;

    move-result-object v3

    .line 7
    iget-object v6, v2, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 8
    invoke-static {}, Lcom/motorola/camera/Util;->isProductWhiteLabel()Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x7f1100de

    goto :goto_0

    :cond_0
    const v7, 0x7f1100dd

    :goto_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v3}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    .line 10
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f1100df

    .line 11
    invoke-virtual {v2, v6, v3, v5, v4}, Lcom/motorola/camera/Controller;->createErrorDialog(ILjava/lang/String;ZZ)V

    goto/16 :goto_3

    .line 12
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v2, v5}, Lcom/motorola/camera/settings/SettingsManager;->isExternalCamera(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 14
    iget-object v2, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    invoke-static {v2}, Lcom/motorola/camera/Controller;->access$100(Lcom/motorola/camera/Controller;)V

    goto/16 :goto_3

    .line 15
    :cond_2
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 16
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 19
    iput-boolean v4, v2, Lcom/motorola/camera/Controller;->mIsIdle:Z

    goto/16 :goto_3

    .line 20
    :cond_4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 21
    iget-object v2, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 22
    iget-object v2, v2, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    .line 23
    new-instance v3, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/Controller$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;->INSTANCE:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 25
    :cond_5
    :goto_1
    iget-object v3, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 26
    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 27
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v6, "error_retry"

    .line 28
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 29
    iget-object v3, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 30
    iget-object v3, v3, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    .line 31
    iget-object v6, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 32
    check-cast v6, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 33
    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "ACTIVITY_RESULT"

    .line 34
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;

    .line 35
    check-cast v3, Lcom/motorola/camera/Camera;

    if-eqz v6, :cond_7

    .line 36
    iget-object v7, v6, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mIntent:Landroid/content/Intent;

    if-eqz v7, :cond_6

    .line 37
    iget v6, v6, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    .line 38
    invoke-virtual {v3, v6, v7}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 39
    :cond_6
    iget v6, v6, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    .line 40
    invoke-virtual {v3, v6}, Landroid/app/Activity;->setResult(I)V

    .line 41
    :cond_7
    :goto_2
    invoke-virtual {v3}, Lcom/motorola/camera/ActivityBase;->finish()V

    .line 42
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 43
    iget-object v2, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 44
    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 45
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 46
    sget-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v3, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 47
    iget-object v3, v3, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 48
    sget-object v6, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->ERROR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    :cond_8
    :goto_3
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 50
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 51
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 52
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "IS_CLI_DISPLAY"

    .line 53
    iget-object v2, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 54
    invoke-virtual {v2}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/Controller$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 56
    :cond_9
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 57
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 58
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 59
    :cond_a
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 60
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/Controller$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 61
    :cond_b
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_OPT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 62
    invoke-virtual {p1, v6}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 63
    invoke-virtual {p1, v6}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 64
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 65
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto/16 :goto_5

    .line 66
    :cond_c
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 67
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 68
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/Controller;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 69
    :cond_d
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_e

    .line 70
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 71
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 72
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 73
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    if-eqz p1, :cond_1f

    .line 74
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 75
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 77
    iput-object v6, v0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 79
    invoke-virtual {v0, p1}, Lcom/motorola/camera/Controller;->saveNewIntent(Landroid/content/Intent;)V

    .line 80
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 81
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    .line 82
    sget-object p1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 83
    :cond_e
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 84
    iget v7, v3, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_f

    .line 85
    iput v5, v3, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    .line 86
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 87
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 88
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_1f

    const-string v0, "LOADING_COMPLETE"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 90
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 91
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_6

    .line 92
    :cond_f
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 93
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 94
    iput-boolean v5, p1, Lcom/motorola/camera/Controller;->mIsIdle:Z

    .line 95
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 96
    iput v5, p1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    .line 97
    iget-boolean p1, p1, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    if-eqz p1, :cond_10

    .line 98
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p1

    iget-boolean p1, p1, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-nez p1, :cond_11

    .line 99
    :cond_10
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 100
    iput-boolean v5, p1, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    .line 101
    :cond_11
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 102
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    if-eqz p1, :cond_12

    .line 103
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 104
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 106
    iput-object v6, v0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 108
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    .line 109
    new-instance v2, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/Controller$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 110
    :cond_12
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    invoke-static {p0}, Lcom/motorola/camera/Controller;->access$1400(Lcom/motorola/camera/Controller;)V

    goto/16 :goto_6

    .line 111
    :cond_13
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 112
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    .line 113
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    .line 114
    iget-boolean p1, p1, Lcom/motorola/camera/settings/SettingsManager;->mHasExternalCamera:Z

    if-eqz p1, :cond_14

    const-string p1, "MotoCameraController"

    const-string/jumbo v0, "stateChanged: unsupported sensor"

    .line 115
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    invoke-static {p0}, Lcom/motorola/camera/Controller;->access$100(Lcom/motorola/camera/Controller;)V

    goto/16 :goto_6

    .line 117
    :cond_14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getNumberOfCameras()I

    move-result p1

    if-lez p1, :cond_1f

    .line 118
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasAllPhysicalCameras()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 119
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isAnyCameraFacingAllowed()Z

    move-result p1

    if-eqz p1, :cond_1f

    const-string p1, "MotoCameraController"

    const-string/jumbo v0, "stateChanged: sensor missing, getNumberOfCameras: %d"

    new-array v2, v5, [Ljava/lang/Object;

    .line 120
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getNumberOfCameras()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 121
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 123
    invoke-virtual {p0, v4}, Lcom/motorola/camera/Controller;->displayCameraErrorDialog1(Z)V

    goto/16 :goto_6

    .line 124
    :cond_15
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 125
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 126
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 127
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "FACING"

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "FACING"

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 130
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 131
    invoke-virtual {p0, v5}, Lcom/motorola/camera/Controller;->displayCameraErrorDialog1(Z)V

    goto/16 :goto_6

    .line 132
    :cond_16
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 133
    invoke-virtual {p0, v5}, Lcom/motorola/camera/Controller;->displayCameraErrorDialog1(Z)V

    goto/16 :goto_6

    .line 134
    :cond_17
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_DRAW_MASK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 135
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 136
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 137
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 138
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_4

    .line 139
    :cond_18
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->RESET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 140
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 141
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 142
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "FINISH_APP"

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "error_message"

    .line 144
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 146
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    const v0, 0x7f1100da

    .line 147
    invoke-virtual {p0, v0, p1, v5, v5}, Lcom/motorola/camera/Controller;->createErrorDialog(ILjava/lang/String;ZZ)V

    goto :goto_6

    .line 148
    :cond_19
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 149
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_6

    .line 151
    :cond_1a
    :goto_4
    iget-object v0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 152
    iput-boolean v5, v0, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    .line 153
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-eqz v0, :cond_1b

    .line 154
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 155
    iput-boolean v4, p0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    goto :goto_6

    .line 156
    :cond_1b
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_DRAW_MASK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 157
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 158
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 159
    :cond_1c
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    const/4 v0, 0x2

    .line 160
    iput v0, p1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    .line 161
    :cond_1d
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardLocked()Z

    move-result p1

    xor-int/2addr p1, v5

    .line 162
    iput-boolean p1, p0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    goto :goto_6

    .line 163
    :cond_1e
    :goto_5
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 164
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 165
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 166
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 167
    invoke-static {p0, p1}, Lcom/motorola/camera/Controller;->access$600(Lcom/motorola/camera/Controller;Landroid/os/Bundle;)V

    .line 168
    :cond_1f
    :goto_6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
