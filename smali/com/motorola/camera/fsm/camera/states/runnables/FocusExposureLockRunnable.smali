.class public Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.source "FocusExposureLockRunnable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$FocusTimeoutRunnable;,
        Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;,
        Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCameraListener:Lcom/motorola/camera/device/callables/CameraListener;

.field public mExposureLock:Z

.field public mFocusLock:Z

.field public mFrameCnt:I

.field public mIsComplete:Z

.field public mIsFlashExpected:Z

.field public final mLock:Z

.field public mLockMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final mLockType:I

.field public mPreTrigger:Z

.field public mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public mTimeoutChecking:Z

.field public mTimeoutFrames:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mCameraListener:Lcom/motorola/camera/device/callables/CameraListener;

    .line 4
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    .line 5
    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    return-void
.end method

.method public static access$1000(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;ZZ)V
    .locals 11

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    if-eqz v7, :cond_1

    .line 3
    instance-of v0, p2, Landroid/hardware/camera2/TotalCaptureResult;

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    .line 5
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    .line 6
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 9
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda2;

    move-object v1, v10

    move-object v2, p0

    move v5, p3

    move v6, p4

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Ljava/lang/Integer;ZZZLandroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final checkExposure(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;Z)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_TIME_SENSITIVITY_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 4
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    if-nez v1, :cond_3

    if-eqz p3, :cond_1

    return v0

    :cond_1
    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, v3, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCaptureCompleted - missing android.control.mAeState!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 8
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 9
    :cond_3
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide p2

    .line 10
    iget p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeState:I

    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq p0, v2, :cond_9

    .line 12
    iget-wide v4, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeFrameNum:J

    cmp-long p0, v4, p2

    if-ltz p0, :cond_4

    goto/16 :goto_1

    .line 13
    :cond_4
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 14
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 17
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 18
    :cond_5
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 19
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_CHECK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 20
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 22
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 23
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRECAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v3, :cond_7

    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    .line 28
    :cond_7
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 29
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 30
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_8

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 32
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 33
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 34
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    .line 35
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 36
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_AFTER_EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 37
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 39
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_8
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 41
    iput p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeState:I

    .line 42
    iput-wide p2, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeFrameNum:J

    const/4 p0, 0x1

    return p0

    :cond_9
    :goto_1
    return v0
.end method

