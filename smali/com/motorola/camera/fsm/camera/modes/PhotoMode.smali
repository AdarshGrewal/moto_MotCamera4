.class public Lcom/motorola/camera/fsm/camera/modes/PhotoMode;
.super Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
.source "PhotoMode.java"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;,
        Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;
    }
.end annotation


# static fields
.field public static final mMcfHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;",
            ">;"
        }
    .end annotation
.end field

.field public static final mMcfHoldersLock:Ljava/lang/Object;


# instance fields
.field public mBgHandler:Landroid/os/Handler;

.field public mBgHandlerCallback:Landroid/os/Handler$Callback;

.field public mBgHandlerThread:Landroid/os/HandlerThread;

.field public mFeatureLimiterListener:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;

.field public mFgHandler:Landroid/os/Handler;

.field public mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public mImageListenerSwitcher:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;

.field public final mJpegImageReaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/utility/ImageReaderWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final mMcfControlListener:Lcom/motorola/camera/mcf/Mcf$OnControlListener;

.field public mPreviewImageReader:Landroid/media/ImageReader;

.field public mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

.field public mSubPreviewImageReader:Landroid/media/ImageReader;

.field public mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHoldersLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mJpegImageReaders:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFgHandler:Landroid/os/Handler;

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfControlListener:Lcom/motorola/camera/mcf/Mcf$OnControlListener;

    .line 5
    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFeatureLimiterListener:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;

    return-void
.end method

