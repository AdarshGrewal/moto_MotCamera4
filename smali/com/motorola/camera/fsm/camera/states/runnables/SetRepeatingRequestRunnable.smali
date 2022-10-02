.class public Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SetRepeatingRequestRunnable.java"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;
    }
.end annotation


# static fields
.field public static final sOneShotErrorCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAutoFocusStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

.field public final mHighSpeedCreateRequestsListener:Lcom/motorola/camera/device/callables/CallableListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/device/callables/CallableListener<",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field public mRefCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->sOneShotErrorCallbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mHighSpeedCreateRequestsListener:Lcom/motorola/camera/device/callables/CallableListener;

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$2;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mAutoFocusStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    return-void
.end method

.method public static access$800(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->sOneShotErrorCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    move-object p0, v0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isCameraSessionClosed(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 3
    invoke-virtual {v0, p0}, Lcom/motorola/camera/device/CameraStateManager;->getCameraSession(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/device/CameraStateManager$Status;->OPEN:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static removePreviousOneShotErrorCallback(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->sOneShotErrorCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0
.end method


# virtual methods
.method public addTarget(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {p0, v0, p1, p3}, Lcom/motorola/camera/fsm/camera/SurfaceManager;->forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    return-void
.end method

.method public buildRequests(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "IZ",
            "Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    new-instance p4, Ljava/util/ArrayList;

    add-int/lit8 v0, p3, 0x1

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v0, v1, p1, p5}, Lcom/motorola/camera/fsm/camera/SurfaceManager;->forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 5
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 8
    new-instance p3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {p3, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {p0, p3, p1, p5}, Lcom/motorola/camera/fsm/camera/SurfaceManager;->forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 9
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p4

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final containsRecordingRequest(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/RequestWrapper;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 2
    iget p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final enableAutoFocusStateListener(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 4
    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    if-eqz p1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mAutoFocusStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mAutoFocusStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getCameraId(Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/fsm/RequestWrapper;->getCameraType(Z)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureRequestsForMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IILcom/motorola/camera/fsm/camera/FsmContext;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "II",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrPlusMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object p5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, v0, p4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4
    sget-object p4, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_HDR_PLUS_AE_COMPENSATION_ENABLE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p4, p1, p2, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-object v7, p5

    goto :goto_0

    .line 5
    :cond_0
    sget-object p4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 6
    iget-object p5, p5, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 7
    invoke-static {p5, p1, p2, p4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->containsTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Z

    move-result v1

    move-object v7, p4

    :goto_0
    move v6, v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->buildRequests(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->onComplete(Ljava/lang/Void;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Void;)V
    .locals 0

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

.method public processForChanges(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->isCameraSessionClosed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachines()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processForPartialChanges(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachines()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeTarget(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 3
    new-instance v0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {p0, v0, p1, p3}, Lcom/motorola/camera/fsm/camera/SurfaceManager;->forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    return-void
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x25

    .line 7
    :cond_0
    invoke-virtual {p2, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v10

    .line 9
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mRefCnt:I

    .line 10
    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {p2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v3, :cond_1

    .line 11
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 13
    iget-object v3, v3, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->enableAutoFocusStateListener(Z)V

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v11, 0x0

    if-ne v1, v3, :cond_4

    .line 15
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->containsRecordingRequest(Ljava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 16
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p3

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v2, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p3

    .line 18
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZZLjava/lang/String;ZLcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$1;)V

    .line 20
    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 21
    invoke-static {v10, p3, p0, v0, v1}, Lcom/motorola/camera/device/CameraService;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V

    goto/16 :goto_b

    .line 22
    :cond_3
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mHighSpeedCreateRequestsListener:Lcom/motorola/camera/device/callables/CallableListener;

    .line 23
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 24
    invoke-static {v10, p3, p0, v0}, Lcom/motorola/camera/device/CameraService;->createHighSpeedCaptureRequests(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    goto/16 :goto_b

    .line 25
    :cond_4
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoTypeMode(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 26
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->containsRecordingRequest(Ljava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 27
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p3

    .line 28
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 29
    iget-object v3, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 30
    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    .line 31
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    sget-object v3, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->ZOOMING:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    if-ne v2, v3, :cond_5

    move v2, p1

    goto :goto_1

    :cond_5
    move v2, v11

    :goto_1
    if-eqz v2, :cond_6

    .line 32
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 33
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 34
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "ZOOM_EXIT"

    .line 35
    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, p1

    goto :goto_2

    :cond_6
    move v2, v11

    :goto_2
    const/16 v3, 0xd

    if-ne v1, v3, :cond_8

    if-nez v2, :cond_8

    .line 36
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 37
    invoke-virtual {p3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 38
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 39
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 40
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 41
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 42
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    invoke-virtual {p0, v10, p3, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->removeTarget(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    move v3, v11

    :goto_3
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_7

    .line 45
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 46
    :cond_7
    invoke-virtual {p0, v10, p3, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->addTarget(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 47
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 48
    :cond_8
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 49
    :goto_4
    new-instance p3, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p3

    move-object v4, p0

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZZLjava/lang/String;ZLcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$1;)V

    .line 50
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 51
    invoke-static {v10, v2, p0, p3, v0}, Lcom/motorola/camera/device/CameraService;->setRepeatingBurst(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V

    goto :goto_5

    .line 52
    :cond_9
    invoke-virtual {v2, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p3

    .line 53
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZZLjava/lang/String;ZLcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$1;)V

    .line 54
    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 55
    invoke-static {v10, p3, p0, v0, v1}, Lcom/motorola/camera/device/CameraService;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V

    .line 56
    :goto_5
    sget-object p0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 57
    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 58
    sget-object p3, Lcom/motorola/camera/device/CameraStateManager$StreamStatus;->STARTED:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    .line 59
    invoke-virtual {p0, v10, p3}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$StreamStatus;)V

    goto/16 :goto_b

    .line 60
    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p3, 0x2

    .line 61
    iput p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mRefCnt:I

    .line 62
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object p3

    .line 63
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsHelper;->isAuxMasterCamera(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_b

    .line 64
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 65
    :cond_b
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->shouldStreamSlaveInLpm()Z

    move-result v0

    if-nez v0, :cond_f

    .line 66
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 67
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 68
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 69
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    .line 70
    :cond_c
    invoke-virtual {p0, p2, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->stopRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 71
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    const/4 v3, 0x1

    .line 72
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result v1

    if-nez v1, :cond_e

    .line 73
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    move v4, v11

    goto :goto_7

    :cond_e
    :goto_6
    move v4, p1

    .line 74
    :goto_7
    invoke-virtual {p0, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZZLjava/lang/String;ZLcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$1;)V

    const/4 v1, 0x6

    .line 75
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 76
    invoke-virtual {p0, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 78
    iget-object v3, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-static {v2, v1, p0, v0, v3}, Lcom/motorola/camera/device/CameraService;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestListener;Landroid/os/Handler;)V

    goto :goto_9

    .line 80
    :cond_f
    :goto_8
    invoke-virtual {p0, p2, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    :goto_9
    if-eqz p3, :cond_14

    .line 81
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_b

    .line 82
    :cond_10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 83
    instance-of v0, p3, Landroid/os/Bundle;

    if-eqz v0, :cond_12

    check-cast p3, Landroid/os/Bundle;

    const-string v0, "DUAL_CAPTURE_ZOOM"

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CAMERA_TYPE"

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/settings/CameraType;

    .line 86
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    if-ne p3, v0, :cond_11

    move p3, p1

    goto :goto_a

    :cond_11
    move p3, v11

    .line 87
    :goto_a
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setDualCaptureModeRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_b

    .line 88
    :cond_12
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setDualCaptureModeRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 89
    invoke-virtual {p0, p2, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setDualCaptureModeRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_b

    .line 90
    :cond_13
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 91
    :cond_14
    :goto_b
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p3, v11

    :cond_15
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 92
    iget-object v0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_16

    goto :goto_c

    .line 93
    :cond_16
    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 94
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrPlusMode()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 95
    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    goto :goto_d

    :cond_17
    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 96
    :goto_d
    invoke-static {v1, v10, v0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->containsTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Z

    move-result v0

    if-eqz v0, :cond_15

    move p3, p1

    goto :goto_c

    .line 97
    :cond_18
    new-instance p0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    .line 98
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-boolean p2, p0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez p2, :cond_19

    .line 100
    iget-object p2, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_19
    iput-boolean v11, p0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 102
    iget-object p2, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object p2, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v0, "SetFullFrameStreamingMode"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object p2, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v0, "\":{\"cameraId\":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object p2, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object p2, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object p1, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object p1, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string p2, ",\"mode\":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object p1, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    iget-object p1, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo p2, "}}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-static {p0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public sendComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mRefCnt:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mRefCnt:I

    if-gtz p2, :cond_0

    .line 2
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void
.end method

.method public setDualCaptureModeRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 12

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    if-eqz p2, :cond_1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 5
    :goto_1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    .line 6
    invoke-static {v1, v7}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 7
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getPreviewFullFrameSkipCount(Lcom/motorola/camera/settings/CameraType;)I

    move-result v8

    .line 10
    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getFullFrameExposureCompensation(Ljava/lang/String;)I

    move-result v10

    .line 11
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v4, v9

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZZLjava/lang/String;ZLcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$1;)V

    move-object v3, p0

    move-object v5, v7

    move v6, v8

    move v7, v10

    move-object v8, p1

    .line 12
    invoke-virtual/range {v3 .. v8}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCaptureRequestsForMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IILcom/motorola/camera/fsm/camera/FsmContext;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    .line 14
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 15
    invoke-static {v9, v0, p0, v11, v1}, Lcom/motorola/camera/device/CameraService;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V

    .line 16
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 17
    iget-object v0, v0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 18
    sget-object v1, Lcom/motorola/camera/device/CameraStateManager$StreamStatus;->STARTED:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    .line 19
    invoke-virtual {v0, v9, v1}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$StreamStatus;)V

    return-void
.end method

.method public setRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x1

    if-eqz p2, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v10

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/fsm/RequestWrapper;->getCameraType(Z)Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v11

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getPreviewFullFrameSkipCount(Lcom/motorola/camera/settings/CameraType;)I

    move-result v12

    .line 6
    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getFullFrameExposureCompensation(Ljava/lang/String;)I

    move-result v13

    .line 7
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    const/4 v2, 0x1

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result v0

    const/4 v15, 0x0

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v15

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v9

    :goto_2
    const/4 v6, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v4, v11

    move/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZZLjava/lang/String;ZLcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$1;)V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v10

    move v3, v12

    move v4, v13

    move-object/from16 v5, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCaptureRequestsForMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IILcom/motorola/camera/fsm/camera/FsmContext;)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v9, :cond_3

    .line 12
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    .line 13
    iget-object v1, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 14
    invoke-static {v11, v0, v7, v14, v1}, Lcom/motorola/camera/device/CameraService;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V

    goto :goto_3

    .line 15
    :cond_3
    iget-object v1, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 16
    invoke-static {v11, v0, v7, v14, v1}, Lcom/motorola/camera/device/CameraService;->setRepeatingBurst(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V

    .line 17
    :goto_3
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 18
    iget-object v0, v0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 19
    sget-object v1, Lcom/motorola/camera/device/CameraStateManager$StreamStatus;->STARTED:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    .line 20
    invoke-virtual {v0, v11, v1}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$StreamStatus;)V

    return-void
.end method

.method public shouldStreamSlaveInLpm()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE_SHOW_SLAVE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public stopRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object p2

    .line 2
    sget-object v0, Lcom/motorola/camera/device/CameraStateManager$StreamStatus;->STOPPED:Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    .line 3
    sget-object v1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 4
    iget-object v2, v1, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 5
    invoke-virtual {v2, p2}, Lcom/motorola/camera/device/CameraStateManager;->getPreviewStatus(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$StreamStatus;

    move-result-object v2

    if-ne v0, v2, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 7
    invoke-static {p2, v2, p0, p1}, Lcom/motorola/camera/device/CameraService;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    .line 8
    iget-object p0, v1, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 9
    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$StreamStatus;)V

    return-void
.end method
