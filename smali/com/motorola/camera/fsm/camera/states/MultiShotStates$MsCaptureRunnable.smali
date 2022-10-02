.class public final Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "MultiShotStates.java"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/MultiShotStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MsCaptureRunnable"
.end annotation


# instance fields
.field public mShotStartTime:J

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/MultiShotStates;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates;Lcom/motorola/camera/fsm/camera/states/MultiShotStates$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/MultiShotStates;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method

.method public static access$1200(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 5
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 5
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 12

    .line 1
    sget-object p3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 5
    iget-object v3, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "SEQ_ID"

    .line 6
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 7
    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v2

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    .line 9
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    .line 11
    sget-boolean v6, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->mMtkCshotSupport:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_0

    .line 12
    sget-boolean v6, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->mMtkSpeedUpSupported:Z

    if-eqz v6, :cond_0

    .line 13
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->CS_KEY_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->FAST_MODE_MTK:[I

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->FAST_MODE_MTK:[I

    .line 15
    invoke-virtual {v6, v8, v5, v9}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v6

    .line 17
    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SNAP_MODE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v8, v6, v5, v9}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 18
    :goto_0
    iget-object v6, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/MultiShotStates;

    .line 19
    iget-object v8, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 20
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTISHOT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 22
    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 23
    check-cast v6, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;

    .line 24
    iget v6, v6, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;->mCurrentExpTime:F

    const/16 v8, 0x1e

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v9, v6, v9

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v9, v10, v9

    .line 25
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 26
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    .line 27
    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 28
    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    div-float v9, v10, v9

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 29
    sget-object v9, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v9, v9, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxMultishotRatesLvl1:[F

    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v3

    aget v3, v9, v3

    goto :goto_1

    .line 30
    :cond_1
    sget-object v9, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v9, v9, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxMultishotRates:[F

    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v3

    aget v3, v9, v3

    .line 31
    :goto_1
    invoke-static {v4, v5, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setUwDcDisabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 32
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-static {v9}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    const/4 v11, 0x0

    if-eqz v6, :cond_3

    .line 34
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 35
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_2

    goto :goto_2

    :cond_2
    move v6, v11

    goto :goto_3

    :cond_3
    :goto_2
    move v6, p1

    :goto_3
    if-eqz v6, :cond_4

    int-to-float v3, v8

    .line 36
    :cond_4
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getCurrentMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 37
    invoke-virtual {v7}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    sget-object v6, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MULTI_SHOT_RATE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 38
    invoke-static {v6}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v3, v6

    :cond_7
    int-to-float v6, v8

    div-float v7, v6, v3

    float-to-int v7, v7

    rem-float/2addr v6, v3

    int-to-float v3, v7

    const v7, 0x3dcccccd    # 0.1f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_8

    goto :goto_4

    :cond_8
    move v10, v9

    :goto_4
    add-float/2addr v3, v10

    float-to-int v3, v3

    .line 39
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v6

    if-eqz v6, :cond_9

    mul-int/lit8 v3, v3, 0x1

    .line 40
    div-int/lit8 v3, v3, 0x4

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 41
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    iget-object v7, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    move v8, v11

    :goto_5
    if-ge v8, v3, :cond_e

    if-nez v8, :cond_c

    .line 43
    iget-object v9, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v5, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-static {v4, v5}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->appendAppInfoToMetadata(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 45
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrProMode()Z

    move-result v9

    if-nez v9, :cond_b

    .line 46
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 47
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 48
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 49
    iget-object v9, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 50
    sget-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 51
    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 52
    check-cast v9, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    .line 53
    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    .line 54
    invoke-static {v7, v4, v9, v5, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTargetWithPhysicalCamera(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_6

    .line 55
    :cond_a
    new-instance v9, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v9, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v7, v9, v4, v1}, Lcom/motorola/camera/fsm/camera/SurfaceManager;->forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_6

    .line 56
    :cond_b
    new-instance v9, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;

    invoke-direct {v9, v5}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v7, v9, v4, v1}, Lcom/motorola/camera/fsm/camera/SurfaceManager;->forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 57
    new-instance v9, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v9, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v7, v9, v4, v0}, Lcom/motorola/camera/fsm/camera/SurfaceManager;->forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 58
    invoke-static {v4, v5, v11, v11}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMfnr(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;ZZ)V

    .line 59
    invoke-static {v4, v5, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRequestExif(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 60
    :goto_6
    new-instance v9, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v9, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v7, v9, v4, p3}, Lcom/motorola/camera/fsm/camera/SurfaceManager;->forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 61
    invoke-static {v4, v5, v11}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZslCropMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 62
    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    const/4 v9, 0x0

    .line 63
    invoke-virtual {v5, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrProMode()Z

    move-result v9

    if-nez v9, :cond_d

    .line 65
    new-instance v9, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;

    invoke-direct {v9, v5}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v7, v9, v4, v1}, Lcom/motorola/camera/fsm/camera/SurfaceManager;->forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_7

    .line 66
    :cond_d
    new-instance v9, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;

    invoke-direct {v9, v5}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v7, v9, v4, v0}, Lcom/motorola/camera/fsm/camera/SurfaceManager;->forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 67
    invoke-static {v4, v5, v11, v11}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMfnr(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;ZZ)V

    .line 68
    invoke-static {v4, v5, v11}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRequestExif(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 69
    :goto_7
    new-instance v9, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v9, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v7, v9, v4, p3}, Lcom/motorola/camera/fsm/camera/SurfaceManager;->forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 70
    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 71
    :cond_e
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->mShotStartTime:J

    .line 72
    :cond_f
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->access$800()I

    move-result p1

    .line 73
    new-instance p3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;

    invoke-direct {p3, p0, p1, v2, v4}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;ILcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Ljava/lang/String;)V

    .line 74
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 75
    invoke-static {v4, v6, p0, p3, p1}, Lcom/motorola/camera/device/CameraService;->setRepeatingBurst(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