.method public static closeMcfStream(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStream(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStream(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStream(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static closeMcfStream(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    move-object p0, p1

    .line 5
    :cond_0
    sget-object p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHoldersLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    .line 9
    :cond_1
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 10
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    goto :goto_0

    .line 11
    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static closeMcfStreams()V
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHoldersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    .line 6
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ImageReader;

    .line 7
    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 9
    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getModeContextForStreaming(Lcom/motorola/camera/settings/CameraType;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 2
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseHQPreview:[Z

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p0

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public final forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/motorola/camera/settings/CameraType;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocCameraTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/CameraType;

    .line 2
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFullFrameExposureCompensation(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/Map;

    move-object v0, p0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameExposureCompensation:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getJpegBufferCnt()I
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalDepthMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x6

    :goto_1
    return p0
.end method

.method public getPreviewFullFrameSkipCount(Lcom/motorola/camera/settings/CameraType;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mPreviewFullFrameSkipCount:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getSessionStreamRequest()Lcom/motorola/camera/StreamRequest;
    .locals 2

    .line 1
    new-instance p0, Lcom/motorola/camera/StreamRequest;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/motorola/camera/VideoFormat;

    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroid/util/Size;

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/utility/SizeUtility;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/StreamRequest;-><init>(FLandroid/util/Size;)V

    return-object p0
.end method

.method public getSlavePreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getSubPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PhotoMode"

    return-object p0
.end method

.method public isAudioPermissionRequired()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/PermissionsManager;->mPermissionsMap:Ljava/util/Map;

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isPermissionRequired(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isAudioPermissionRequired()Z

    move-result p0

    return p0
.end method

.method public onCloseSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mImageListenerSwitcher:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mJpegImageReaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/ImageReaderWrapper;

    .line 3
    invoke-virtual {v1, p1, p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 4
    invoke-virtual {v1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->close()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mJpegImageReaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1, p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/ImageReaderWrapper;->close()V

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, p1, p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/ImageReaderWrapper;->close()V

    .line 13
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0, p1, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0, p1, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 21
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    .line 22
    :cond_4
    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStreams()V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    .line 24
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 25
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandlerThread:Landroid/os/HandlerThread;

    .line 26
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandler:Landroid/os/Handler;

    :cond_5
    return-void
.end method

.method public onCreateCaptureRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/RequestWrapper;",
            ">;Z)V"
        }
    .end annotation

    const/4 p0, 0x2

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    .line 1
    new-instance p3, Lcom/motorola/camera/fsm/RequestWrapper;

    invoke-direct {p3, p1, p1, p1}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    new-instance p3, Lcom/motorola/camera/fsm/RequestWrapper;

    invoke-direct {p3, p0, p1, p1}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance p3, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x3

    invoke-direct {p3, v0, p0, p1}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance p3, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p3, v0, p1, v1}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p3, Lcom/motorola/camera/fsm/RequestWrapper;

    const/16 v0, 0x8

    invoke-direct {p3, v0, p1, v1}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p1, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 p3, 0x7

    invoke-direct {p1, p3, p0, v1}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onCreateSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandlerThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ReprocBgHandler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandlerThread:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v2, Landroid/os/Handler;

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;)V

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandler:Landroid/os/Handler;

    .line 6
    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    if-nez v2, :cond_5

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    .line 8
    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCameraPreviewNeedReprocess()Z

    move-result v5

    .line 9
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v6

    .line 10
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 11
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 12
    check-cast v7, Landroid/util/Size;

    if-eqz v5, :cond_1

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v13, 0x23

    const/4 v14, 0x3

    .line 14
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandler:Landroid/os/Handler;

    move-object v12, v7

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    invoke-static/range {v12 .. v17}, Lcom/motorola/camera/utility/SurfaceUtil;->newDelayPreviewImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    .line 15
    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v14

    iget-object v12, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    .line 17
    invoke-virtual {v12}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v16

    const/16 v19, 0x23

    const/16 v18, 0x23

    move-object v12, v5

    move-object v13, v6

    move-object v15, v4

    move-object/from16 v17, v7

    invoke-direct/range {v12 .. v18}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v3, v9, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 18
    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v5, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/16 v13, 0x23

    const/4 v14, 0x3

    .line 20
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandler:Landroid/os/Handler;

    move-object v12, v7

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    invoke-static/range {v12 .. v17}, Lcom/motorola/camera/utility/SurfaceUtil;->newDelayPreviewImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    .line 21
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v14

    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    .line 23
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v16

    move-object v12, v3

    move-object v13, v6

    move-object v15, v4

    move-object/from16 v17, v7

    move/from16 v18, v19

    invoke-direct/range {v12 .. v18}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v2, v9, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 24
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v3, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_2

    :cond_1
    if-eqz v5, :cond_3

    const/16 v13, 0x23

    const/4 v14, 0x3

    .line 26
    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandler:Landroid/os/Handler;

    move-object v12, v7

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-static/range {v12 .. v17}, Lcom/motorola/camera/utility/SurfaceUtil;->newDelayPreviewImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v5

    iput-object v5, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    .line 27
    new-instance v15, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v14, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    const/16 v16, 0x0

    .line 28
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/16 v18, 0x23

    move-object v12, v14

    move-object v13, v6

    move-wide/from16 v19, v10

    move-object v10, v14

    move-object/from16 v14, v16

    move-object v11, v15

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    invoke-direct/range {v12 .. v18}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v11, v9, v10}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 29
    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v5, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v5, v11}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 31
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 32
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMcxSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 33
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackTeleCamera()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 34
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v5

    :goto_0
    const/16 v18, 0x23

    const/4 v14, 0x3

    .line 35
    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandler:Landroid/os/Handler;

    const/16 v13, 0x23

    move-object v12, v7

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v10

    invoke-static/range {v12 .. v17}, Lcom/motorola/camera/utility/SurfaceUtil;->newDelayPreviewImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    .line 36
    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v10, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    .line 37
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v16

    move-object v12, v10

    move-object v13, v6

    move-object v14, v5

    move-object v15, v3

    move-object/from16 v17, v7

    invoke-direct/range {v12 .. v18}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v4, v9, v10}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 38
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v2, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_3

    :cond_3
    move-wide/from16 v19, v10

    .line 40
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 41
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMcxSupported()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 42
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackTeleCamera()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 43
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v5

    :goto_1
    const/16 v18, 0x23

    const/4 v14, 0x3

    .line 44
    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandler:Landroid/os/Handler;

    const/16 v13, 0x23

    move-object v12, v7

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v10

    invoke-static/range {v12 .. v17}, Lcom/motorola/camera/utility/SurfaceUtil;->newDelayPreviewImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    .line 45
    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v10, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    .line 46
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v16

    move-object v12, v10

    move-object v13, v6

    move-object v14, v5

    move-object v15, v3

    move-object/from16 v17, v7

    invoke-direct/range {v12 .. v18}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v4, v9, v10}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 47
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v2, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_3

    :cond_5
    :goto_2
    move-wide/from16 v19, v10

    .line 49
    :cond_6
    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_8

    .line 50
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    if-nez v2, :cond_7

    .line 51
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v2

    if-nez v2, :cond_7

    .line 52
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaSize()Landroid/util/Size;

    move-result-object v6

    .line 53
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaRawImageFormat()I

    move-result v7

    .line 54
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    .line 55
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-static {v6, v7, v10, v2, v8}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    .line 57
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->getImageAvailableListener(Ljava/lang/String;)Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    move-result-object v4

    .line 58
    sget-object v5, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 59
    iget-object v5, v5, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    .line 60
    invoke-virtual {v2, v4, v5}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 61
    new-instance v11, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v12, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    .line 62
    invoke-virtual {v2}, Lcom/motorola/camera/utility/ImageReaderWrapper;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v2, v12

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v11, v9, v12}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 63
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v2, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_4

    .line 65
    :cond_7
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mJpegImageReaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 66
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_4

    .line 67
    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v2

    if-nez v2, :cond_a

    .line 68
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrProMode()Z

    move-result v2

    if-nez v2, :cond_a

    .line 69
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrPlusMode()Z

    move-result v2

    if-nez v2, :cond_a

    .line 70
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 71
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 72
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v2

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getJpegBufferCnt()I

    move-result v3

    .line 74
    new-instance v4, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;Lcom/motorola/camera/fsm/camera/FsmContext;IZ)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V

    if-nez v2, :cond_a

    .line 75
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_4

    .line 76
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 77
    :cond_a
    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 78
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    .line 79
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v3

    .line 80
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3, v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v5, 0x20

    .line 81
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v4

    if-nez v4, :cond_b

    const-string v4, "SettingsManager"

    const-string v6, "getSensorRawPictureSizes return null, error!"

    .line 82
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v4, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v4}, Lcom/motorola/camera/PreviewSize;-><init>()V

    goto :goto_5

    .line 84
    :cond_b
    new-instance v6, Lcom/motorola/camera/utility/SizeUtility$SizeComparator;

    invoke-direct {v6}, Lcom/motorola/camera/utility/SizeUtility$SizeComparator;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 85
    new-instance v6, Lcom/motorola/camera/PreviewSize;

    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    aget-object v4, v4, v7

    invoke-direct {v6, v4}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    move-object v4, v6

    .line 86
    :goto_5
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v6

    .line 87
    invoke-static {v6, v5, v10, v2, v8}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    .line 88
    invoke-static {v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->getImageAvailableListener(Ljava/lang/String;)Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    move-result-object v4

    .line 89
    sget-object v5, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 90
    iget-object v5, v5, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    .line 91
    invoke-virtual {v2, v4, v5}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 92
    new-instance v11, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v12, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    .line 93
    invoke-virtual {v2}, Lcom/motorola/camera/utility/ImageReaderWrapper;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/16 v7, 0x20

    move-object v2, v12

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v11, v9, v12}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 94
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v2, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v2, v11}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 96
    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    .line 97
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfControlListener:Lcom/motorola/camera/mcf/Mcf$OnControlListener;

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFgHandler:Landroid/os/Handler;

    invoke-static {v2, v4}, Lcom/motorola/camera/mcf/Mcf;->setControlListener(Lcom/motorola/camera/mcf/Mcf$OnControlListener;Landroid/os/Handler;)V

    .line 98
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    .line 99
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_d

    .line 100
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4, v10}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V

    goto :goto_6

    .line 101
    :cond_d
    invoke-virtual {v0, v1, v2, v5, v10}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V

    .line 102
    :goto_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 103
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V

    goto :goto_8

    .line 104
    :cond_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 105
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V

    goto :goto_8

    .line 107
    :cond_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result v2

    if-nez v2, :cond_10

    .line 108
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrProMode()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 109
    :cond_10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    .line 110
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v11

    .line 111
    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object v14

    if-nez v14, :cond_11

    goto :goto_8

    :cond_11
    const/16 v3, 0x23

    const/16 v4, 0x8

    .line 112
    sget-object v12, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v14, v3, v4, v2, v12}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    .line 113
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrProMode()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 114
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    .line 115
    invoke-static {v11}, Lcom/motorola/camera/saving/ImageCaptureManager;->getImageAvailableListener(Ljava/lang/String;)Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandler:Landroid/os/Handler;

    .line 116
    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    goto :goto_7

    .line 117
    :cond_12
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    .line 118
    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandler:Landroid/os/Handler;

    .line 119
    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 120
    :goto_7
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    .line 121
    invoke-virtual {v4}, Lcom/motorola/camera/utility/ImageReaderWrapper;->getSurface()Landroid/view/Surface;

    move-result-object v13

    const/16 v15, 0x23

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v2, v9, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 122
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 124
    :cond_13
    :goto_8
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v1, :cond_14

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreateSessionSurfaces dur:"

    invoke-static {v1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v2, v19

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method public onSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 3
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 4
    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_AE_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 9
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 13
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 14
    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;

    .line 15
    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 16
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFeatureLimiterListener:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;

    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->registerListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    .line 17
    :cond_1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result p0

    if-nez p0, :cond_2

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 20
    :cond_2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 21
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT:Landroid/graphics/Rect;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 22
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION_SLV:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT_SLV:Landroid/graphics/Rect;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 23
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 24
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(ZLcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 26
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    .line 27
    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomFactor:[F

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_4

    div-float p0, v0, p0

    .line 28
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 29
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomRect(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    move-result-object p0

    .line 31
    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 32
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 33
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_0

    .line 34
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    .line 35
    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMacroCameraWithWide(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getZoomForMacroCameraWithWide()F

    move-result p1

    div-float/2addr v0, p1

    .line 37
    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    .line 38
    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 39
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 40
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 42
    sget-object p1, Lcom/motorola/camera/AppFeatures$Feature;->PORTRAIT_ZOOM:Lcom/motorola/camera/AppFeatures$Feature;

    .line 43
    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/high16 p0, 0x3f000000    # 0.5f

    .line 44
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    :cond_7
    return-void
.end method

.method public onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V
    .locals 9

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 2
    iget-boolean v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mIsMaster:Z

    const/4 v4, 0x1

    .line 3
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v3, :cond_5

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 7
    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v1, v3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto/16 :goto_1

    .line 8
    :cond_0
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 9
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 10
    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p0, v0, v3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrProMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 13
    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p0, v1, v3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v0

    if-nez v0, :cond_4

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 18
    invoke-virtual {v0}, Lcom/motorola/camera/settings/CameraType;->isOfflineReproc()Z

    move-result v0

    if-nez v0, :cond_3

    .line 19
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 20
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 21
    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    .line 22
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    .line 23
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 24
    iget-object v7, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v8, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3, v7, v0, v8, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTargetWithPhysicalCamera(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_0

    .line 25
    :cond_3
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 26
    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v7, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v3, v7, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 27
    :cond_4
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 29
    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v1, v3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_1

    .line 30
    :cond_5
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 31
    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 32
    :cond_6
    :goto_1
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_7

    .line 33
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p0

    if-nez p0, :cond_7

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 34
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 35
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_8

    .line 37
    :cond_7
    invoke-static {p1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setJpegOrientation(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_8
    const/4 p0, 0x3

    .line 38
    invoke-static {p1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFaceStatisticReporting(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 39
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 40
    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_2

    .line 41
    :cond_9
    invoke-static {p0, p1, v2, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureWhiteBalance(ILcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/ShotType;)V

    .line 42
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p3

    if-nez p3, :cond_a

    .line 43
    iget p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    invoke-static {p0, p3, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setNoiseReduction(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 44
    iget p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    invoke-static {p0, p3, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEdgeMode(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 45
    :cond_a
    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 46
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegThumbnailSize()Landroid/util/Size;

    move-result-object p0

    .line 47
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, p3, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 48
    invoke-static {p1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRoi(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 49
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 50
    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 51
    invoke-static {p1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 52
    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 53
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 54
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    .line 55
    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 56
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_b

    .line 57
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p3

    if-eqz p3, :cond_f

    .line 58
    :cond_b
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    .line 59
    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 60
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_e

    .line 61
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    const/16 v1, 0x10e

    .line 62
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v1, v3, :cond_d

    const/16 v1, 0x5a

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne v1, p3, :cond_c

    goto :goto_3

    .line 63
    :cond_c
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_STILL_FLIP_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    invoke-virtual {p3, p0, v2, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_4

    .line 66
    :cond_d
    :goto_3
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_STILL_FLIP_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 68
    invoke-virtual {p3, p0, v2, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_4

    .line 69
    :cond_e
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_STILL_FLIP_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 71
    invoke-virtual {p3, p0, v2, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 72
    :cond_f
    :goto_4
    invoke-static {p1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAeFpsRange(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 73
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setOIS(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 74
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 75
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 76
    sget-object p0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    .line 77
    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SESSION_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 78
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p3

    int-to-byte v1, v6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, p3, v2, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 79
    :cond_10
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 80
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 81
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 82
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p3

    .line 84
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->ISLIDCLOSED_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p0, v2, p3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 85
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 86
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 87
    iget-object p3, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string p3, "QCFA_SHOT"

    .line 88
    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 89
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result p3

    if-eqz p3, :cond_11

    .line 90
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p3

    if-nez p3, :cond_11

    move p3, v4

    goto :goto_5

    :cond_11
    move p3, v0

    .line 91
    :goto_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz p3, :cond_12

    if-nez p0, :cond_12

    goto :goto_6

    :cond_12
    move v4, v0

    .line 92
    :goto_6
    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v1

    .line 94
    invoke-static {p3, v2, v4, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMfnr(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;ZZ)V

    .line 95
    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    int-to-byte p0, p0

    .line 96
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_DO_REMOSAIC_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {v1, p3, v2, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 97
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentSceneAdjustmentStatusEnabled()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 98
    sget-object p0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-nez p0, :cond_13

    goto :goto_7

    .line 99
    :cond_13
    instance-of p3, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-nez p3, :cond_14

    goto :goto_7

    .line 100
    :cond_14
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p3

    if-nez p3, :cond_15

    goto :goto_7

    .line 101
    :cond_15
    check-cast p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    invoke-virtual {p0, p3}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->applyTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V

    .line 102
    :cond_16
    :goto_7
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 103
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_SMILE_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {p3, p0, v2, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 104
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 105
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_BLINK_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {p3, p0, v2, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 106
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 107
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_GAZE_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {p3, p0, v2, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 108
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setUwDcDisabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 109
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result p3

    .line 111
    invoke-static {p0, v2, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRingFlash(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 112
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode(I)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 113
    invoke-static {p1, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setupCodecVideoRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V

    .line 114
    :cond_17
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0, v2}, Lcom/motorola/camera/SkinToneDetection;->setupCustomScene(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 115
    invoke-static {p1, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setupMotoFlashTuning(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V

    .line 116
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setControlAppRtb(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 117
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMcfLowLightFrameStack()Z

    move-result p1

    int-to-byte p1, p1

    .line 119
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_AS_LLS_FLAG_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p3, p0, v2, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 120
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 121
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkMultiframeBokeh(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 122
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 123
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkYuvNrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 124
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 125
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 126
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperNightMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 127
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 128
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 129
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setControlAppCutout(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public onSetupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 8

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    .line 3
    iget-boolean v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mIsMaster:Z

    const/4 v4, 0x1

    .line 4
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    if-eqz v3, :cond_2

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 8
    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v7, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3, v6, v7, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 11
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 12
    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v7, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3, v6, v7, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 13
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isStreamingSupportedByCurrentMode(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 15
    iget-object v2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v2, v3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 17
    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v7, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3, v6, v7, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 18
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isStreamingSupportedByCurrentMode(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 20
    iget-object v2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v2, v3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 21
    :cond_3
    :goto_1
    sget-object p0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-static {p1, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFaceStatisticReporting(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 22
    invoke-static {p1, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_2

    .line 25
    :cond_4
    invoke-static {v4, p1, v1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureWhiteBalance(ILcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/ShotType;)V

    .line 26
    :goto_2
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getModeContextForStreaming(Lcom/motorola/camera/settings/CameraType;)I

    move-result p0

    .line 27
    iget v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setNoiseReduction(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 28
    iget v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEdgeMode(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 29
    invoke-static {p1, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRoi(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 30
    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 31
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 32
    invoke-static {p1, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAeFpsRange(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 33
    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setOIS(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 34
    iget v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    iget-object v2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p1, v0, v2, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->processMcfSceneMode(ILcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 35
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mIsMaster:Z

    if-eqz v2, :cond_5

    .line 37
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 38
    invoke-virtual {v2, p0, v1, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v2

    .line 39
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_MAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 40
    invoke-virtual {v3, p0, v1, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 41
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_SESSION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p0, v1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_3

    .line 43
    :cond_5
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 44
    invoke-virtual {v2, v0, v1, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v2

    .line 45
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_MAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    const/4 v6, 0x0

    .line 46
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v3, v0, v1, v6}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 47
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_SESSION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, v0, v1, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result p0

    :goto_3
    and-int/2addr p0, v2

    if-nez p0, :cond_6

    const-string p0, "RequestBuilderHelper"

    const-string v0, "Failed to set custom keys for dual session link"

    .line 49
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_6
    sget-object p0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 51
    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 52
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/motorola/camera/device/CameraStateManager;->setLinked(Ljava/lang/String;Z)V

    .line 53
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/motorola/camera/device/CameraStateManager;->setLinked(Ljava/lang/String;Z)V

    .line 54
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 55
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    .line 56
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SESSION_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 57
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {v0, v2, v1, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 58
    :cond_8
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 59
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 60
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 61
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    .line 63
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->ISLIDCLOSED_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p0, v1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 64
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 65
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentSceneAdjustmentStatusEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 66
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 67
    sget-object p0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-nez p0, :cond_9

    goto :goto_4

    .line 68
    :cond_9
    instance-of v0, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-nez v0, :cond_a

    goto :goto_4

    .line 69
    :cond_a
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_4

    .line 70
    :cond_b
    check-cast p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->applyTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V

    .line 71
    :cond_c
    :goto_4
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_SMILE_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {v0, p0, v1, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 73
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_BLINK_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {v0, p0, v1, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 75
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v0

    .line 77
    invoke-static {p0, v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRingFlash(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 78
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode(I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 79
    invoke-static {p1, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setupCodecVideoRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V

    .line 80
    :cond_d
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0, v1}, Lcom/motorola/camera/SkinToneDetection;->setupCustomScene(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 81
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setControlAppRtb(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 82
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMcfLowLightFrameStack()Z

    move-result v0

    int-to-byte v0, v0

    .line 84
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_AS_LLS_FLAG_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v2, p0, v1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 85
    invoke-static {p1, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setupMotoFlashTuning(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V

    .line 86
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 87
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkMultiframeBokeh(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 88
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 89
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkYuvNrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 90
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 91
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 92
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperNightMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 93
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 94
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 95
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setControlAppCutout(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public onSurfaceKeysRequired()Ljava/util/Collection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v7

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result v8

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 7
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto/16 :goto_4

    .line 10
    :cond_0
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v5, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v5, v1}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 12
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 13
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v5, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v5, v1}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 15
    :cond_2
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v5, v0}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 16
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrProMode()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 17
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v5, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v5, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 19
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v9

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 21
    new-instance v10, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v10, v5, v9, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_5
    new-instance v10, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v10, v5, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMcxSupported()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackTeleCamera()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 26
    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v10

    .line 27
    :goto_0
    new-instance v11, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v12, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v11, v5, v10, v12}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_7
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v10

    if-nez v10, :cond_9

    .line 29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrPlusMode()Z

    move-result v10

    if-nez v10, :cond_9

    if-eqz v8, :cond_8

    .line 30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 31
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v10

    .line 32
    new-instance v11, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;

    invoke-direct {v11, v4, v10, v5}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;ZLjava/lang/String;)V

    invoke-virtual {p0, v11}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V

    if-nez v10, :cond_9

    .line 33
    new-instance v10, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v10, v5, v1}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 34
    :cond_8
    new-instance v10, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v10, v5, v1}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_9
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 36
    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v1, v5, v0}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    if-nez v7, :cond_b

    if-eqz v8, :cond_f

    .line 37
    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 38
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v5, v9, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 39
    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrPlusMode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 40
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v5, v0}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    if-eqz v8, :cond_e

    .line 41
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 42
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 43
    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;

    invoke-direct {v0, v4, v5}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V

    goto :goto_3

    .line 44
    :cond_e
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v5, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_f
    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 46
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v6, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_10

    .line 47
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v6, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 49
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object p0

    .line 50
    new-instance v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v0, v5, p0, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_11

    .line 51
    new-instance v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v0, v5, p0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_4
    return-object v4
.end method

.method public onTeardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 2
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 3
    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;

    .line 4
    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFeatureLimiterListener:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;

    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->unregisterListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(ZLcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MOTION_PHOTOS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 13
    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->cleanUpLockedBut(Ljava/util/List;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->cleanUpLocked()V

    .line 16
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentSceneAdjustmentStatusEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 19
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_2
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method

.method public onUpdate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ISO100_GAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    .line 3
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 6
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, v0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "QCFA_ANALOG_GAIN"

    .line 9
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public setupJpegImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    move-object v3, v0

    check-cast v3, Landroid/util/Size;

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getJpegBufferCnt()I

    move-result v4

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReaderImpl(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/util/Size;ILcom/motorola/camera/settings/CameraType;Ljava/lang/String;)V

    return-void
.end method

.method public final setupJpegImageReaderImpl(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/util/Size;ILcom/motorola/camera/settings/CameraType;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v0, 0x100

    invoke-static {p2, v0, p3, p4, v3}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object p3

    .line 3
    invoke-static {v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getImageAvailableListener(Ljava/lang/String;)Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    move-result-object p4

    .line 4
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    .line 6
    invoke-virtual {p3, p4, v0}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mJpegImageReaders:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    .line 9
    invoke-virtual {p3}, Lcom/motorola/camera/utility/ImageReaderWrapper;->getSurface()Landroid/view/Surface;

    move-result-object v4

    const/16 v6, 0x100

    move-object v0, v7

    move-object v2, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {p0, p4, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V
    .locals 23

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v4, v2

    if-eqz p3, :cond_1

    move-object/from16 v2, p3

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    .line 3
    :goto_1
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    .line 4
    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object v14

    if-nez v14, :cond_2

    return-void

    .line 5
    :cond_2
    new-instance v15, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    invoke-direct {v15}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;-><init>()V

    .line 6
    sget-object v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isAuxBayerCamera(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 9
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;

    .line 11
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v6

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalDepthMode()Z

    move-result v8

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v9

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isDualStreamDepthMode(Z)Z

    move-result v9

    .line 14
    invoke-static {v3, v6, v7, v8, v9}, Lcom/motorola/camera/JsonConfig$Mode;->getMode(ZZZZZ)Lcom/motorola/camera/JsonConfig$Mode;

    move-result-object v3

    .line 15
    sget-object v6, Lcom/motorola/camera/JsonConfig$Path;->INPUT:Lcom/motorola/camera/JsonConfig$Path;

    invoke-static {v6, v2, v3}, Lcom/motorola/camera/JsonConfig;->getBufferCnt(Lcom/motorola/camera/JsonConfig$Path;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/JsonConfig$Mode;)I

    move-result v3

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrPlusMode()Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    .line 17
    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 18
    sget-object v8, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->RAW_SENSOR:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    goto :goto_2

    :cond_5
    const/16 v6, 0x23

    .line 19
    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 20
    sget-object v8, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->YUV_420_888:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    :goto_2
    move v12, v6

    move-object v13, v7

    move-object/from16 v16, v8

    .line 21
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 22
    sget-object v6, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->DUAL_DEPTH:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    sget-object v7, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->DUAL:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_3

    .line 24
    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalDepthMode()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    move-object v6, v7

    goto :goto_3

    .line 26
    :cond_8
    sget-object v6, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->NORMAL:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    .line 27
    :goto_3
    iput-object v6, v15, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mCameraMode:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    if-eqz p4, :cond_9

    .line 28
    :try_start_0
    sget-object v6, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->FULL_PRIMARY:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    goto :goto_4

    .line 29
    :cond_9
    sget-object v6, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->FULL_AUX:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    :goto_4
    move-object/from16 v17, v6

    .line 30
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getCameraSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    iget-object v9, v15, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mCameraMode:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v18, v9

    move v9, v3

    move-object/from16 p3, v11

    move-object/from16 v11, v17

    move/from16 p4, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v13

    move-object/from16 v13, v18

    .line 32
    :try_start_1
    invoke-static/range {v5 .. v13}, Lcom/motorola/camera/mcf/Mcf;->createInputStream(Ljava/lang/String;Ljava/lang/String;IIIILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;Lcom/motorola/camera/mcf/McfInputStream$StreamMode;)Lcom/motorola/camera/mcf/McfInputStream;

    move-result-object v5

    iput-object v5, v15, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    .line 33
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 35
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 36
    new-instance v10, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;

    move-object v2, v10

    move v5, v3

    move/from16 v3, p4

    move v4, v5

    move-object/from16 v5, p2

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v8, p3

    move-object v9, v0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;-><init>(IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V

    move-object/from16 v2, p3

    goto/16 :goto_6

    :cond_a
    move v5, v3

    move/from16 v8, p4

    move-object/from16 v7, v16

    .line 37
    invoke-static {v14, v8, v5, v2, v7}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v2

    .line 38
    iget-object v3, v15, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    .line 39
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableListener()Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v3

    iget-object v5, v15, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    .line 40
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableHandler()Landroid/os/Handler;

    move-result-object v5

    .line 41
    invoke-virtual {v2, v3, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 42
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrProMode()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 43
    new-instance v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;

    iget-object v5, v15, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    .line 44
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableListener()Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v18

    iget-object v5, v15, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    .line 45
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableHandler()Landroid/os/Handler;

    move-result-object v19

    .line 46
    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getImageAvailableListener(Ljava/lang/String;)Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    move-result-object v20

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandler:Landroid/os/Handler;

    const/16 v22, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v21, v5

    invoke-direct/range {v16 .. v22}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;-><init>(Landroid/media/ImageReader;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;)V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mImageListenerSwitcher:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;

    .line 47
    :cond_b
    iget-object v3, v15, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v9, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    .line 49
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    move-object v2, v9

    move-object v3, v0

    move-object v5, v7

    move-object v7, v14

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v2, p3

    .line 50
    :try_start_2
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v2, p3

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v11

    .line 51
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Exception: create stream: "

    invoke-static {v3}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    .line 53
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    move-object/from16 v1, p1

    .line 54
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v3, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_7

    :cond_c
    return-void
.end method

.method public setupPermissionsRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isAudioPermissionRequired()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    const-string v1, "perm_request_code"

    .line 5
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$PermissionsCallback;

    invoke-direct {v0, p1}, Lcom/motorola/camera/fsm/camera/modes/VideoMode$PermissionsCallback;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/PermissionsManager;->mCallback:Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;

    :cond_2
    return-void
.end method
