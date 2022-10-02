.class public Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "PostCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/PostCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onJpegReprocRequest(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ILcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/McfMetadata;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;-><init>(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ILcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/McfMetadata;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPostView(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/mcf/McfAuxFrameData;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    invoke-direct {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;-><init>(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    const/4 v3, 0x0

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 8
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 9
    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    .line 10
    invoke-static {v3, v1, v4, v5}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result v3

    invoke-virtual {v2, p2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->setYuvData(Lcom/motorola/camera/mcf/McfAuxFrameData;II)V

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p1, :cond_0

    .line 12
    iget-wide v1, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_1

    .line 13
    monitor-exit v0

    goto :goto_2

    :cond_1
    :try_start_1
    const-string p1, "DOCUMENT_POINTS"

    .line 14
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    const/4 p3, 0x3

    new-array p3, p3, [I

    .line 16
    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getLuma()[B

    move-result-object v1

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getChroma()[B

    move-result-object v2

    .line 17
    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getStride()I

    move-result v3

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getHeight()I

    move-result v4

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    const/16 v7, 0x5a

    const/4 v8, 0x0

    move-object v6, p3

    .line 19
    invoke-static/range {v1 .. v8}, Lcom/motorola/camera/mcf/DocUtil;->cropNV21([B[BII[I[IIZ)[B

    move-result-object p1

    .line 20
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedBuffer:Ljava/nio/Buffer;

    .line 21
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x1

    aget p2, p3, p2

    const/4 v1, 0x2

    aget p3, p3, v1

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedSize:Landroid/graphics/Point;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 22
    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedBuffer:Ljava/nio/Buffer;

    .line 23
    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedSize:Landroid/graphics/Point;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :goto_1
    monitor-exit v0

    .line 25
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 26
    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance p3, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p2}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    throw p0
.end method

.method public onQueueEmpty()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
