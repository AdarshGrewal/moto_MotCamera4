.class public Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "CreateCaptureSessionRunnable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$CreateCaptureSessionCameraListener;
    }
.end annotation


# instance fields
.field public final mCameraListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$CreateCaptureSessionCameraListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCameraListeners:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    return-void
.end method

.method public static access$100(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCameraListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCameraListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    sget-object p1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_0

    .line 7
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->CREATE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    .line 9
    invoke-virtual {p1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 11
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 15
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 18
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static onSessionClosed(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 2
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "error_retry"

    .line 3
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->removePreviousOneShotErrorCallback(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isAuxBayerCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v2, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v0

    .line 9
    :goto_1
    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf;->closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V

    .line 12
    :cond_3
    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStream(Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStream(Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->closeReprocess(Ljava/lang/String;)V

    .line 15
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cameraId"

    .line 17
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 19
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    .line 21
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    .line 22
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    .line 23
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 24
    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne v2, v3, :cond_4

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 26
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 27
    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "QCFA_SHOT"

    .line 28
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 30
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    .line 32
    :cond_6
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 33
    iget-object v0, v0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 34
    sget-object v2, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/device/CameraStateManager;->getCameraSession(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;

    move-result-object v3

    if-ne v2, v3, :cond_7

    return-void

    .line 35
    :cond_7
    sget-object v3, Lcom/motorola/camera/device/CameraStateManager$StreamStatus;->STOPPED:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    invoke-virtual {v0, p0, v3}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$StreamStatus;)V

    const/4 v3, 0x0

    .line 36
    invoke-virtual {v0, p0, v3}, Lcom/motorola/camera/device/CameraStateManager;->setLinked(Ljava/lang/String;Z)V

    .line 37
    invoke-virtual {v0, p0, v2}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    .line 38
    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 39
    iget-object v3, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;

    if-eqz v3, :cond_9

    .line 40
    iget-object v4, v3, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriterLock:Ljava/lang/Object;

    monitor-enter v4

    .line 41
    :try_start_0
    iget-object v5, v3, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    if-eqz v5, :cond_8

    .line 42
    invoke-virtual {v5}, Landroid/media/ImageWriter;->close()V

    const/4 v5, 0x0

    .line 43
    iput-object v5, v3, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    .line 44
    :cond_8
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 45
    :cond_9
    :goto_3
    iget-object v3, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-class p0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v3, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_4

    .line 48
    :cond_a
    iget-object v3, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 49
    iget-object v3, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 50
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v6}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_6

    .line 51
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_5

    .line 52
    :cond_c
    iget-object v3, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 53
    iget-object v3, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 54
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 55
    invoke-virtual {v6}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V

    goto :goto_8

    .line 56
    :cond_d
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_7

    .line 57
    :cond_e
    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    monitor-exit p0

    .line 59
    invoke-virtual {v0}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsClosed()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 60
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachines()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 61
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->resetState()V

    goto :goto_9

    .line 62
    :cond_f
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    .line 63
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onCloseSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 64
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 65
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    .line 66
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 67
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_10
    return-void

    :catchall_1
    move-exception p1

    .line 69
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCameraListeners:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->clear()V

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p3

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p3

    :goto_0
    const/4 v0, 0x3

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 9
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    .line 10
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->setupSession(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;ZZ)Z

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocCameraTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/settings/CameraType;

    .line 14
    invoke-virtual {p0, p2, p3, v2, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->setupSession(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;ZZ)Z

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p3

    .line 18
    invoke-virtual {p0, p2, p1, v2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->setupSession(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;ZZ)Z

    goto :goto_4

    .line 19
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    sget-object p0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/motorola/camera/device/CameraStateManager;->getCameraOpen(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;

    move-result-object p2

    sget-object p3, Lcom/motorola/camera/device/CameraStateManager$Status;->UNUSED:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-eq p2, p3, :cond_6

    .line 24
    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    goto :goto_4

    .line 25
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 26
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 27
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    goto :goto_3

    .line 28
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    .line 29
    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p3

    .line 30
    invoke-virtual {p0, p2, p1, v2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->setupSession(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;ZZ)Z

    :cond_6
    :goto_4
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final setupSession(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;ZZ)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 3
    iget-object v2, v2, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 4
    sget-object v3, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    .line 5
    invoke-virtual {v2, v1, v3}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    .line 6
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$CreateCaptureSessionCameraListener;

    invoke-direct {v4, v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$CreateCaptureSessionCameraListener;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;Ljava/lang/String;)V

    .line 7
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCameraListeners:Ljava/util/Map;

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 9
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableSessionKeys()Ljava/util/List;

    move-result-object v2

    :goto_0
    const/4 v5, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->isEmptyPreviewBuilders()Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v12

    .line 15
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :cond_2
    if-eqz v2, :cond_3

    move v2, v12

    goto :goto_2

    :cond_3
    const/4 v2, 0x6

    .line 17
    :goto_2
    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 18
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 19
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->ISMOTCAMERA_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v1, v2, v7}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 20
    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 21
    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 22
    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 23
    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 24
    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKSmvrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 25
    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperNightMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 26
    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 27
    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 28
    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoHDR10Mode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 29
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    new-array v6, v12, [Z

    .line 30
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    aput-boolean v5, v6, v5

    .line 31
    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 32
    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v8

    .line 33
    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onSurfaceKeysRequired()Ljava/util/Collection;

    move-result-object v8

    .line 34
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    .line 35
    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    .line 36
    invoke-static {v10, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_4

    .line 37
    :cond_5
    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 38
    iget-object v10, v10, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 39
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v10, v10, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    invoke-virtual {v10, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    if-nez v10, :cond_6

    move-object v10, v3

    goto :goto_5

    :cond_6
    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/Surface;

    :goto_5
    if-nez v10, :cond_7

    goto :goto_4

    .line 41
    :cond_7
    new-instance v11, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v11, v10}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 42
    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->physicalCameraId:Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 43
    invoke-virtual {v11, v9}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    aput-boolean v12, v6, v5

    .line 44
    :cond_8
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 45
    :cond_9
    aget-boolean v8, v6, v5

    if-eqz v2, :cond_a

    move v9, v12

    goto :goto_6

    :cond_a
    move v9, v5

    :goto_6
    or-int/2addr v8, v9

    aput-boolean v8, v6, v5

    .line 46
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 47
    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 48
    check-cast v8, Landroid/util/Size;

    .line 49
    new-instance v9, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;

    invoke-direct {v9}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;-><init>()V

    move/from16 v10, p4

    .line 50
    iput-boolean v10, v9, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mUseMcf:Z

    .line 51
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v10

    iput v10, v9, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mWidth:I

    .line 52
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    iput v8, v9, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mHeight:I

    const/16 v8, 0x23

    .line 53
    iput v8, v9, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mFormat:I

    .line 54
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 55
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 56
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/settings/CameraType;->isOfflineReproc()Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_9

    .line 57
    :cond_b
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocPictureSize(Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object v10

    goto :goto_8

    .line 58
    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 59
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    goto :goto_7

    :cond_d
    move-object/from16 v10, p2

    .line 60
    :goto_7
    invoke-static {v10, v5}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object v10

    :goto_8
    if-nez v10, :cond_e

    const-string v8, "CreateCaptureSessionRunnable"

    const-string v10, "No input sizes defined!"

    .line 61
    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 63
    new-instance v10, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 64
    iget-object v13, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 65
    invoke-direct {v10, v11, v13}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 66
    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v8, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v8, v10}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_9

    .line 68
    :cond_e
    new-instance v3, Landroid/hardware/camera2/params/InputConfiguration;

    .line 69
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-direct {v3, v11, v10, v8}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    goto :goto_9

    .line 70
    :cond_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v8, 0x2

    .line 71
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 72
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaSize()Landroid/util/Size;

    move-result-object v3

    .line 73
    new-instance v8, Landroid/hardware/camera2/params/InputConfiguration;

    .line 74
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 75
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaRawImageFormat()I

    move-result v11

    invoke-direct {v8, v10, v3, v11}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    move-object v10, v8

    goto :goto_a

    :cond_10
    :goto_9
    move-object v10, v3

    .line 76
    :goto_a
    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    move-object/from16 v0, p1

    .line 77
    iget-object v11, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 78
    aget-boolean v13, v6, v5

    .line 79
    sget-object v14, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 80
    new-instance v15, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    .line 81
    iget-object v6, v14, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    move-object v0, v15

    move-object v3, v7

    move-object v5, v8

    move-object v7, v6

    move-object v6, v11

    move-object v8, v9

    move-object v9, v10

    move/from16 v10, p3

    move v11, v13

    .line 82
    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;Landroid/os/Handler;Landroid/os/Handler;Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;Landroid/hardware/camera2/params/InputConfiguration;ZZ)V

    .line 83
    iget-object v0, v14, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v12
.end method
