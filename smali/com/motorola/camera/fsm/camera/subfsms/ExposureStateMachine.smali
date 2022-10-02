.class public Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "ExposureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;,
        Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine<",
        "Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;",
        ">;"
    }
.end annotation


# instance fields
.field public mExposureMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mLastUpdateFrameNumber:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mExposureMap:Ljava/util/TreeMap;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mLastUpdateFrameNumber:J

    return-void
.end method

.method public static setExposureCompensation(Lcom/motorola/camera/fsm/camera/FsmContext;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getExposureInfo(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mExposureMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized handleCaptureResult(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mExposureMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    invoke-direct {v1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    .line 3
    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mLastUpdateFrameNumber:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    .line 6
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mLastUpdateFrameNumber:J

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mExposureMap:Ljava/util/TreeMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;

    .line 12
    invoke-interface {p2, v1}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;->onExposureChange(Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;)V

    if-eqz v0, :cond_3

    .line 13
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mMode:Ljava/lang/Integer;

    .line 14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_5

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mMode:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mMode:Ljava/lang/Integer;

    .line 15
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 16
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getHardwareLevel()I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 17
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    invoke-interface {p2, v2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;->onExposureStateChange(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 18
    :cond_5
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mFlashState:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mFlashState:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 19
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    invoke-interface {p2, v2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;->onExposureFlashStateChange(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 20
    :cond_6
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mMode:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mMode:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 21
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mMode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;->onExposureModeChange(II)V

    .line 22
    :cond_7
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mLocked:Ljava/lang/Boolean;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mLocked:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p2, v2}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;->onExposureLockChange(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 24
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->handleCaptureResult(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;

    .line 5
    invoke-interface {p1}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;->onCaptureCompleted()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->handleCaptureResult(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public resetState()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mLastUpdateFrameNumber:J

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mExposureMap:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method
