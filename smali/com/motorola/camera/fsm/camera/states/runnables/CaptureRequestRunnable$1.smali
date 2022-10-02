.class public Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;
.super Lcom/motorola/camera/device/callables/CaptureRequestListener;
.source "CaptureRequestRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/device/callables/CaptureRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 2
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 4
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "surface"

    .line 5
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, "surfaceMap.entries"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    check-cast v4, Ljava/util/Map$Entry;

    if-nez v4, :cond_2

    move-object v3, v5

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    :goto_1
    if-eqz v3, :cond_3

    .line 9
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 10
    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne v3, v4, :cond_3

    return-void

    .line 11
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureCapture()Z

    move-result v4

    if-nez v4, :cond_a

    .line 13
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v6, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    if-eq v4, v6, :cond_a

    .line 14
    :cond_4
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    const/4 v15, 0x1

    .line 15
    iput-boolean v15, v4, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    .line 16
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    .line 17
    sget-object v4, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 18
    sget-object v14, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v9, 0x0

    const v10, 0x7f110083

    const/4 v13, 0x1

    const/16 v18, 0x4

    .line 19
    invoke-static/range {v18 .. v18}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v6

    const/16 v7, 0x7d0

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v6, :cond_8

    const/4 v11, 0x3

    if-eq v6, v11, :cond_7

    const/4 v11, 0x4

    if-eq v6, v11, :cond_5

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    move v12, v5

    move-object v5, v7

    goto :goto_3

    .line 22
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v6, 0x2

    move v12, v6

    goto :goto_3

    :cond_8
    move-object v5, v7

    :goto_2
    move v12, v8

    :goto_3
    if-nez v5, :cond_9

    const/16 v5, 0xfa0

    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 24
    :cond_9
    new-instance v11, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v7, 0x1

    .line 25
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v19, 0x0

    move-object v6, v11

    move v8, v13

    move-object/from16 v20, v11

    move v11, v5

    move-object v5, v14

    move/from16 v14, v18

    move/from16 v18, v15

    move-object/from16 v15, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    invoke-direct/range {v6 .. v18}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    move-object/from16 v6, v20

    .line 26
    sput-object v6, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 27
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {v5, v6}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 29
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForFailures(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    .line 30
    :cond_a
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    move-wide/from16 v5, p3

    invoke-virtual {v4, v1, v2, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->captureBufferLost(Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    if-eqz v3, :cond_b

    .line 31
    iget-object v1, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v1, :cond_b

    .line 32
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    iget v1, v1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processCaptureBufferLost(I)V

    :cond_b
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->dumpCapture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 4
    iget v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestsCompleted:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestsCompleted:I

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->getBuilders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 7
    iput-boolean v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 9
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    .line 10
    invoke-static {v0, p1, p2}, Lcom/motorola/camera/saving/ImageCaptureManager;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 12
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForChanges(Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 17
    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 18
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    invoke-direct {p2, v0, p0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 20
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_0
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    const/4 v13, 0x1

    .line 2
    iput-boolean v13, v1, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v1

    if-nez v1, :cond_6

    .line 4
    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    .line 5
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 6
    monitor-exit v1

    goto :goto_0

    .line 7
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :catch_0
    monitor-exit v1

    .line 10
    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    .line 11
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 12
    sget-object v15, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const v6, 0x7f110083

    const/4 v9, 0x1

    const/4 v10, 0x4

    .line 13
    invoke-static {v10}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v3

    const/16 v4, 0x7d0

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    const/4 v8, 0x3

    if-eq v3, v8, :cond_3

    const/4 v8, 0x4

    if-eq v3, v8, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v8, v2

    move-object v2, v4

    goto :goto_2

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v3, 0x2

    move v8, v3

    goto :goto_2

    :cond_4
    move-object v2, v4

    :goto_1
    move v8, v7

    :goto_2
    if-nez v2, :cond_5

    const/16 v2, 0xfa0

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 18
    :cond_5
    new-instance v14, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v3, 0x1

    .line 19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v16, 0x0

    move-object v2, v14

    move v4, v9

    move-object v0, v14

    move-object/from16 v14, v16

    invoke-direct/range {v2 .. v14}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 20
    sput-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v15, v0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    .line 23
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->getCameraId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForFailures(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 24
    monitor-exit v1

    throw v0

    :cond_6
    :goto_3
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->requestPostView(Landroid/hardware/camera2/CaptureRequest;J)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForPartial(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .locals 0

    return-void
.end method

.method public onCaptureSequenceCompleted(IJ)V
    .locals 0

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->onCaptureStarted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;J)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 5
    iget-object p3, p2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 7
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    invoke-direct {v0, v1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 9
    iget-object p2, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p2, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 12
    iget-boolean p2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsQcfaShot:Z

    if-eqz p2, :cond_1

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaEarlierReleaseShutter()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 14
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForStarted(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method
