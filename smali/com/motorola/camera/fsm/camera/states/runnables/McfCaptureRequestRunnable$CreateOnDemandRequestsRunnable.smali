.class public Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;
.source "McfCaptureRequestRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CreateOnDemandRequestsRunnable"
.end annotation


# instance fields
.field public final mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$InstanceType;Ljava/util/List;Ljava/util/List;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;",
            "Lcom/motorola/camera/mcf/Mcf$InstanceType;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/mcf/McfMetadata;",
            ">;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Ljava/util/List;Ljava/util/List;Landroid/os/Handler;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;)V

    .line 3
    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    return-void
.end method


# virtual methods
.method public onRequest(ILcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->onRequest(ILcom/motorola/camera/fsm/RequestWrapper;)V

    .line 2
    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v3, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    .line 5
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->isAppResponsibleForSettingMfnrTags()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v4, v0, v5, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMfnr(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;ZZ)V

    .line 7
    :cond_0
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 8
    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 9
    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 10
    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    .line 11
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isQcMfnrBurstEnabled(Z)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 12
    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v6, v0, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->enableQcBurstMfnr(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mQcMfnrBurstRefCount:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$QcMfnrBurstRefCount;

    .line 14
    iget-object v8, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 15
    invoke-static {v8, v0}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I

    move-result v8

    .line 16
    monitor-enter v6

    .line 17
    :try_start_0
    iget v9, v6, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$QcMfnrBurstRefCount;->mNumOutstandingCount:I

    add-int/2addr v9, v8

    iput v9, v6, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$QcMfnrBurstRefCount;->mNumOutstandingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v6

    throw p0

    :cond_1
    move v3, v7

    .line 19
    :cond_2
    :goto_0
    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 20
    invoke-static {v6, v0}, Lcom/motorola/camera/IqConfigManager;->isQcMfnrEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 21
    invoke-static {v6, v0}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I

    move-result v8

    if-lez v8, :cond_3

    move v8, v5

    goto :goto_1

    :cond_3
    move v8, v7

    :goto_1
    if-nez v8, :cond_6

    .line 22
    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_MFNR_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {v8, v6, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 23
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v7

    :goto_2
    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    move v6, v7

    goto :goto_4

    :cond_6
    :goto_3
    move v6, v5

    :goto_4
    if-eqz v6, :cond_a

    .line 24
    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 25
    invoke-static {v6, v0}, Lcom/motorola/camera/IqConfigManager;->isQcMfnrEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 26
    invoke-static {v6, v0}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I

    move-result v6

    if-lez v6, :cond_7

    move v6, v5

    goto :goto_5

    :cond_7
    move v6, v7

    :goto_5
    if-eqz v6, :cond_9

    if-eqz v3, :cond_8

    .line 27
    iget-object v3, v4, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mQcMfnrBurstRefCount:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$QcMfnrBurstRefCount;

    .line 28
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$QcMfnrBurstRefCount;->block()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    move v5, v7

    .line 29
    :goto_6
    iget-object p2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 30
    invoke-static {p2, v0}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I

    move-result p2

    .line 31
    invoke-static {p2, v5}, Lcom/motorola/camera/IqConfigManager;->mfnrProcessTimeEstimates(IZ)I

    move-result p2

    goto :goto_7

    .line 32
    :cond_9
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getMtkMfnrEstimate()I

    move-result p2

    .line 33
    :goto_7
    new-instance v0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;-><init>()V

    .line 34
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mSeqIds:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    .line 35
    iput-wide v1, v0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTimeStamp:J

    .line 36
    iput p2, v0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mFrameCollectionTimeEst:I

    .line 37
    iget v3, v0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mMiscTimeEst:I

    add-int/2addr v3, p2

    iput v3, v0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTotalTimeEst:I

    .line 38
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    .line 39
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mOnFullFrameListener:Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    .line 40
    invoke-interface {p0, p1, v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;->onProcessTimeEstimate(Lcom/motorola/camera/mcf/McfInstanceIdentifier;Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;J)V

    :cond_a
    return-void
.end method
