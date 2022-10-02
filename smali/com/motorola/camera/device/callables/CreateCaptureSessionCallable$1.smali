.class public Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CreateCaptureSessionCallable.java"


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
    iput-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {v0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraInfoMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v1, v1, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const-string p0, "CreateCaptureSessionCallable"

    const-string p1, "onClosed received for camera device that is no longer valid!"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2}, Lcom/motorola/camera/device/callables/CloseSessionListener;->onSessionClose()V

    .line 7
    iput-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {v1}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraInfoMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v2, v2, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    iput-object p1, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_CREATE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    .line 6
    iget-object v1, v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mMcfPreviewConfig:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;

    if-eqz v1, :cond_7

    .line 7
    iget-boolean v1, v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mUseMcf:Z

    if-eqz v1, :cond_7

    .line 8
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isCameraActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v1, v1, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v1, v1, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isAuxBayerCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object v1, v0

    goto :goto_0

    .line 12
    :cond_3
    sget-object v1, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    .line 13
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v2, v2, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    .line 14
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v2, v2, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    .line 15
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isAuxBayerCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x1

    .line 16
    :goto_2
    iget-object v4, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    .line 17
    iget-object v4, v4, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mMcfPreviewConfig:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;

    .line 18
    iget v5, v4, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mWidth:I

    iget v6, v4, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mHeight:I

    .line 19
    iget v4, v4, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mFormat:I

    .line 20
    invoke-static {v5, v6, v4, v1, v2}, Lcom/motorola/camera/mcf/Mcf;->openPreview(IIILcom/motorola/camera/mcf/McfPreview$PreviewChanType;Z)V

    .line 21
    iget-object v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    .line 22
    iget-object v2, v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mMcfOnNotifyListener:Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;

    .line 23
    iget-object v1, v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mHandler:Landroid/os/Handler;

    .line 24
    invoke-static {v2, v1}, Lcom/motorola/camera/mcf/Mcf;->setNotifyListener(Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;Landroid/os/Handler;)V

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 26
    iget-object v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    .line 27
    iget-object v1, v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mMcfPreviewConfig:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;

    .line 28
    iget v2, v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mWidth:I

    iget v4, v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mHeight:I

    .line 29
    iget v1, v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mFormat:I

    .line 30
    invoke-static {v2, v4, v1, v0, v3}, Lcom/motorola/camera/mcf/Mcf;->openPreview(IIILcom/motorola/camera/mcf/McfPreview$PreviewChanType;Z)V

    .line 31
    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p1}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraInfoMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/motorola/camera/device/callables/StopRepeatingListener;->onStopRepeating()V

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mAbortCapturesListener:Lcom/motorola/camera/device/callables/AbortCapturesListener;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/motorola/camera/device/callables/AbortCapturesListener;->onAbortCaptures()V

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mAbortCapturesListener:Lcom/motorola/camera/device/callables/AbortCapturesListener;

    :cond_1
    return-void
.end method
