.class public Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "CloseAppRunnable.java"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# instance fields
.field public mCameraStatusListener:Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;

.field public mCancelled:Z

.field public mMcfClose:Z

.field public final mMcfCloseLock:Ljava/lang/Object;

.field public mMcfQueueListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

.field public mStopCameraListener:Lcom/motorola/camera/device/callables/CameraListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfCloseLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mStopCameraListener:Lcom/motorola/camera/device/callables/CameraListener;

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$2;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfQueueListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    .line 5
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCameraStatusListener:Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;

    return-void
.end method


# virtual methods
.method public final close(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 3
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 4
    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 7
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 8
    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    .line 9
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopAllModels()V

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfQueueListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 11
    sget-object v2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 12
    iget-object v3, v2, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 13
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCameraStatusListener:Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 14
    invoke-virtual {v1, p1}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->cancelAllJobs(Z)V

    .line 15
    :cond_0
    iget-object p1, v2, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 16
    invoke-virtual {p1}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 17
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->closeCaptureSessions(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 18
    :cond_1
    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCameraRunnable;->closeAllCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;)V

    .line 19
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 20
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public final closeCaptureSessions(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/device/CameraStateManager;->getOpenSessionCameraIds()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    const/4 v3, 0x1

    invoke-static {p1, v2, p0, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->closeAllSessions(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;Z)V

    .line 6
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->onSessionClosed(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    instance-of p1, p1, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 1
    const-class v9, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v9

    .line 2
    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 4
    iput-boolean v10, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExitBeforeDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v9

    .line 6
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 7
    iget-object v2, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "OUTSTANDING_QUEUE_SIZE"

    .line 8
    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->captureRecordSize()I

    move-result v3

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iput-object v8, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    move-object/from16 v1, p1

    .line 11
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    iput-boolean v10, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 13
    sget-object v1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 14
    iget-object v1, v1, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 15
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 16
    iget-object v3, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 17
    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    const/4 v11, 0x0

    .line 18
    iput-boolean v11, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCancelled:Z

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    .line 20
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 21
    iget-object v4, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 22
    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    .line 23
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopAllModels()V

    .line 24
    invoke-virtual {v1}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsClosed()Z

    move-result v1

    if-nez v1, :cond_b

    .line 25
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->isQueueEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 26
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 27
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 28
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->getQueueSize()I

    move-result v3

    .line 29
    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent;->MCF_QUEUE_SIZE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v4, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 30
    iget-object v4, v4, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v4, v3}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->isFrameCollectionDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 33
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mStateMap:Ljava/util/Map;

    monitor-enter v1

    .line 34
    :try_start_1
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mStateMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v10

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    .line 35
    iget-boolean v5, v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mIsUnlockShutterEarlyDone:Z

    xor-int/2addr v5, v10

    and-int/2addr v4, v5

    goto :goto_1

    .line 36
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 37
    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->cancelAllJobs(Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 38
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 39
    :cond_2
    :goto_2
    sget-object v1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 40
    iget-object v3, v1, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 41
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCameraStatusListener:Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/device/CameraStateManager;->addStateListener(Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;)V

    .line 42
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfCloseLock:Ljava/lang/Object;

    monitor-enter v3

    .line 43
    :try_start_3
    iput-boolean v11, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfClose:Z

    .line 44
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfQueueListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->isQueueEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfQueueListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onQueueEmpty()V

    .line 47
    :cond_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    iget-object v1, v1, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 49
    invoke-virtual {v1}, Lcom/motorola/camera/device/CameraStateManager;->getOpenSessionCameraIds()Ljava/util/List;

    move-result-object v2

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 52
    sget-object v5, Lcom/motorola/camera/device/CameraStateManager$StreamStatus;->STARTED:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    .line 53
    invoke-virtual {v1, v4}, Lcom/motorola/camera/device/CameraStateManager;->getPreviewStatus(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    move-result-object v6

    if-ne v5, v6, :cond_4

    .line 54
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 55
    :cond_5
    new-instance v12, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v12, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 56
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v13

    .line 57
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    .line 58
    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;

    invoke-direct {v6, v12}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mStopCameraListener:Lcom/motorola/camera/device/callables/CameraListener;

    .line 59
    iget-object v5, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 60
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isRTBokehInHal(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 61
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 62
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 63
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    goto :goto_5

    :cond_6
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 64
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v10, v3

    move-object v3, v15

    move-object/from16 p1, v5

    move-object v5, v7

    move-object v11, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/StopRepeatingListener;Landroid/os/Handler;)V

    move-object/from16 v1, p1

    invoke-static {v15, v10, v11, v1}, Lcom/motorola/camera/device/CameraService;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    goto :goto_6

    :cond_7
    move-object v1, v5

    move-object v11, v7

    .line 65
    invoke-static {v15, v6, v11, v1}, Lcom/motorola/camera/device/CameraService;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    .line 66
    :goto_6
    sget-object v1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 67
    iget-object v1, v1, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 68
    sget-object v2, Lcom/motorola/camera/device/CameraStateManager$StreamStatus;->STOPPED:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    .line 69
    invoke-virtual {v1, v15, v2}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$StreamStatus;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_4

    :cond_8
    const-wide/16 v1, 0x7d0

    .line 70
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :catch_0
    const/4 v1, 0x0

    :goto_7
    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    const/4 v10, 0x0

    goto :goto_9

    :catchall_1
    move-exception v0

    .line 71
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 72
    :cond_a
    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->closeCaptureSessions(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 73
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 74
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 75
    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    sget-object v2, Lcom/motorola/camera/analytics/UserExitAppEvent;->MCF_QUEUE_SIZE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v2, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 76
    iget-object v2, v2, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    :cond_b
    :goto_8
    const/4 v10, 0x1

    .line 78
    :goto_9
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 79
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 80
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    if-eqz v10, :cond_c

    .line 82
    invoke-static {v8, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCameraRunnable;->closeAllCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;)V

    .line 83
    iget-object v0, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 84
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    :cond_c
    const/4 v0, 0x0

    .line 85
    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->requestAudioFocus(Z)V

    .line 86
    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->muteNotifications(Z)V

    .line 87
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->cleanUpLocked()V

    .line 88
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    .line 89
    iput-boolean v0, v1, Lcom/motorola/camera/PermissionsManager;->mCriticalPermissionsDenied:Z

    .line 90
    iput-boolean v0, v1, Lcom/motorola/camera/PermissionsManager;->mOptionalPermissionsDenied:Z

    .line 91
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->getInstance()Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/ShaderCache;)V

    const-string v0, "ShaderCache"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 93
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 94
    iput-object v1, v0, Lcom/motorola/camera/PermissionsManager;->mCallback:Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;

    .line 95
    invoke-static {v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->setImageReviewListener(Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;)V

    .line 96
    monitor-enter v9

    .line 97
    monitor-exit v9

    return-void

    :catchall_2
    move-exception v0

    .line 98
    monitor-exit v9

    throw v0
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 99
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
