.class public Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;
.super Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
.source "PanoramaMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;,
        Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;,
        Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$ImageListenerThread;
    }
.end annotation


# instance fields
.field public mCaptureTone:Landroid/media/MediaActionSound;

.field public mGainDetectImageReader:Landroid/media/ImageReader;

.field public mImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

.field public mImageListenerThread:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$ImageListenerThread;

.field public mIsCliDisplay:Z

.field public mPanoAttachImage:Landroidx/transition/ViewGroupOverlayApi18;

.field public mPreviewImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

.field public mStillImageReader:Landroid/media/ImageReader;

.field public mYuvImageReader:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;-><init>()V

    .line 2
    new-instance v0, Landroidx/transition/ViewGroupOverlayApi18;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(Landroid/media/Image;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPanoAttachImage:Landroidx/transition/ViewGroupOverlayApi18;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    return-void
.end method


# virtual methods
.method public final getImageListenerHandlerSafely()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageListenerThread:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$ImageListenerThread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$ImageListenerThread;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$ImageListenerThread;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageListenerThread:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$ImageListenerThread;

    .line 4
    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$ImageListenerThread;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getSessionStreamRequest()Lcom/motorola/camera/StreamRequest;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize()Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {p0}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z)Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {p0}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z)Landroid/util/Size;

    move-result-object p0

    .line 6
    :goto_0
    new-instance v0, Lcom/motorola/camera/StreamRequest;

    invoke-static {p0}, Lcom/motorola/camera/utility/SizeUtility;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/StreamRequest;-><init>(FLandroid/util/Size;)V

    return-object v0
.end method

.method public onCloseSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mYuvImageReader:Landroid/media/ImageReader;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mYuvImageReader:Landroid/media/ImageReader;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mStillImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 9
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mStillImageReader:Landroid/media/ImageReader;

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageListenerThread:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$ImageListenerThread;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 12
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageListenerThread:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$ImageListenerThread;

    :cond_3
    return-void
.end method

.method public onCreateCaptureRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/RequestWrapper;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1, p3}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p3}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 p1, 0x3

    invoke-direct {p0, p1, v0, p3}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupYuvImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 4
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isPanoAutoExMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupGainDetectImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 6
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupStillImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupGainDetectImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupYuvImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupStillImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/media/MediaActionSound;

    invoke-direct {p1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mCaptureTone:Landroid/media/MediaActionSound;

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, v0}, Landroid/media/MediaActionSound;->load(I)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mCaptureTone:Landroid/media/MediaActionSound;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/media/MediaActionSound;->load(I)V

    return-void
.end method

.method public onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V
    .locals 7

    .line 1
    sget-object p3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 2
    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {v1}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 5
    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v4, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v1, v3, v4, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 6
    sget-object p3, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget-object p3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 7
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 8
    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v4, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v1, v3, v4, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupImageQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 10
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isFocusModeAuto()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 11
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, p3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, p3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 13
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p3, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 14
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, p3, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 15
    :goto_0
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p3, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 16
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, p3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 17
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, p3, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 18
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v3, "PANO_SENSOR_EXPOSURE_TIME"

    .line 19
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 20
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v5, "PANO_SENSOR_SENSITIVITY"

    .line 21
    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    if-lez p3, :cond_1

    .line 22
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v5, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 23
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 24
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 25
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 26
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/motorola/camera/panorama/PanoHelper;->PANO_SENSOR_FRAME_DURATION:Ljava/lang/Long;

    invoke-virtual {v0, p3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 27
    :cond_1
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_PANO_SHOT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p3, v1, v0, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_2
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 31
    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v4, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v1, v3, v4, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 32
    sget-object p3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 33
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 34
    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v4, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v1, v3, v4, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :goto_1
    const/16 p3, 0x9

    .line 35
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 36
    sget-object p3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->GAIN_DETECT:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 37
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 38
    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v4, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v1, v3, v4, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 39
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 40
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, p3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 41
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, p3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupImageQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 43
    :cond_3
    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 44
    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 45
    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 46
    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    .line 48
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->ISLIDCLOSED_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p3, v0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 49
    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 50
    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 51
    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 52
    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 53
    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPreviewImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 55
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    return-void
.end method

.method public onSetupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 2
    iget-boolean v2, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {v2}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v2

    const/4 v3, 0x0

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    const/4 v5, 0x1

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 6
    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v7, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v2, v6, v7, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 7
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 8
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupImageQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 10
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isFocusModeAuto()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 11
    sget-object p0, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    invoke-static {p1, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, p0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 13
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, p0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 14
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 16
    iget-object v2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p0, v2, v6, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 17
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 18
    sget-object p0, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget-object p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 19
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 20
    iget-object v2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v2, v6, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 21
    :cond_2
    :goto_0
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, p0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 22
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 23
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, p0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 24
    :cond_3
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 25
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 26
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 27
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    .line 29
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ISLIDCLOSED_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 30
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 31
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 32
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 33
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 34
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public onSurfaceKeysRequired()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->GAIN_DETECT:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    .line 3
    new-instance v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v5, v4, v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {p0}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v1, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    invoke-direct {p0, v4, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isPanoAutoExMode()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v4, v0}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    .line 8
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v4, v0}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v4, v1}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v0, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    invoke-direct {p0, v4, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v4, v1}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v3
.end method

