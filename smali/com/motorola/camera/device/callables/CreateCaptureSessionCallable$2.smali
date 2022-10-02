.class public Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;
.super Ljava/lang/Object;
.source "CreateCaptureSessionCallable.java"

# interfaces
.implements Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAIScene(Lcom/motorola/camera/mcf/McfCallbackAIScene;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->AI_SCENE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v1, p1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/McfCallbackAIScene;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAutoCapture(Lcom/motorola/camera/mcf/McfCallbackAutoCapture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/McfCallbackAutoCapture;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuxiliaryData(Lcom/motorola/camera/mcf/McfAuxiliaryData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/McfAuxiliaryData;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBestShotVideoTrigger(Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onModelLoadComplete(Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onModelResults(Lcom/motorola/camera/mcf/McfCallbackModelResults;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/McfCallbackModelResults;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRawSceneFromMcf(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/Mcf$SceneMode;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRealTimeDepthStatus(Lcom/motorola/camera/mcf/McfRtDepthStatus;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/McfRtDepthStatus;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSceneProperties(Lcom/motorola/camera/mcf/McfSceneProp;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/McfSceneProp;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSmudgeDetection(Lcom/motorola/camera/mcf/McfCallbackSmudgeDetection;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/McfCallbackSmudgeDetection;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method
