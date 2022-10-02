.class public final synthetic Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/util/ListenerSet;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/jms/BgJobTransferService;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    packed-switch v2, :pswitch_data_0

    move v2, v4

    goto/16 :goto_1b

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sLagFromShutterToNative:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 2
    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    move v1, v4

    goto/16 :goto_17

    .line 3
    :cond_1
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->cancelCleanup(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-boolean v0, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mCancelled:Z

    if-eqz v0, :cond_3

    .line 6
    iget-boolean v0, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSequenceStopped:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->cancelCleanup(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    goto :goto_0

    .line 8
    :cond_3
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;

    const/4 v6, 0x0

    invoke-direct {v0, v2, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;)V

    .line 9
    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->noOnDemandRequests:Z

    if-nez v7, :cond_4

    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->allMetadataCollected:Z

    if-eqz v7, :cond_4

    iget-boolean v7, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isBgBound:Z

    if-nez v7, :cond_4

    .line 10
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    .line 11
    :cond_4
    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->allCollectionDone:Z

    if-nez v7, :cond_9

    .line 12
    iget-object v7, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    monitor-enter v7

    .line 13
    :try_start_0
    iget-object v8, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mFullFrameRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;

    .line 15
    iget-boolean v11, v10, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    if-nez v11, :cond_6

    .line 16
    iget-object v11, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    iget-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 18
    invoke-virtual {v10, v11, v12, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    goto :goto_1

    .line 19
    :cond_7
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v7, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->normalFramesCollected:Z

    if-eqz v7, :cond_8

    .line 21
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    .line 22
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->playShutterOnce(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    .line 23
    :cond_8
    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->allFailed:Z

    if-nez v7, :cond_a

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 25
    :cond_9
    iget-boolean v7, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isDeterminateFgProcessingShot:Z

    if-nez v7, :cond_a

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->playShutterOnce(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    .line 26
    :cond_a
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    .line 27
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$ReprocStatus;

    iget-boolean v8, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->allJpegsReceived:Z

    invoke-direct {v7, v2, v5, v8, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$ReprocStatus;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;ZLcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;)V

    .line 28
    iget-boolean v6, v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$ReprocStatus;->anyFailed:Z

    if-eqz v6, :cond_b

    .line 29
    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 30
    new-instance v8, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 31
    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v6, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {v6, v8}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 33
    :cond_b
    iget-boolean v6, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->allFailed:Z

    if-eqz v6, :cond_c

    .line 34
    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 35
    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v8, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v8, v2, v5}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    :cond_c
    iget-boolean v6, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->allComplete:Z

    if-eqz v6, :cond_0

    iget-boolean v6, v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$ReprocStatus;->allReprocsComplete:Z

    if-eqz v6, :cond_0

    iget-boolean v6, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSequenceStopped:Z

    if-eqz v6, :cond_0

    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->allJpegsReceived:Z

    if-eqz v0, :cond_0

    .line 38
    iget-boolean v0, v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$ReprocStatus;->anyFailed:Z

    if-eqz v0, :cond_d

    .line 39
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v0

    .line 40
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mBundle:Landroid/os/Bundle;

    const-string v6, "REPROCESS_FAILURE"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    :cond_d
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_STORE_ALL_JPEGS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 42
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 43
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 44
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v0

    .line 45
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mBundle:Landroid/os/Bundle;

    const-string v6, "REPROCESS_FAILURE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 47
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 48
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    iget-object v8, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    monitor-enter v8

    .line 50
    :try_start_2
    iget-object v9, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v4, v15, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mReprocRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    move-object/from16 p0, v9

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;

    .line 54
    invoke-interface {v4, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 55
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 56
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-object v4, v15, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mSoftJpegRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_e

    const/4 v4, 0x1

    goto :goto_3

    :cond_e
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 59
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 60
    invoke-virtual {v9}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v16

    if-eqz v16, :cond_f

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 61
    :cond_f
    invoke-virtual {v9}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v16

    if-eqz v16, :cond_10

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 62
    :cond_10
    invoke-virtual {v9}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v16

    if-eqz v16, :cond_11

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 63
    :cond_11
    invoke-virtual {v9}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v16

    if-eqz v16, :cond_12

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 64
    :cond_12
    invoke-virtual {v9}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v16

    if-eqz v16, :cond_13

    add-int/lit8 v14, v14, 0x1

    .line 65
    :cond_13
    :goto_5
    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p1, v3

    move-object/from16 v3, v16

    check-cast v3, Landroid/util/Pair;

    .line 66
    invoke-virtual {v2, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->hasInstanceFailed(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;)Z

    move-result v16

    if-nez v16, :cond_16

    if-nez v3, :cond_14

    .line 67
    new-instance v3, Landroid/util/Pair;

    move-object/from16 v16, v4

    iget v4, v15, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mPriority:I

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v10

    move-object/from16 v10, v17

    check-cast v10, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-direct {v3, v4, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v0, v9, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_14
    move-object/from16 v16, v4

    move/from16 v18, v10

    .line 70
    iget v4, v15, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mPriority:I

    iget-object v10, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v4, v10, :cond_15

    .line 71
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v3, Landroid/util/Pair;

    iget v4, v15, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mPriority:I

    .line 73
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-direct {v3, v4, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v0, v9, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 75
    :cond_15
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_16
    move-object/from16 v16, v4

    move/from16 v18, v10

    :goto_6
    move-object/from16 v3, p1

    move-object/from16 v4, v16

    move/from16 v10, v18

    goto/16 :goto_4

    :cond_17
    move-object/from16 v16, v4

    move-object/from16 v9, p0

    move-object/from16 v7, v16

    const/4 v4, 0x1

    goto/16 :goto_2

    .line 76
    :cond_18
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-gtz v10, :cond_1c

    if-gtz v11, :cond_1c

    if-lez v12, :cond_19

    .line 77
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_19
    if-lez v13, :cond_1a

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1a
    if-lez v14, :cond_1b

    .line 78
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_7

    :cond_1b
    const/4 v3, 0x0

    goto :goto_8

    :cond_1c
    :goto_7
    const/4 v3, 0x1

    :goto_8
    const-string v4, ""

    if-eqz v3, :cond_1d

    .line 79
    invoke-static {}, Lcom/motorola/camera/BurstShotFileUtils;->generateBurstGroupID()Ljava/lang/String;

    move-result-object v4

    :cond_1d
    add-int/2addr v10, v11

    add-int/2addr v12, v10

    add-int/2addr v13, v12

    add-int/2addr v14, v13

    .line 80
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v9, v11

    const/4 v8, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p0, v0

    move-object/from16 v0, v16

    check-cast v0, Landroid/util/Pair;

    .line 82
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0

    .line 84
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 85
    invoke-virtual {v15}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v16

    .line 86
    invoke-virtual {v15}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v17

    .line 87
    invoke-virtual {v15}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v18

    .line 88
    invoke-virtual {v15}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v19

    .line 89
    invoke-virtual {v15}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v20

    .line 90
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_1e

    if-eqz v18, :cond_1e

    .line 91
    sget-object v15, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object v15, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-object/from16 p1, v15

    .line 92
    sget-object v15, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iput-object v15, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    move-object/from16 v15, p1

    .line 93
    :cond_1e
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_1f

    if-eqz v19, :cond_1f

    .line 94
    sget-object v15, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object v15, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-object/from16 p1, v15

    .line 95
    sget-object v15, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iput-object v15, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    move-object/from16 v15, p1

    .line 96
    :cond_1f
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_20

    if-eqz v20, :cond_20

    .line 97
    sget-object v15, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object v15, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-object/from16 p1, v15

    .line 98
    sget-object v15, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_CUD:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iput-object v15, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    move-object/from16 v15, p1

    :cond_20
    move-object/from16 p1, v6

    .line 99
    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    move-object/from16 v21, v2

    const-string v2, "ALTERNATE_SHOT"

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v6, "UUID"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v17, :cond_21

    add-int/lit8 v2, v8, 0x1

    goto :goto_a

    :cond_21
    if-eqz v16, :cond_22

    add-int/lit8 v2, v9, 0x1

    move/from16 v22, v9

    move v9, v2

    move v2, v8

    move/from16 v8, v22

    :goto_a
    move/from16 v16, v3

    move/from16 v22, v8

    move v8, v2

    move v2, v14

    move/from16 v14, v22

    goto :goto_d

    :cond_22
    if-eqz v18, :cond_23

    .line 101
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    add-int/lit8 v2, v10, 0x1

    move/from16 v16, v3

    goto :goto_f

    :cond_23
    if-eqz v19, :cond_24

    .line 102
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_24

    add-int/lit8 v2, v12, 0x1

    move/from16 v16, v3

    move/from16 v22, v12

    move v12, v2

    :goto_b
    move/from16 v2, v22

    goto :goto_10

    :cond_24
    if-eqz v20, :cond_25

    .line 103
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    add-int/lit8 v2, v13, 0x1

    move/from16 v16, v3

    goto :goto_e

    :cond_25
    if-lez v11, :cond_26

    .line 104
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "ANALYTICS_COMPOSITION_TRIGGERED"

    move/from16 v16, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_c

    :cond_26
    move/from16 v16, v3

    :goto_c
    add-int/lit8 v2, v14, 0x1

    :goto_d
    move/from16 v22, v14

    move v14, v2

    move v2, v13

    move/from16 v13, v22

    :goto_e
    move/from16 v22, v13

    move v13, v2

    move v2, v10

    move/from16 v10, v22

    :goto_f
    move/from16 v22, v10

    move v10, v2

    goto :goto_b

    .line 105
    :goto_10
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    const-string v4, "alternate_shot_index_"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v2, v3, :cond_27

    .line 107
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 108
    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 109
    iget-object v2, v2, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPhotoSolidDataManager:Lcom/motorola/camera/analytics/AnalyticsHelper$PhotoSolidDataManager;

    .line 110
    iget-wide v3, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mStartTime:J

    .line 111
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v6, v6, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    move-object/from16 v18, v7

    .line 113
    iget-object v7, v2, Lcom/motorola/camera/analytics/AnalyticsHelper$PhotoSolidDataManager;->mEndTimeMap:Ljava/util/Map;

    move/from16 v19, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 114
    iget-object v2, v2, Lcom/motorola/camera/analytics/AnalyticsHelper$PhotoSolidDataManager;->mEndTimeMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 115
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v3, "ANALYTICS_PHOTO_SOLID_TIME"

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_11

    :cond_27
    move-object/from16 v18, v7

    move/from16 v19, v8

    .line 116
    :cond_28
    :goto_11
    iget-boolean v2, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isBgBound:Z

    iput-boolean v2, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    .line 117
    invoke-static {v0, v15}, Lcom/motorola/camera/saving/ImageCaptureManager;->processCapture(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    .line 118
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostCaptureReview()Z

    move-result v0

    if-eqz v0, :cond_29

    move-object/from16 v2, v21

    .line 119
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 120
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 121
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "MCF_PROCESSING"

    const/4 v4, 0x0

    .line 122
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_12

    :cond_29
    move-object/from16 v2, v21

    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_9

    :cond_2a
    move-object/from16 p1, v6

    .line 123
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    .line 124
    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v3

    .line 125
    :try_start_3
    invoke-static {v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_13

    :catchall_1
    move-exception v0

    .line 126
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 127
    :cond_2b
    iget-object v3, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    monitor-enter v3

    .line 128
    :try_start_5
    iget-object v0, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_1
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    .line 129
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 130
    :try_start_6
    monitor-enter v1
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 131
    :try_start_7
    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 132
    :try_start_8
    monitor-exit v1

    goto :goto_14

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 133
    :cond_2c
    :try_start_9
    monitor-exit v3

    goto :goto_15

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 134
    :cond_2d
    :goto_15
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget-object v3, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v0

    iget-object v3, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->onJobCompleted(I)V

    .line 136
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 137
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance v3, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    .line 140
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2e

    .line 141
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 142
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getPhotoModeSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    move-result-object v0

    .line 143
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandler:Landroid/os/Handler;

    .line 144
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mCaptureQueueListener:Lcom/motorola/camera/saving/ImageCaptureManager$CaptureQueueListener;

    .line 145
    monitor-enter v1

    .line 146
    :try_start_a
    sget-object v4, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 147
    iget-object v4, v4, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 148
    monitor-exit v1

    .line 149
    iget-object v1, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getHandlerMessageId(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v0

    .line 151
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mCancelSet:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_16

    :catchall_4
    move-exception v0

    .line 152
    monitor-exit v1

    throw v0

    :cond_2e
    :goto_16
    const-string v0, "McfCaptureRequestRunnable"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mStartTime:J

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sceneMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_17
    return v1

    .line 154
    :pswitch_1
    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    .line 155
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandlerCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_2f

    invoke-interface {v0, v1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v4

    goto :goto_18

    :cond_2f
    const/4 v4, 0x1

    :goto_18
    return v4

    .line 156
    :pswitch_2
    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 157
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    .line 158
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;

    .line 159
    iget-boolean v4, v2, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v4, :cond_31

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v4, :cond_31

    .line 160
    iget-object v4, v2, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->build()Lcom/google/android/exoplayer2/util/FlagSet;

    move-result-object v4

    .line 161
    new-instance v5, Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;-><init>()V

    iput-object v5, v2, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    const/4 v5, 0x0

    .line 162
    iput-boolean v5, v2, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 163
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {v3, v2, v4}, Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/FlagSet;)V

    goto :goto_19

    :cond_31
    const/4 v5, 0x0

    .line 164
    :goto_19
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/ListenerSet;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v2, v5}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_32
    const/4 v2, 0x1

    return v2

    :pswitch_3
    move v2, v4

    .line 165
    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/jms/BgJobTransferService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget v3, v1, Landroid/os/Message;->what:I

    if-eq v3, v2, :cond_34

    if-eq v3, v5, :cond_33

    goto :goto_1a

    .line 167
    :cond_33
    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobTransferService;->mJmsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_1a

    .line 168
    :cond_34
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 169
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1a
    return v2

    .line 170
    :goto_1b
    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    sget-object v3, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mInflationStates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget v1, v1, Landroid/os/Message;->what:I

    if-eq v1, v2, :cond_3a

    if-eq v1, v5, :cond_38

    const/4 v2, 0x3

    if-eq v1, v2, :cond_35

    goto :goto_1c

    .line 172
    :cond_35
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {v1}, Lcom/motorola/camera/Util;->dismissKeyboard(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_1c

    .line 173
    :cond_36
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 174
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 175
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_BACK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1c

    .line 176
    :cond_37
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->onDestroy()V

    goto :goto_1c

    .line 177
    :cond_38
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->onDestroy()V

    .line 178
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {v1}, Lcom/motorola/camera/Util;->dismissKeyboard(Landroid/view/View;)Z

    .line 179
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    if-lez v1, :cond_39

    .line 181
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 182
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    :cond_39
    :goto_1c
    const/4 v1, 0x1

    goto :goto_1e

    .line 183
    :cond_3a
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;->LOADING:Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->updateState(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)Lkotlin/Unit;

    .line 184
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 186
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraActivityWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_3b

    goto :goto_1d

    .line 187
    :cond_3b
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x200

    .line 188
    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    const/16 v3, 0x8

    .line 189
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 190
    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    .line 191
    iput v4, v0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mUiOptionsOrig:I

    or-int/lit16 v4, v4, 0x100

    or-int/lit16 v4, v4, 0x400

    or-int/lit8 v4, v4, 0x4

    or-int/lit16 v4, v4, 0x1000

    .line 192
    invoke-virtual {v2, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 193
    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 194
    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mNavBarColorOrig:Ljava/lang/Integer;

    .line 195
    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060352

    sget-object v4, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 196
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 197
    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 198
    :goto_1d
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    .line 199
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_OPEN_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1c

    :goto_1e
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
