.class public Lcom/motorola/camera/jms/BgJobManager$1;
.super Ljava/lang/Object;
.source "BgJobManager.java"

# interfaces
.implements Lcom/motorola/camera/jms/BgJobManager$TransferJobListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/jms/BgJobManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/jms/BgJobManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/jms/BgJobManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/jms/BgJobManager$1;->this$0:Lcom/motorola/camera/jms/BgJobManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJobTransferComplete(J)V
    .locals 27

    .line 1
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_APP_BG_JOB_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 4
    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    :cond_0
    move-wide/from16 v0, p1

    long-to-int v0, v0

    .line 5
    invoke-static {v0}, Lcom/motorola/camera/jms/BgJobManager;->removeJob(I)Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, v0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mTaskId:Lcom/motorola/camera/background/common/TaskId;

    .line 8
    iget-object v3, v1, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string/jumbo v4, "task_id"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/exoplayer2/FormatHolder;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 10
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "SaveImageService"

    const-string v2, "CameraData uri is null"

    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12
    :cond_1
    new-instance v10, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    move-object v4, v10

    .line 13
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v8

    .line 15
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v3

    .line 16
    iget v12, v3, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 17
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v3

    .line 18
    iget v13, v3, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    .line 19
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v3

    .line 20
    iget v14, v3, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 21
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v3

    move-object/from16 p0, v10

    .line 22
    iget-wide v10, v3, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    move-wide v15, v10

    .line 23
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v3

    .line 24
    iget-wide v10, v3, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    move-wide/from16 v17, v10

    .line 25
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v3

    .line 26
    iget v3, v3, Lcom/motorola/camera/background/common/TaskId;->priority:I

    move/from16 v19, v3

    .line 27
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v3

    .line 28
    iget-boolean v3, v3, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    move/from16 v20, v3

    .line 29
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v3

    .line 30
    iget-object v3, v3, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    move-object/from16 v21, v3

    const/16 v22, -0x1

    const/16 v23, -0x1

    .line 31
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getThumbData()[B

    move-result-object v24

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v25

    const-wide/16 v10, -0x1

    move-object/from16 v1, p0

    invoke-direct/range {v4 .. v26}, Lcom/motorola/camera/background/provider/BgCaptureRecord;-><init>(JLjava/lang/String;JJIIIJJIZLjava/lang/String;II[BJ)V

    .line 32
    new-instance v3, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/background/provider/BgCaptureRecord;)V

    .line 33
    iget-object v1, v2, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object v2, v2, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz v1, :cond_4

    .line 35
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->commitKpiRecord(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    .line 36
    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 37
    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 38
    :cond_3
    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 39
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 40
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 41
    invoke-interface {v0}, Lcom/motorola/camera/storage/SharedMediaFile;->closeWriteFileDescriptor()V

    :cond_4
    return-void
.end method

.method public onJobTransferError(JLandroid/os/Bundle;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobManager$1;->this$0:Lcom/motorola/camera/jms/BgJobManager;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    long-to-int p1, p1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 5
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    .line 6
    invoke-static {p1}, Lcom/motorola/camera/jms/BgJobManager;->removeJob(I)Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "BgJobManager"

    const-string p1, "Failed to process normal job"

    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