.method public final checkFocus(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCaptureCompleted - missing android.control.afState !"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3
    :cond_0
    iget v1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAfState:I

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x4

    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 6
    invoke-virtual {p0, p1, v3, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->handleFocusState(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;ZZ)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 8
    invoke-virtual {p0, p1, v3, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->handleFocusState(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;ZZ)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 10
    invoke-virtual {p0, p1, v0, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->handleFocusState(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;ZZ)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, p1, v0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->handleFocusState(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;ZZ)V

    .line 12
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 13
    iput p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAfState:I

    return v3
.end method

.method public final checkFocusTimeout(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    if-eqz p1, :cond_3

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 7
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsFlashExpected:Z

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFocusTimeoutDurationFlash:I

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mTimeoutRunnable:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$FocusTimeoutRunnable;

    int-to-long v0, v0

    .line 14
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 15
    :cond_2
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutChecking:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_TIMEOUT:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-boolean v8, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_0

    .line 2
    iget-object v8, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 3
    iget-object v8, v8, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4
    iget-object v4, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 5
    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6
    iget-object v4, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 7
    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v8, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 9
    iget-object v8, v8, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 10
    iget-object v4, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 11
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 12
    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 13
    iget-object v4, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 14
    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v10

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v9

    .line 15
    :goto_1
    iget-boolean v8, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    if-eqz v8, :cond_d

    .line 16
    iget-object v8, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 17
    iget-object v8, v8, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 18
    iget-object v8, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 19
    iget-object v8, v8, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 20
    iget-object v8, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 21
    iget-object v8, v8, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    move v8, v10

    goto :goto_3

    :cond_4
    :goto_2
    move v8, v9

    :goto_3
    and-int/2addr v4, v8

    .line 22
    iget-object v8, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 23
    iget-object v8, v8, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto/16 :goto_4

    .line 24
    :cond_5
    iget-object v8, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 25
    iget-object v8, v8, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto/16 :goto_4

    .line 26
    :cond_6
    iget-object v8, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 27
    iget-object v8, v8, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 28
    :cond_7
    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 29
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 30
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    .line 31
    :cond_8
    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 32
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 33
    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 34
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_AFTER_EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 35
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 36
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 37
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->isEmptyPreviewBuilders()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    .line 38
    :cond_9
    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 39
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 40
    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 41
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 42
    iput-boolean v9, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    .line 43
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 44
    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupExposureLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Z

    .line 45
    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 46
    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 47
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 48
    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 49
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    .line 50
    :cond_a
    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 51
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    :goto_4
    move v1, v9

    goto :goto_6

    :cond_c
    :goto_5
    move v1, v10

    goto :goto_6

    .line 52
    :cond_d
    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 53
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_6
    and-int/2addr v1, v4

    .line 54
    iget-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    if-eqz v2, :cond_e

    .line 55
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 56
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 57
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 58
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_7

    .line 59
    :cond_e
    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 60
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 61
    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 62
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_7

    :cond_f
    move v0, v10

    goto :goto_8

    :cond_10
    :goto_7
    move v0, v9

    :goto_8
    and-int/2addr v0, v1

    .line 63
    iput-boolean v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mIsComplete:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 64
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    if-eqz v0, :cond_11

    .line 65
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 66
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 67
    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mTimeoutRunnable:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$FocusTimeoutRunnable;

    .line 68
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 70
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getAutoFocus(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    move-result-object v0

    .line 71
    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 72
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 73
    iput-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 74
    :cond_11
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v0, v9

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    .line 75
    iget-boolean v2, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mIsComplete:Z

    and-int/2addr v0, v2

    goto :goto_9

    :cond_12
    if-eqz v0, :cond_17

    .line 76
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 77
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE_SHOW_SLAVE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 78
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 79
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_15

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 80
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 81
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 82
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 83
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result p2

    if-nez p2, :cond_15

    :cond_13
    iget-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz p2, :cond_14

    iget p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-eq p2, v9, :cond_15

    .line 84
    :cond_14
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 85
    invoke-virtual {p0, p2, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->stopRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 86
    :cond_15
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    .line 87
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-nez p1, :cond_16

    goto :goto_a

    .line 88
    :cond_16
    new-instance v1, Landroid/os/Bundle;

    const/4 v0, 0x3

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 89
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 90
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_SUCCESS:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 91
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "FOCUS_SUCCESS"

    .line 92
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 94
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "FOCUS_LOCKED"

    .line 95
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    iget-wide v2, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocusLockTime:J

    const-string v0, "FOCUS_TIME"

    .line 97
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 98
    iget v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocalLength:F

    const-string v2, "FOCAL_LENGTH"

    .line 99
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 100
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 101
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "FOCUS_TIMEOUT"

    .line 102
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    :goto_a
    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V

    .line 104
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    .line 105
    iput-boolean v9, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    .line 106
    iput-boolean v10, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutChecking:Z

    .line 107
    iput v10, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFrameCnt:I

    :cond_17
    return-void
.end method

.method public final getAfState(Lcom/motorola/camera/fsm/camera/FsmContext;Z)I
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 3
    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 4
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->getAfState(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getAutoFocus(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 3
    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    return-object p0
.end method

.method public getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FocusExposureLockRunnable"

    return-object p0
.end method

.method public final handleFocusState(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;ZZ)V
    .locals 4

    .line 1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 5
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_FAILED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 11
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_SUCCESS:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eqz p3, :cond_0

    move-object v2, v3

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eqz p2, :cond_1

    move-object p2, v0

    goto :goto_0

    :cond_1
    move-object p2, v1

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 p2, 0x2

    new-array p3, p2, [Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 18
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const/4 v3, 0x0

    aput-object v2, p3, v3

    const/4 v2, 0x1

    aput-object v0, p3, v2

    .line 19
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/motorola/camera/utility/Flags;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 20
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 21
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object p2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    .line 23
    iget-wide v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocusLockTime:J

    sub-long/2addr p2, v0

    .line 24
    iput-wide p2, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocusLockTime:J

    goto :goto_1

    .line 25
    :cond_2
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    new-array p2, p2, [Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 26
    sget-object p3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    aput-object p3, p2, v3

    aput-object v1, p2, v2

    .line 27
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/motorola/camera/utility/Flags;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    .line 29
    iget-wide v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocusLockTime:J

    sub-long/2addr p2, v0

    .line 30
    iput-wide p2, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocusLockTime:J

    :cond_3
    :goto_1
    return-void
.end method

.method public processForChanges(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->processForChanges(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    .line 3
    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mOneShotReceived:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 7
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutChecking:Z

    if-eqz p1, :cond_0

    .line 9
    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFrameCnt:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFrameCnt:I

    .line 10
    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutFrames:I

    if-lt p1, v0, :cond_0

    const-string p1, "FocusExposureLockRunnable"

    const-string v0, "Lock focus time out"

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    .line 15
    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutChecking:Z

    .line 17
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFrameCnt:I

    :cond_0
    return-void
.end method

.method public processForPartialChanges(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->processForPartialChanges(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    .line 3
    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mOneShotPartialReceived:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 7
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_AFTER_EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const/4 v5, 0x0

    .line 3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4
    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    .line 5
    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    .line 6
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsFlashExpected:Z

    .line 7
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v7

    iput-object v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 8
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->TIMEOUT_3A_FRAMES:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 9
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 10
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 11
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_1

    const/16 v7, 0x32

    goto :goto_0

    .line 13
    :cond_1
    sget-object v7, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v7, v7, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->m3ATimeoutFrames:I

    .line 14
    :goto_0
    iput v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutFrames:I

    .line 15
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 16
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 17
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 18
    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 19
    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 20
    iget-boolean v9, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_4

    iget v9, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v9, v10, :cond_4

    const-string v9, "FOCUS_LOCK_SENT"

    .line 21
    invoke-virtual {v8, v9, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v2, "FOCUS_TIMEOUT"

    .line 22
    invoke-virtual {v8, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "FOCUS_LOCKED"

    .line 23
    invoke-virtual {v8, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 24
    :cond_2
    invoke-virtual {v0, v1, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V

    :cond_3
    return-void

    .line 25
    :cond_4
    iget v9, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    const/4 v12, 0x5

    if-ne v9, v12, :cond_5

    .line 26
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_AE_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 27
    :cond_5
    iget v9, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    invoke-static {v9}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 28
    invoke-virtual {v0, v1, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V

    goto/16 :goto_f

    .line 29
    :pswitch_0
    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    .line 30
    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    .line 31
    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    goto/16 :goto_f

    .line 32
    :pswitch_1
    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    .line 33
    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    .line 34
    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    goto/16 :goto_f

    .line 35
    :pswitch_2
    iget-boolean v9, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-nez v9, :cond_7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    move v12, v5

    goto :goto_2

    :cond_7
    :goto_1
    move v12, v10

    :goto_2
    iput-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-nez v9, :cond_9

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    move v12, v5

    goto :goto_4

    :cond_9
    :goto_3
    move v12, v10

    .line 36
    :goto_4
    iput-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    if-eqz v9, :cond_a

    if-nez v7, :cond_a

    move v7, v10

    goto :goto_5

    :cond_a
    move v7, v5

    .line 37
    :goto_5
    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    goto/16 :goto_f

    .line 38
    :pswitch_3
    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    .line 39
    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    .line 40
    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    goto/16 :goto_f

    .line 41
    :pswitch_4
    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    .line 42
    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    .line 43
    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    goto/16 :goto_f

    .line 44
    :pswitch_5
    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    .line 45
    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    .line 46
    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    goto/16 :goto_f

    .line 47
    :pswitch_6
    iget-boolean v9, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-nez v9, :cond_c

    if-eqz v7, :cond_b

    goto :goto_6

    :cond_b
    move v12, v5

    goto :goto_7

    :cond_c
    :goto_6
    move v12, v10

    :goto_7
    iput-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v9, :cond_d

    if-nez v7, :cond_d

    move v12, v10

    goto :goto_8

    :cond_d
    move v12, v5

    .line 48
    :goto_8
    iput-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    if-nez v9, :cond_f

    if-eqz v7, :cond_e

    goto :goto_9

    :cond_e
    move v7, v5

    goto :goto_a

    :cond_f
    :goto_9
    move v7, v10

    .line 49
    :goto_a
    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    goto :goto_f

    .line 50
    :pswitch_7
    iget-boolean v9, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-nez v9, :cond_11

    if-eqz v7, :cond_10

    goto :goto_b

    :cond_10
    move v12, v5

    goto :goto_c

    :cond_11
    :goto_b
    move v12, v10

    :goto_c
    iput-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v9, :cond_12

    if-nez v7, :cond_12

    .line 51
    iget-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsFlashExpected:Z

    if-eqz v12, :cond_12

    move v12, v10

    goto :goto_d

    :cond_12
    move v12, v5

    :goto_d
    iput-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    if-nez v12, :cond_13

    if-nez v9, :cond_14

    :cond_13
    if-eqz v7, :cond_15

    :cond_14
    move v7, v10

    goto :goto_e

    :cond_15
    move v7, v5

    .line 52
    :goto_e
    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    .line 53
    :goto_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureCapture()Z

    move-result v7

    const/4 v9, 0x2

    if-eqz v7, :cond_18

    .line 54
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v7

    if-nez v7, :cond_16

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareQCom()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 55
    :cond_16
    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    const-string v12, "ae_mode_manual_changed"

    if-eqz v7, :cond_17

    .line 56
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v13

    .line 58
    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v14, :cond_17

    .line 59
    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 60
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 61
    invoke-virtual {v7, v14, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 62
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 63
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 64
    invoke-virtual {v13, v7, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v8, v12, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    :cond_17
    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-nez v7, :cond_18

    .line 67
    invoke-virtual {v8, v12, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    .line 69
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v8

    .line 70
    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v12, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 71
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v8, v7, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 72
    :cond_18
    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v6

    .line 73
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$1;)V

    .line 74
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$FocusTimeoutRunnable;

    invoke-direct {v8, v0, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$FocusTimeoutRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;)V

    .line 75
    iput-object v8, v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mTimeoutRunnable:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$FocusTimeoutRunnable;

    .line 76
    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v0, v1, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupFocusLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z

    .line 78
    invoke-virtual {v0, v1, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupPreTrigger(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z

    .line 79
    iget-boolean v8, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    if-eqz v8, :cond_1a

    iget-boolean v8, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz v8, :cond_1a

    iget v8, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v10, v8, :cond_1a

    sget-object v8, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq v8, v12, :cond_19

    sget-object v8, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v8, v12, :cond_1a

    .line 80
    :cond_19
    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 81
    iget-object v8, v8, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 82
    :cond_1a
    invoke-virtual {v0, v1, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupExposureLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Z

    .line 83
    :goto_10
    invoke-virtual {v0, v1, v10, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupFullFrame(Lcom/motorola/camera/fsm/camera/FsmContext;ZLjava/lang/String;)V

    .line 84
    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 85
    sget-object v12, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 86
    iget-object v8, v8, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v8, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 87
    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 88
    iget-object v8, v8, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 89
    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 90
    iget-object v7, v7, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 91
    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v5

    goto :goto_11

    :cond_1b
    move v6, v10

    .line 92
    :goto_11
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->STREAM_MONO_CAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v8

    if-nez v8, :cond_1c

    goto/16 :goto_13

    .line 93
    :cond_1c
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v8

    .line 94
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$1;)V

    .line 95
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$FocusTimeoutRunnable;

    invoke-direct {v14, v0, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$FocusTimeoutRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;)V

    .line 96
    iput-object v14, v13, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mTimeoutRunnable:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$FocusTimeoutRunnable;

    .line 97
    iget-object v14, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v8, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget v14, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v10, v14, :cond_1d

    iget-object v14, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 99
    invoke-virtual {v14}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBokeh()Z

    move-result v14

    if-eqz v14, :cond_1e

    :cond_1d
    iget v14, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v9, v14, :cond_1f

    .line 100
    :cond_1e
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    .line 101
    :cond_1f
    invoke-virtual {v0, v1, v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupFocusLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z

    move-result v9

    .line 102
    invoke-virtual {v0, v1, v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupPreTrigger(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z

    move-result v14

    or-int/2addr v9, v14

    .line 103
    iget-boolean v14, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    or-int/2addr v9, v14

    if-eqz v14, :cond_21

    .line 104
    iget-boolean v14, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz v14, :cond_21

    iget v14, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v10, v14, :cond_21

    sget-object v14, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v15, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq v14, v15, :cond_20

    sget-object v14, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq v14, v15, :cond_20

    sget-object v14, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq v14, v15, :cond_20

    sget-object v14, Lcom/motorola/camera/mcf/Mcf$SceneMode;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v14, v15, :cond_21

    .line 105
    :cond_20
    iget-object v14, v13, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 106
    iget-object v14, v14, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 107
    :cond_21
    invoke-virtual {v0, v1, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupExposureLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Z

    move-result v2

    or-int/2addr v9, v2

    .line 108
    :goto_12
    invoke-virtual {v0, v1, v5, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupFullFrame(Lcom/motorola/camera/fsm/camera/FsmContext;ZLjava/lang/String;)V

    .line 109
    iget-boolean v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz v2, :cond_22

    iget v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v10, v2, :cond_22

    .line 110
    iget-object v2, v13, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 111
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v9, v10

    .line 112
    :cond_22
    iget-object v2, v13, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 113
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 114
    iget-object v2, v13, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 115
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 116
    iget-object v2, v13, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 117
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 118
    iget-object v2, v13, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 119
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 120
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    move v9, v5

    .line 121
    :cond_23
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    if-nez v6, :cond_24

    if-nez v9, :cond_24

    goto :goto_14

    .line 122
    :cond_24
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    if-eqz v6, :cond_25

    .line 123
    invoke-virtual {v0, v1, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    :cond_25
    if-eqz v9, :cond_26

    .line 124
    invoke-virtual {v0, v1, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    :cond_26
    if-eqz v6, :cond_27

    .line 125
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getAutoFocus(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    move-result-object v2

    invoke-virtual {v0, v1, v10, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v2, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v2

    .line 128
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V

    :cond_27
    if-eqz v9, :cond_28

    .line 129
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getAutoFocus(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 131
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V

    :cond_28
    return-void

    .line 133
    :cond_29
    :goto_14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 134
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE_SHOW_SLAVE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 135
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 136
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 137
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 138
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 139
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 140
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_2a
    iget-boolean v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz v2, :cond_2b

    iget v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-eq v2, v10, :cond_2c

    .line 141
    :cond_2b
    invoke-virtual {v0, v1, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->stopRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 142
    :cond_2c
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 143
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 144
    invoke-virtual {v0, v1, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V

    .line 145
    iput-boolean v10, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final sendCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/motorola/camera/fsm/RequestWrapper;->getCameraType(Z)Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 3
    :goto_0
    invoke-virtual {v1, p2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    .line 4
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->isEmptyPreviewBuilders()Z

    move-result v1

    .line 5
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Z)V

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 8
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 9
    invoke-static {v0, p2, v1, p0}, Lcom/motorola/camera/device/CameraService;->createHighSpeedCaptureRequests(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mCameraListener:Lcom/motorola/camera/device/callables/CameraListener;

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 12
    invoke-static {v0, p2, v1, v2, p1}, Lcom/motorola/camera/device/CameraService;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestListener;Landroid/os/Handler;)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkFocusTimeout(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public sendComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 2
    iget p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mRefCnt:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mRefCnt:I

    if-gtz p2, :cond_2

    .line 3
    iget-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    if-nez p0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 7
    sget-object p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->STREAM_MONO_CAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 10
    sget-object p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 13
    sget-object p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 14
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 16
    sget-object p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 17
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mIsComplete:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final setupExposureLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualStreamDepthMode(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v3

    .line 5
    :cond_0
    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 6
    iget-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 7
    :goto_0
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    .line 9
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 11
    iget-object v5, v5, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v3

    .line 12
    :goto_2
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 14
    iget-object v2, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    move v2, v4

    :cond_5
    if-eqz v2, :cond_7

    .line 15
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 16
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    goto :goto_4

    .line 17
    :cond_6
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 18
    :goto_4
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v4

    .line 19
    :cond_7
    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 20
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v3
.end method

.method public final setupFocusLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v7, 0x0

    .line 2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 3
    invoke-virtual {v0, v1, v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    const/4 v9, 0x1

    .line 4
    invoke-virtual {v0, v1, v3, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v9

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getAutoFocus(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    move-result-object v10

    .line 6
    invoke-static/range {p3 .. p3}, Lcom/motorola/camera/fsm/RequestWrapper;->getCameraType(Z)Lcom/motorola/camera/settings/CameraType;

    move-result-object v11

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v11

    .line 7
    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getAfState(Lcom/motorola/camera/fsm/camera/FsmContext;Z)I

    move-result v12

    const/4 v13, -0x1

    const/4 v14, 0x4

    const/4 v15, 0x5

    if-eq v12, v14, :cond_0

    if-eq v12, v15, :cond_0

    if-ne v12, v13, :cond_2

    .line 8
    :cond_0
    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 9
    iget-object v13, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 10
    check-cast v12, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 11
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v13

    .line 12
    monitor-enter v12

    .line 13
    :try_start_0
    iget-object v14, v12, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v14, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    if-eqz v13, :cond_1

    .line 14
    iget-boolean v13, v13, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mWaitingUnlock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 15
    :goto_0
    monitor-exit v12

    if-nez v13, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x2

    if-nez v12, :cond_9

    .line 16
    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getAfState(Lcom/motorola/camera/fsm/camera/FsmContext;Z)I

    move-result v3

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v14

    .line 18
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v15

    if-nez v15, :cond_3

    goto :goto_2

    .line 19
    :cond_3
    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/motorola/camera/mcf/Mcf;->FOCUS_PASSIVE_FOCUSED_GRANTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v14, v15}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v14, 0x0

    :goto_3
    if-ne v3, v13, :cond_7

    if-eqz v14, :cond_7

    .line 20
    iget v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    const/4 v14, 0x1

    if-ne v3, v14, :cond_7

    .line 21
    new-instance v3, Ljava/util/HashSet;

    const/4 v15, 0x6

    new-array v15, v15, [Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v16, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const/16 v17, 0x0

    aput-object v16, v15, v17

    sget-object v16, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    aput-object v16, v15, v14

    sget-object v14, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    aput-object v14, v15, v13

    sget-object v13, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const/4 v14, 0x3

    aput-object v13, v15, v14

    sget-object v13, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const/4 v14, 0x4

    aput-object v13, v15, v14

    sget-object v13, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const/4 v14, 0x5

    aput-object v13, v15, v14

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 22
    iget-boolean v13, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsFlashExpected:Z

    if-nez v13, :cond_6

    iget-object v13, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v3, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v3, 0x1

    :goto_5
    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v3, 0x1

    .line 23
    :goto_8
    iget-boolean v13, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v13, :cond_a

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_9

    :cond_a
    const/4 v3, 0x0

    :goto_9
    const/4 v14, 0x1

    xor-int/2addr v13, v14

    .line 24
    iget v15, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v15, v14, :cond_b

    if-eqz v13, :cond_b

    .line 25
    iget-object v13, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    const-string v14, "FOCUS_LOCK_SENT"

    .line 26
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 27
    :cond_b
    iget v14, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    const/4 v15, 0x4

    move-object/from16 v16, v5

    const/4 v5, 0x5

    if-ne v14, v15, :cond_c

    const/4 v15, 0x1

    goto :goto_a

    :cond_c
    const/4 v15, 0x0

    :goto_a
    if-ne v14, v5, :cond_e

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 29
    monitor-enter v10

    .line 30
    :try_start_1
    iget v5, v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x1

    if-ne v5, v14, :cond_d

    const/4 v5, 0x1

    goto :goto_b

    :cond_d
    const/4 v5, 0x0

    :goto_b
    monitor-exit v10

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v10

    throw v1

    :cond_e
    const/4 v5, 0x0

    .line 31
    :goto_c
    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isPassiveFocus()Z

    move-result v14

    if-nez v3, :cond_f

    if-eqz v13, :cond_10

    :cond_f
    if-nez v14, :cond_11

    :cond_10
    if-nez v15, :cond_11

    if-eqz v5, :cond_1c

    .line 32
    :cond_11
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 33
    invoke-static {v11, v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v5, 0x1

    .line 34
    invoke-static {v5, v3}, Lcom/motorola/camera/settings/SettingsHelper;->isContainedInArray(I[I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 35
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isManualFocusEnabled()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 36
    :cond_12
    iget-boolean v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v3, :cond_16

    if-eqz v15, :cond_13

    const/4 v3, 0x1

    .line 37
    invoke-virtual {v10, v7, v9, v3}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->triggerAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_d

    .line 38
    :cond_13
    monitor-enter v10

    .line 39
    :try_start_2
    iget v3, v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    .line 40
    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->handleAfModeUninitialized()V

    .line 41
    :cond_14
    invoke-virtual {v10, v1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->updateCurrentFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 42
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v3, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 43
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 45
    invoke-virtual {v9, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    monitor-exit v10

    .line 47
    :goto_d
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 48
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 49
    iget-object v3, v3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 51
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "FOCUS_LOCK_SENT"

    .line 52
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    :cond_15
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

    invoke-direct {v3, v0, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;)V

    .line 54
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 55
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getAutoFocus(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    move-result-object v0

    .line 56
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 57
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 59
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->HAL_FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    .line 60
    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 62
    iput-wide v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocusLockTime:J

    goto :goto_10

    :catchall_1
    move-exception v0

    .line 63
    monitor-exit v10

    throw v0

    :cond_16
    if-eqz v15, :cond_17

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v10, v7, v9, v1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->triggerAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_e

    .line 65
    :cond_17
    monitor-enter v10

    .line 66
    :try_start_3
    iget v3, v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_18

    .line 67
    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->handleAfModeUninitialized()V

    .line 68
    :cond_18
    invoke-virtual {v10, v1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->updateCurrentFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 69
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v1, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 70
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 72
    invoke-virtual {v9, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 73
    monitor-exit v10

    :goto_e
    if-eqz v12, :cond_19

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v10, v11, v1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->setWaitingUnlock(Ljava/lang/String;Z)V

    .line 75
    :cond_19
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 76
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 77
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 v3, 0x7

    .line 79
    iget v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-eq v3, v0, :cond_1a

    const/16 v3, 0x8

    if-eq v3, v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_f

    :cond_1a
    const/4 v0, 0x0

    :goto_f
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1b

    .line 80
    iget-object v0, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_10
    move-object/from16 v3, v16

    goto :goto_11

    :catchall_2
    move-exception v0

    .line 81
    monitor-exit v10

    throw v0

    .line 82
    :cond_1c
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 83
    iput v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocalLength:F

    .line 84
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 85
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    move-object/from16 v3, v16

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 87
    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v0, :cond_1d

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 88
    :cond_1d
    iget-object v0, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    :goto_11
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 90
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_3
    move-exception v0

    .line 91
    monitor-exit v12

    throw v0
.end method

.method public final setupFullFrame(Lcom/motorola/camera/fsm/camera/FsmContext;ZLjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v2, v3, :cond_1

    if-nez p2, :cond_1

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 4
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p1, p3, v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1, p3, v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setupPreTrigger(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z
    .locals 9

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    invoke-virtual {p0, p1, p3, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 4
    invoke-virtual {p0, p1, p3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    .line 5
    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 7
    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;

    .line 8
    invoke-virtual {p0, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->getExposureInfo(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p3, 0x2

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, p3, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v6, 0x4

    if-ne p1, v6, :cond_2

    :cond_1
    move p1, v4

    goto :goto_1

    :cond_2
    move p1, v1

    .line 13
    :goto_1
    iget v6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v4, v6, :cond_4

    iget-object v6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v6}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz v6, :cond_4

    if-eqz p1, :cond_3

    .line 14
    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v1

    .line 16
    :cond_3
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 17
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_TIME_SENSITIVITY_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 18
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_4
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashProcess()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashAwbSpeed:F

    const/4 v6, 0x0

    cmpl-float v7, p1, v6

    if-lez v7, :cond_7

    .line 22
    iget-boolean v7, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move p1, v6

    .line 23
    :goto_2
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->AWB_CONV_SPEED_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v3, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v6, v7, v5, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 26
    :cond_7
    :goto_3
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    if-eqz p0, :cond_b

    .line 27
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getHardwareLevel()I

    move-result p0

    if-ne p0, p3, :cond_8

    goto :goto_4

    .line 28
    :cond_8
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 29
    invoke-virtual {v3, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_4

    .line 30
    :cond_9
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, p0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 31
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 33
    invoke-virtual {v5, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    move v1, v4

    :goto_4
    if-eqz v1, :cond_a

    .line 34
    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 35
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_CHECK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    .line 36
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 37
    :cond_a
    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 38
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 39
    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getHardwareLevel()I

    move-result p0

    if-ne p0, p3, :cond_c

    goto :goto_5

    .line 40
    :cond_c
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, p0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 41
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 42
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 43
    invoke-virtual {v5, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 44
    :goto_5
    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 45
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    :goto_6
    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 47
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0
.end method

.method public shouldStreamSlaveInLpm()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE_SHOW_SLAVE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