.method public onTeardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mCaptureTone:Landroid/media/MediaActionSound;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaActionSound;->release()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mCaptureTone:Landroid/media/MediaActionSound;

    .line 4
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->cleanUpLocked()V

    return-void
.end method

.method public final processFrames(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPreviewImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;-><init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    .line 4
    sget-object v3, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    .line 5
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;

    invoke-direct {v4, v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;-><init>(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Lcom/motorola/camera/panorama/PanoListener;Z)V

    .line 6
    iget-object v0, v3, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, v3, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;-><init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 8
    new-instance p1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;

    invoke-direct {p1, v0, v1, v4}, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;-><init>(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Lcom/motorola/camera/panorama/PanoListener;Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;)V

    .line 9
    iget-object v0, v3, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, v3, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPreviewImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 11
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    :cond_0
    return-void
.end method

.method public final setupGainDetectImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 9

    const/16 v0, 0x9

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z)Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfiePictureSize(Z)Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    :goto_0
    move-object v6, v1

    const/16 v1, 0x140

    int-to-float v2, v1

    .line 6
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    and-int/lit8 v2, v2, -0x2

    .line 7
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 8
    invoke-static {v2}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z)Landroid/util/Size;

    move-result-object v2

    goto :goto_1

    .line 9
    :cond_2
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    move-object v2, v3

    .line 10
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v3

    const/16 v4, 0x23

    .line 11
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    .line 12
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 13
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 14
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 15
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-ne v7, v1, :cond_3

    move-object v2, v5

    .line 16
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    .line 18
    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->GAIN_DETECT:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v2, v4, v5, v1, v7}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    .line 19
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    .line 21
    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 22
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->getImageListenerHandlerSafely()Landroid/os/Handler;

    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 24
    :cond_5
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    .line 25
    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/16 p0, 0x23

    move-object v2, v8

    move-object v4, v7

    move v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v0, v1, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 26
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final setupImageQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setupStillImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 9

    const/16 v0, 0x9

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfiePictureSize(Z)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePictureSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x23

    const/4 v3, 0x3

    .line 6
    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v5, v1, v3, v0, v4}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mStillImageReader:Landroid/media/ImageReader;

    .line 7
    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->getImageListenerHandlerSafely()Landroid/os/Handler;

    move-result-object v3

    .line 9
    invoke-virtual {v0, v1, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 10
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mStillImageReader:Landroid/media/ImageReader;

    .line 11
    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    const/16 v6, 0x23

    move-object v1, v8

    move-object v3, v4

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v0, v7, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 12
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final setupYuvImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z)Landroid/util/Size;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    .line 6
    sget-object v1, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v1, 0x23

    const/4 v4, 0x3

    .line 7
    invoke-static {v5, v1, v4, v0, v3}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mYuvImageReader:Landroid/media/ImageReader;

    .line 8
    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->getImageListenerHandlerSafely()Landroid/os/Handler;

    move-result-object v4

    .line 10
    invoke-virtual {v0, v1, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 11
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mYuvImageReader:Landroid/media/ImageReader;

    .line 12
    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    const/16 v6, 0x23

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v0, v7, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 13
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
