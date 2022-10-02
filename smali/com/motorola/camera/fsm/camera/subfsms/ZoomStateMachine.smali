.class public Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "ZoomStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;,
        Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine<",
        "Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;",
        ">;"
    }
.end annotation


# instance fields
.field public mBaseZoom:F

.field public mCameraType:Lcom/motorola/camera/settings/CameraType;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mFirstFrame:Z

.field public final mHandler:Landroid/os/Handler;

.field public mMagneticX:[F

.field public mZoomCompleted:Z

.field public mZoomState:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

.field public mZoomTarget:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    .line 3
    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    .line 7
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 8
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string/jumbo v2, "window"

    .line 9
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 10
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->resetState()V

    return-void
.end method

.method public static getReciprocal(F)F
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    const-wide v0, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v2, v0

    .line 1
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p0, v0

    const v0, 0x4b189680    # 1.0E7f

    div-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public convertZoom(FILcom/motorola/camera/settings/CameraType;Z)F
    .locals 8

    .line 1
    invoke-static {p3}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v0

    .line 2
    invoke-static {p3}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p4, :cond_c

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p4

    const v3, 0x3dcccccd    # 0.1f

    if-eqz p4, :cond_4

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result p4

    if-eqz p4, :cond_c

    .line 6
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearMasterCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p4

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    if-eqz p4, :cond_0

    .line 9
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    .line 11
    :goto_0
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 12
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    :cond_1
    sub-float/2addr v0, v3

    :cond_2
    if-eqz p4, :cond_3

    .line 13
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p4

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p4

    .line 15
    :goto_1
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 16
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p3

    if-eqz p3, :cond_c

    if-eqz p4, :cond_c

    goto :goto_3

    .line 17
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result p4

    if-eqz p4, :cond_6

    sget-object p4, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-eq p3, p4, :cond_5

    sget-object p4, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne p3, p4, :cond_6

    :cond_5
    sub-float/2addr v0, v3

    .line 18
    :cond_6
    sget-object p4, Lcom/motorola/camera/settings/SettingsManager;->BACK_KNIFE_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 19
    invoke-static {p4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p4

    .line 20
    iget-object p4, p4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 21
    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 22
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_8

    if-eq p4, v6, :cond_7

    if-ne p4, v4, :cond_8

    :cond_7
    move v3, v6

    goto :goto_2

    :cond_8
    move v3, v5

    .line 23
    :goto_2
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p3

    if-eqz p3, :cond_a

    const/4 p3, 0x3

    if-eq p4, p3, :cond_9

    if-ne p4, v4, :cond_a

    :cond_9
    move v5, v6

    :cond_a
    if-nez v3, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    :goto_3
    add-float/2addr v1, v2

    .line 24
    :cond_c
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const p4, 0x3a83126f    # 0.001f

    cmpl-float p3, p3, p4

    const/4 p4, 0x0

    if-lez p3, :cond_d

    int-to-float p2, p2

    .line 25
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p3

    neg-float p1, p1

    div-float/2addr p1, p2

    sub-float/2addr p1, v2

    float-to-double p1, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    mul-double/2addr p1, v2

    iget p3, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    float-to-double v2, p3

    div-double/2addr p1, v2

    double-to-float p1, p1

    .line 27
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_4

    :cond_d
    move p1, p4

    :goto_4
    cmpl-float p2, p1, p4

    if-nez p2, :cond_e

    .line 28
    iget p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    goto :goto_5

    :cond_e
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->getReciprocal(F)F

    move-result p0

    :goto_5
    return p0
.end method

.method public onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public resetState()V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->NOT_ZOOMED:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    .line 3
    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    return-void
.end method

.method public setZoomTarget(FLcom/motorola/camera/settings/CameraType;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->getReciprocal(F)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2
    invoke-static {p2}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result p2

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->getReciprocal(F)F

    move-result p2

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    return-void
.end method

.method public smoothZoom(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 11

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 2
    iget-object v1, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "VIDEO_RECORDING"

    .line 3
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v4, "SMOOTH_ZOOM_JUMP"

    .line 4
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_2

    const-string v6, "ZOOM_JUMP_X"

    .line 5
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v5

    .line 6
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    if-eqz p4, :cond_4

    .line 7
    :cond_3
    invoke-static {p2, p1}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    .line 8
    :cond_4
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p4

    if-eqz p4, :cond_c

    if-nez v4, :cond_c

    .line 9
    sget-object p4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p4, p4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    .line 10
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v4

    .line 11
    iget-object v6, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    if-nez v6, :cond_5

    .line 12
    invoke-static {p2, v3}, Lcom/motorola/camera/utility/ZoomHelper;->getMagneticOffsetX(Lcom/motorola/camera/settings/CameraType;Z)[F

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    :cond_5
    if-eqz p4, :cond_c

    .line 13
    iget-object v6, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    if-eqz v6, :cond_c

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v4, v6, v4

    .line 14
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomBlendingType()I

    move-result v7

    .line 15
    invoke-static {v7}, Lcom/motorola/camera/utility/ZoomHelper;->isFullBlendingType(I)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eqz v8, :cond_7

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    aget v7, p0, v2

    cmpl-float v7, v4, v7

    if-lez v7, :cond_6

    .line 17
    aget v7, p0, v1

    cmpg-float v7, v4, v7

    if-gez v7, :cond_6

    .line 18
    aget p0, p4, v2

    goto :goto_4

    .line 19
    :cond_6
    aget v7, p0, v10

    cmpl-float v7, v4, v7

    if-lez v7, :cond_a

    .line 20
    aget p0, p0, v9

    cmpg-float p0, v4, p0

    if-gez p0, :cond_a

    .line 21
    aget p0, p4, v9

    goto :goto_4

    :cond_7
    if-ne v10, v7, :cond_8

    move v8, v2

    goto :goto_3

    :cond_8
    move v8, v1

    :goto_3
    if-eqz v8, :cond_9

    .line 22
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    aget v7, p0, v2

    cmpl-float v7, v4, v7

    if-lez v7, :cond_a

    .line 23
    aget p0, p0, v1

    cmpg-float p0, v4, p0

    if-gez p0, :cond_a

    .line 24
    aget p0, p4, v2

    goto :goto_4

    .line 25
    :cond_9
    invoke-static {v7}, Lcom/motorola/camera/utility/ZoomHelper;->isNonUwBlendingType(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    aget v7, p0, v10

    cmpl-float v7, v4, v7

    if-lez v7, :cond_a

    .line 27
    aget p0, p0, v9

    cmpg-float p0, v4, p0

    if-gez p0, :cond_a

    .line 28
    aget p0, p4, v9

    :goto_4
    div-float p1, v6, p0

    move p0, v2

    goto :goto_5

    :cond_a
    move p0, v1

    :goto_5
    if-eqz v3, :cond_b

    cmpl-float p4, v0, v5

    if-lez p4, :cond_b

    move v1, v2

    :cond_b
    if-eqz p0, :cond_c

    if-nez v1, :cond_c

    .line 29
    invoke-static {p2, p1}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    .line 30
    :cond_c
    invoke-static {p2, p1}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomRect(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    move-result-object p0

    .line 31
    invoke-virtual {p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p4

    invoke-virtual {p4}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_d
    :goto_6
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 32
    iget-object v1, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p2, v1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoomRect(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    .line 33
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 34
    iget-object v1, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 35
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getModeContextForStreaming(Lcom/motorola/camera/settings/CameraType;)I

    move-result v1

    .line 36
    iget v2, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    iget-object v3, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v1, p3, v2, v3, v4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->processMcfSceneMode(ILcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 37
    :cond_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 38
    iget-object v1, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 39
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 40
    invoke-static {v1, v2, v3, v4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->containsTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Z

    move-result v1

    .line 41
    invoke-static {p1}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result v2

    if-nez v2, :cond_f

    if-eqz v1, :cond_f

    .line 42
    iget-object v1, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 43
    iget-object v2, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v1, v2, v0, v4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_6

    .line 44
    :cond_f
    invoke-static {p1}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result v2

    if-eqz v2, :cond_d

    if-nez v1, :cond_d

    .line 45
    iget-object v1, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 46
    iget-object v2, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v1, v2, v0, v4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_6

    :cond_10
    return-void
.end method

.method public zoom(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;)V
    .locals 11

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    const-string v4, "VIDEO_RECORDING"

    .line 4
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "SMOOTH_ZOOM_JUMP"

    .line 5
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "ZOOM_JUMP_X"

    .line 6
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    if-nez v4, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    div-float v0, v2, v0

    .line 8
    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->setZoomTarget(FLcom/motorola/camera/settings/CameraType;)V

    goto :goto_0

    :cond_1
    const-string v5, "TYPE"

    .line 9
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "VALUE"

    .line 10
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    const-string v7, "ORIENTATION"

    .line 11
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "ZOOM_SEG_UNIT"

    .line 12
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 13
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v9

    invoke-virtual {p0, v9, p2}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->setZoomTarget(FLcom/motorola/camera/settings/CameraType;)V

    const-string v9, "START_ZOOM"

    .line 14
    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 15
    iget v10, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    iput v10, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    .line 16
    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    const/4 v0, 0x2

    if-ne v0, v5, :cond_3

    const/16 v0, 0x36

    .line 17
    invoke-virtual {p0, v6, v0, p2, v4}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->convertZoom(FILcom/motorola/camera/settings/CameraType;Z)F

    move-result v0

    .line 18
    invoke-static {p2, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    .line 19
    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->setZoomTarget(FLcom/motorola/camera/settings/CameraType;)V

    goto :goto_0

    :cond_3
    if-ne v1, v5, :cond_6

    const/16 v0, 0x10e

    if-eq v7, v0, :cond_4

    const/16 v0, 0xb4

    if-ne v7, v0, :cond_5

    :cond_4
    neg-float v6, v6

    .line 20
    :cond_5
    invoke-virtual {p0, v6, v8, p2, v4}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->convertZoom(FILcom/motorola/camera/settings/CameraType;Z)F

    move-result v0

    .line 21
    invoke-static {p2, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    .line 22
    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->setZoomTarget(FLcom/motorola/camera/settings/CameraType;)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->setZoomTarget(FLcom/motorola/camera/settings/CameraType;)V

    goto :goto_0

    .line 24
    :cond_7
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->setZoomTarget(FLcom/motorola/camera/settings/CameraType;)V

    .line 25
    :goto_0
    invoke-static {p2}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v0

    div-float v0, v2, v0

    .line 26
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v4

    .line 27
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 28
    invoke-static {p2}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v4

    div-float/2addr v2, v4

    .line 29
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 30
    iget v2, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3e0a3d71    # 0.135f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_8

    .line 31
    iget v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    goto :goto_1

    .line 32
    :cond_8
    iget v2, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    cmpl-float v2, v2, v0

    const v4, 0x3db851ec    # 0.09f

    if-lez v2, :cond_9

    add-float/2addr v0, v4

    goto :goto_1

    :cond_9
    sub-float/2addr v0, v4

    .line 33
    :goto_1
    invoke-virtual {p0, v0, p2, p1, v3}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->smoothZoom(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 34
    sget-object p1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->ZOOMING:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    .line 35
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    return-void
.end method
