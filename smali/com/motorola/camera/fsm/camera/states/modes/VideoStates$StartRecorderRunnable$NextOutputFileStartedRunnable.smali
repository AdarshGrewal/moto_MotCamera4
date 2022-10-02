.class public Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$NextOutputFileStartedRunnable;
.super Ljava/lang/Object;
.source "VideoStates.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NextOutputFileStartedRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$NextOutputFileStartedRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$NextOutputFileStartedRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/constraintlayout/core/Cache;

    if-nez v1, :cond_0

    const-string v1, "Video session data is null"

    .line 4
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$NextOutputFileStartedRunnable;->stopRecording(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroidx/constraintlayout/core/Cache;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v2

    .line 6
    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 7
    invoke-interface {v2}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    iget-object v2, v1, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-nez v2, :cond_1

    const-string v1, "Next video data is null"

    .line 9
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$NextOutputFileStartedRunnable;->stopRecording(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 10
    iput-object v0, v1, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Ljava/lang/Object;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 12
    invoke-virtual {v1}, Landroidx/constraintlayout/core/Cache;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v5

    .line 13
    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setEndTime(Ljava/lang/Long;)V

    .line 15
    iget-object v5, v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    .line 16
    iput-wide v3, v5, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    .line 17
    :cond_2
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 19
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const v7, 0x7f110103

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v14, 0x0

    .line 20
    invoke-static {v11}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v4

    const/16 v5, 0x7d0

    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v4, :cond_6

    const/4 v8, 0x3

    if-eq v4, v8, :cond_5

    const/4 v8, 0x4

    if-eq v4, v8, :cond_3

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    .line 23
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v3, 0x2

    :goto_0
    move v9, v3

    goto :goto_2

    :cond_6
    :goto_1
    move v9, v3

    move-object v0, v5

    :goto_2
    if-nez v0, :cond_7

    const/16 v0, 0xfa0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 25
    :cond_7
    new-instance v15, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v4, 0x1

    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v0, 0x0

    move-object v3, v15

    move v5, v10

    move-object/from16 p0, v2

    move-object v2, v15

    move-object v15, v0

    invoke-direct/range {v3 .. v15}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 27
    sput-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 28
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    .line 29
    invoke-static {v0, v2}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :catch_0
    const-string v1, "Error trying to finish last video file"

    .line 30
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$NextOutputFileStartedRunnable;->stopRecording(Ljava/lang/String;)V

    return-void
.end method

.method public final stopRecording(Ljava/lang/String;)V
    .locals 17

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopped recording: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoStates"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$NextOutputFileStartedRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 4
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 5
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v14, 0x0

    .line 6
    invoke-static {v11}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v3

    const/16 v4, 0x7d0

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    const/4 v7, 0x3

    if-eq v3, v7, :cond_2

    const/4 v7, 0x4

    if-eq v3, v7, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v9, v3

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v5, 0x2

    :goto_0
    move v9, v5

    move-object v4, v6

    goto :goto_1

    :cond_3
    move v9, v5

    :goto_1
    if-nez v4, :cond_4

    const/16 v3, 0xfa0

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 11
    :cond_4
    new-instance v15, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v5, 0x1

    .line 12
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v16, 0x0

    const/4 v6, 0x0

    const v7, 0x7f11012d

    const/4 v13, 0x0

    move-object v3, v15

    move v4, v5

    move v5, v10

    move-object/from16 p0, v0

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v3 .. v15}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 13
    sput-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v2, v0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 16
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDER_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v1, p0

    .line 17
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
