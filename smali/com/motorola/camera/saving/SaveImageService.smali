.class public final Lcom/motorola/camera/saving/SaveImageService;
.super Ljava/lang/Object;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/saving/SaveImageService$SaveQueue;,
        Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;,
        Lcom/motorola/camera/saving/SaveImageService$ImageContainer;,
        Lcom/motorola/camera/saving/SaveImageService$LazyLoader;
    }
.end annotation


# instance fields
.field public mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

.field public mMaxAvailableMemory:J

.field public mMemoryAvailableListener:Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;

.field public volatile mProcessingHandler:Landroid/os/Handler;

.field public final mProcessingRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/CameraData;",
            ">;"
        }
    .end annotation
.end field

.field public final mSaveListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/saving/SaveListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

.field public volatile mServiceHandler:Landroid/os/Handler;

.field public mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    invoke-direct {v0}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

    .line 8
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "activity"

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 10
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 11
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x407c200000000000L    # 450.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    add-double/2addr v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x1

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mMaxAvailableMemory:J

    .line 12
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SaveImageService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 15
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    .line 16
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "processingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 18
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    .line 19
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 20
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 23
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->BG_SERVICE_PROCESSING:Lcom/motorola/camera/AppFeatures$Feature;

    .line 24
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 26
    new-instance v2, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/saving/SaveImageService;Landroid/os/ConditionVariable;)V

    .line 27
    iget-object v3, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 29
    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda11;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda11;

    .line 30
    iget-object v2, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/saving/SaveImageService$1;)V
    .locals 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance p1, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    invoke-direct {p1}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    .line 33
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/Set;

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService;->mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 37
    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

    .line 38
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "activity"

    .line 39
    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 40
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 41
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x407c200000000000L    # 450.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    add-double/2addr v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x1

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mMaxAvailableMemory:J

    .line 42
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "SaveImageService"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 44
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 45
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    .line 46
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "processingThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    .line 49
    sget-object p1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 50
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 51
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 53
    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->BG_SERVICE_PROCESSING:Lcom/motorola/camera/AppFeatures$Feature;

    .line 54
    iget-object p1, p1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 55
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 56
    new-instance v1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/saving/SaveImageService;Landroid/os/ConditionVariable;)V

    .line 57
    iget-object v2, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    .line 59
    :cond_0
    sget-object p1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda11;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda11;

    .line 60
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/Set;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static canSave(IILcom/motorola/camera/saving/MemoryListener;)Z
    .locals 5

    .line 1
    sget-object p2, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    iget-object v0, p2, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p2, Lcom/motorola/camera/saving/SaveImageService;->mMaxAvailableMemory:J

    iget-object p2, p2, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    .line 4
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-wide v3, p2, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->mMemoryUsed:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p2

    sub-long/2addr v1, v3

    int-to-long v3, p0

    int-to-long p0, p1

    mul-long/2addr v3, p0

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit p2

    throw p0

    :catchall_1
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static commitKpiRecord(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 2
    check-cast p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v1, "CAPTURE_TIMESTAMP"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/saving/CaptureHolder;

    .line 6
    iget-wide v6, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p0, :cond_1

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p0, :cond_1

    .line 10
    iget-wide v6, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    goto :goto_0

    :cond_0
    move-wide v6, v2

    :cond_1
    :goto_0
    cmp-long p0, v0, v2

    if-eqz p0, :cond_4

    cmp-long p0, v6, v2

    if-eqz p0, :cond_4

    .line 11
    sget-object p0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 12
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 15
    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->ACCURATE_SHUTTER_LAG:Lcom/motorola/camera/AppFeatures$Feature;

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {p0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 17
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_ALWAYS_LOG_SHUTTER_LAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 18
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 20
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_4

    .line 21
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHUTTER_LAG_O:Lcom/motorola/camera/CameraKpi$KPI;

    sub-long/2addr v6, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v6, v0

    .line 23
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 24
    monitor-enter p0

    const/4 v1, -0x1

    .line 25
    :try_start_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public static correctExifInfo(Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy:MM:dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "kk/1,mm/1,ss/1"

    invoke-direct {v2, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v3, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 4
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 7
    :try_start_0
    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/FileDescriptor;)V

    const-string p0, "DateTime"

    .line 8
    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p0, "DateTimeDigitized"

    .line 11
    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {v0, p0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DateTimeOriginal"

    .line 14
    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {v0, p0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setLocationAttributes(Landroid/location/Location;)V

    .line 18
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception when correctExifInfo "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SaveImageService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static createDng(Ljava/nio/ByteBuffer;Ljava/io/FileOutputStream;Landroid/hardware/camera2/CaptureResult;Landroid/location/Location;ILjava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p5}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p5

    .line 2
    new-instance v6, Landroid/hardware/camera2/DngCreator;

    invoke-direct {v6, p5, p2}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    if-eqz p3, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v6, p3}, Landroid/hardware/camera2/DngCreator;->setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;

    .line 4
    :cond_0
    invoke-virtual {v6, p4}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    .line 5
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, p6, p7}, Landroid/util/Size;-><init>(II)V

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p0

    .line 6
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v6}, Landroid/hardware/camera2/DngCreator;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    invoke-virtual {v6}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_6

    :cond_1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-static {v1, v2, p1}, Lcom/motorola/camera/saving/XmpUtil;->writeXmpMeta(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;Lcom/motorola/camera/saving/XmpData;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 7
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    .line 8
    :cond_2
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    move-object p1, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    :goto_2
    move-object p1, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object p1, v0

    :goto_3
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 9
    invoke-static {p1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 10
    throw p0

    :catch_2
    move-object p1, v0

    .line 11
    :goto_4
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, p1

    .line 12
    :goto_5
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_3
    :goto_6
    return-object p0
.end method

.method public static finishVideoFile(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 2
    :try_start_0
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SaveImageService"

    const-string v3, "finishVideoFile failed"

    .line 3
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 5
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/storage/MediaFile;)V

    .line 9
    iget-object v0, v1, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->notifyVideoSaveComplete(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V

    return-void
.end method

.method public static getProcessingCameraData(J)Lcom/motorola/camera/CameraData;
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/CameraData;

    .line 4
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-nez v3, :cond_0

    .line 5
    monitor-exit v1

    return-object v2

    .line 6
    :cond_1
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/CameraData;

    return-object p0
.end method

.method public static hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static notifyFailedBgShot(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 2
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    .line 6
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "error_message"

    const-string v1, "Failed to create file"

    .line 7
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "task_id"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 10
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 12
    new-instance p1, Lcom/motorola/camera/CameraData;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;I)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    return-void
.end method

.method public static notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;-><init>(ZLcom/motorola/camera/CameraData;)V

    .line 3
    iget-object p0, v0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static notifyVideoSaveComplete(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 2
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    .line 5
    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 7
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-string v5, "SEQ_ID"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    iget-wide v5, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    const-string v3, "DATE_TAKEN"

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9
    invoke-interface {v0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-interface {v0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v0

    .line 11
    invoke-static {v0, v5}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 12
    iget v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    sget-object v2, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    goto :goto_2

    .line 14
    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast v0, Lcom/motorola/camera/VideoFormat;

    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    :goto_2
    iget v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    .line 17
    invoke-static {v0, v2}, Lcom/motorola/camera/utility/SizeUtility;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    .line 18
    new-instance v2, Lcom/motorola/camera/CameraData;

    iget-wide v7, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v11

    .line 20
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v12

    iget v13, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    const/4 v14, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    .line 21
    invoke-static {v2, v1}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    return-void
.end method

.method public static removeBgRecord(J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/saving/SaveImageService;JI)V

    .line 3
    iget-object p0, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object p1, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    new-instance v1, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 3
    iget-object p0, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/Set;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static saveCinemagraph(JZLcom/motorola/camera/saving/FileName;Ljava/io/File;IIILcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    new-instance v11, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;

    move-object v1, v11

    move-object v2, p3

    move-object/from16 v3, p4

    move v4, p2

    move-wide v5, p0

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/saving/FileName;Ljava/io/File;ZJIIILcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;)V

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static saveDocument(Landroid/app/Activity;Lcom/motorola/camera/editor/DocJpegHolder;Lcom/motorola/camera/saving/SaveListener;I)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v3

    .line 3
    new-instance v7, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    move-object v1, v7

    move-object v2, p1

    move-object v4, p0

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/editor/DocJpegHolder;ZLandroid/app/Activity;ILcom/motorola/camera/saving/SaveListener;)V

    .line 4
    iget-object p0, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object p1, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->commitKpiRecord(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/saving/SaveImageService$1;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->offer(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    .line 4
    new-instance p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/saving/SaveImageService;)V

    .line 5
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static saveImageBeforeProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosProcessingSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v0

    const-string v1, "SEQ_ID"

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/FormatHolder;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-wide v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    const-string v4, "DATE_TAKEN"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "PROCESSING_URI"

    .line 9
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    new-instance v2, Lcom/motorola/camera/CameraData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v1, v3, v0}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 11
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 12
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    invoke-direct {v1, p0, v4}, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/saving/SaveImageService$1;)V

    .line 14
    iget-object p0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 16
    check-cast p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 17
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    new-instance v3, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1, p0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 18
    iget-object p0, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_1
    return-void
.end method

.method public static stripAppSegments([B)[B
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-static {v1, v2}, Lcom/motorola/camera/saving/XmpUtil;->stripAppSegments(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 6
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    .line 7
    :cond_0
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-object v2, v0

    :catch_1
    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v2, v0

    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 8
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 9
    throw p0

    :catch_2
    move-object v2, v0

    .line 10
    :goto_2
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 11
    :goto_3
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0
.end method

.method public static writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z
    .locals 13

    .line 1
    iget-object v0, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v2, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    .line 7
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/CaptureHolder;

    .line 8
    iget-object v4, v2, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 10
    :cond_0
    iget v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    :goto_0
    iput v4, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    .line 11
    iget-object v5, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 12
    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mImageDataHolder:Lcom/motorola/camera/saving/ImageDataHolder;

    if-nez v5, :cond_1

    move v10, v3

    goto :goto_1

    .line 13
    :cond_1
    iget v6, v5, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    move v10, v6

    :goto_1
    if-nez v5, :cond_2

    move v11, v3

    goto :goto_2

    .line 14
    :cond_2
    iget v5, v5, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    move v11, v5

    .line 15
    :goto_2
    iput v10, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    .line 16
    iput v11, p2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 17
    iget-object v6, v2, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    .line 18
    invoke-static {v4}, Lcom/motorola/camera/utility/ExifUtility;->toExifOrientation(I)I

    move-result v8

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    move-object v4, p0

    move-object v5, v12

    .line 19
    invoke-static/range {v4 .. v11}, Lcom/motorola/camera/saving/SaveImageService;->createDng(Ljava/nio/ByteBuffer;Ljava/io/FileOutputStream;Landroid/hardware/camera2/CaptureResult;Landroid/location/Location;ILjava/lang/String;II)V

    goto :goto_3

    .line 20
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v12, p0}, Ljava/io/FileOutputStream;->write([B)V

    :goto_3
    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 22
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 23
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 24
    :cond_4
    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 25
    invoke-static {v12}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 26
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    move-object v2, v12

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    .line 27
    :goto_4
    :try_start_2
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 28
    instance-of p1, p0, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_5

    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "No space left"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "SaveImageService"

    const-string/jumbo p2, "writeToFile failed: Storage full"

    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 32
    sget-object p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda2;

    .line 33
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    :cond_5
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 35
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return v3

    :goto_5
    move-object v12, v2

    .line 36
    :goto_6
    invoke-static {v12}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 37
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    .line 38
    throw p0
.end method


# virtual methods
.method public final addWatermarkToImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;ZZ)V
    .locals 25

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v1

    const-string v2, "SaveImageService"

    if-eqz v1, :cond_0

    const-string v0, "Is RAW data, not support watermark!"

    .line 2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Jpeg data is null, won\'t add watermark!"

    .line 4
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    sget v1, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    const-string v1, ""

    const-string v3, "WatermarkEditorService"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6
    :try_start_0
    iget-object v6, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 7
    iget-object v6, v6, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 8
    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 9
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    if-eqz v6, :cond_2

    :try_start_1
    const-string v7, "front"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    :try_start_2
    const-string v7, "rear"

    .line 10
    :goto_0
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {v8}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v8

    .line 12
    invoke-static {v8}, Lcom/motorola/camera/service/WatermarkEditorService;->getLayoutDirection(Z)Ljava/lang/String;

    move-result-object v9

    .line 13
    new-instance v10, Landroid/util/Size;

    iget v11, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iget v12, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    invoke-direct {v10, v11, v12}, Landroid/util/Size;-><init>(II)V

    .line 14
    invoke-static {v10}, Lcom/motorola/camera/service/WatermarkEditorService;->convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v10

    .line 15
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v12

    .line 16
    invoke-static {v9, v7, v11, v12}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 17
    iget v9, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    .line 18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 19
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 20
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    if-eqz v12, :cond_3

    .line 21
    :try_start_3
    invoke-static {v6, v10}, Lcom/motorola/camera/service/WatermarkEditorService;->generateWatermarkOnDemand(ZLandroid/util/Size;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 22
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :cond_3
    :try_start_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    if-eqz v1, :cond_4

    .line 24
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watermark size is unknown! key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 25
    :cond_4
    :try_start_6
    invoke-static {v11}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 27
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 28
    invoke-static {v7}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 29
    new-instance v10, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileFolder()Ljava/io/File;

    move-result-object v11

    invoke-direct {v10, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    if-nez v11, :cond_5

    .line 31
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watermark file doesn\'t exist! file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :goto_1
    move-object v1, v5

    move-object v2, v1

    goto/16 :goto_22

    :goto_2
    move v10, v4

    move-object v1, v5

    move-object v9, v1

    goto/16 :goto_1f

    :cond_5
    const/high16 v7, 0x3f800000    # 1.0f

    .line 32
    :try_start_8
    invoke-static {v6, v1, v10, v4, v7}, Lcom/motorola/camera/service/WatermarkEditorService;->loadWatermarkFileToBitmap(IILjava/io/File;IF)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_6

    :goto_3
    move v0, v4

    move-object v1, v5

    move-object v11, v1

    goto/16 :goto_19

    .line 33
    :cond_6
    sget-object v10, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->sLock:Ljava/lang/Object;

    .line 34
    sget-object v10, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;

    .line 35
    invoke-virtual {v10, v9, v6}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 36
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 37
    iput-boolean v4, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 38
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    .line 39
    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 40
    iget-object v11, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v11}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    .line 41
    array-length v12, v11

    invoke-static {v11, v4, v12, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    if-nez v9, :cond_7

    :try_start_9
    const-string v0, "Failed to decode jpeg data, whose data length is %d, will not add watermark!"

    new-array v1, v10, [Ljava/lang/Object;

    .line 42
    array-length v6, v11

    .line 43
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    .line 44
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move v6, v4

    move-object v11, v5

    goto/16 :goto_18

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_7
    if-eqz p3, :cond_d

    .line 45
    :try_start_a
    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 46
    invoke-virtual {v11}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060396

    .line 47
    invoke-virtual {v11, v12, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    int-to-float v1, v1

    .line 48
    sget v12, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_X:F

    mul-float/2addr v12, v1

    float-to-int v12, v12

    .line 49
    sget v13, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_Y:F

    mul-float/2addr v13, v1

    float-to-int v13, v13

    .line 50
    sget v14, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_TEXT:F

    mul-float/2addr v1, v14

    float-to-int v1, v1

    const/16 v14, 0x5a

    .line 51
    iget v15, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eq v14, v15, :cond_9

    const/16 v14, 0x10e

    if-ne v14, v15, :cond_8

    goto :goto_6

    .line 52
    :cond_8
    :try_start_b
    iget v14, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_7

    :goto_4
    move-object v1, v5

    goto/16 :goto_21

    :goto_5
    move v10, v4

    move-object v1, v5

    goto/16 :goto_1f

    :cond_9
    :goto_6
    :try_start_c
    iget v14, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 53
    :goto_7
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 54
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 55
    invoke-static {v14, v15, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 56
    :try_start_d
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 57
    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v15, 0xff

    .line 59
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 60
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v15, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 61
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v15, 0x0

    if-eqz p2, :cond_b

    if-eqz v8, :cond_a

    .line 62
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v10, v16, v17

    int-to-float v10, v10

    invoke-virtual {v7, v6, v10, v15, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 63
    :cond_a
    invoke-virtual {v7, v6, v15, v15, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_a

    :goto_8
    move-object/from16 p3, v5

    goto :goto_c

    :goto_9
    move-object/from16 p3, v5

    goto :goto_e

    .line 64
    :cond_b
    :goto_a
    iget-object v6, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 65
    iget-object v6, v6, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 p3, v5

    :try_start_e
    iget-wide v4, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 66
    invoke-static {v4, v5}, Lcom/motorola/camera/service/WatermarkEditorService;->getTimestampString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 67
    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v5, 0x1

    .line 68
    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 69
    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 70
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 72
    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    int-to-float v1, v1

    .line 73
    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    invoke-virtual {v14, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 76
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v14, v4, v6, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 77
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v1

    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v5

    sub-int/2addr v1, v12

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v13

    if-eqz v8, :cond_c

    goto :goto_b

    :cond_c
    move v12, v1

    :goto_b
    int-to-float v1, v12

    int-to-float v5, v5

    .line 80
    invoke-virtual {v7, v4, v1, v5, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object/from16 v5, p3

    move-object v6, v5

    goto :goto_10

    :catchall_2
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_e

    :catchall_3
    move-exception v0

    goto :goto_8

    :goto_c
    move-object/from16 v5, p3

    :goto_d
    const/4 v10, 0x0

    goto/16 :goto_1c

    :catch_3
    move-exception v0

    goto :goto_9

    :goto_e
    move-object/from16 v5, p3

    :goto_f
    const/4 v10, 0x0

    goto/16 :goto_1e

    :catchall_4
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_1b

    :catch_4
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_1d

    :cond_d
    const/4 v5, 0x0

    .line 81
    :goto_10
    :try_start_f
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 82
    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    .line 83
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnailSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 84
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v4, v7

    iget v11, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v4, v11

    .line 85
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    iget v7, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    int-to-float v7, v7

    div-float/2addr v1, v7

    .line 86
    iget-object v7, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 87
    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    .line 88
    invoke-virtual {v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnail()[B

    move-result-object v7

    .line 89
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    const/4 v10, 0x0

    .line 90
    :try_start_10
    iput-boolean v10, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 91
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v12, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x1

    .line 92
    iput-boolean v12, v11, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 93
    array-length v12, v7

    invoke-static {v7, v10, v12, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    if-eqz v7, :cond_13

    .line 94
    :try_start_11
    iget v11, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    if-eqz v11, :cond_e

    int-to-float v11, v11

    .line 95
    invoke-static {v7, v11}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 96
    :cond_e
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    const/4 v10, 0x0

    :try_start_12
    invoke-direct {v12, v10, v10, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 98
    :try_start_13
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v4

    float-to-int v4, v13

    .line 99
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v1

    float-to-int v1, v13

    .line 100
    new-instance v13, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v14, v1

    .line 101
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    const/4 v10, 0x0

    :try_start_14
    invoke-direct {v13, v10, v14, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v8, :cond_f

    .line 102
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v4

    iput v1, v13, Landroid/graphics/Rect;->left:I

    .line 103
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v13, Landroid/graphics/Rect;->right:I

    .line 104
    :cond_f
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    .line 105
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 107
    invoke-virtual {v11, v6, v12, v13, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 108
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v11

    .line 110
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7, v12, v11, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 111
    iget v12, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    if-eqz v12, :cond_10

    neg-int v12, v12

    int-to-float v12, v12

    .line 112
    invoke-static {v7, v12}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 113
    :cond_10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 114
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7, v12, v11, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 115
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    const/high16 v13, 0x10000

    if-lt v12, v13, :cond_11

    .line 116
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 117
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v7, v12, v11, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 118
    :cond_11
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    if-ge v11, v13, :cond_12

    .line 119
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_11

    :cond_12
    const/4 v1, 0x0

    .line 120
    :goto_11
    invoke-static {v7}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_13

    :cond_13
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-string v1, "The thumbnail image is invalid or null!"

    .line 121
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_14
    const/4 v4, 0x1

    const/4 v10, 0x0

    :goto_12
    const/4 v1, 0x0

    .line 122
    :goto_13
    iget v7, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    if-eqz v7, :cond_16

    .line 123
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    neg-int v7, v7

    int-to-float v7, v7

    .line 124
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    .line 125
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    .line 126
    invoke-virtual {v11, v7, v12, v14}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/high16 v7, 0x3f800000    # 1.0f

    .line 127
    invoke-virtual {v11, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 128
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    const/16 v24, 0x1

    move-object/from16 v18, v6

    move-object/from16 v23, v11

    .line 129
    invoke-static/range {v18 .. v24}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    if-eq v6, v7, :cond_15

    move v6, v4

    goto :goto_14

    :cond_15
    move v6, v10

    :goto_14
    move-object v11, v7

    goto :goto_15

    :cond_16
    move-object v7, v6

    move v6, v10

    const/4 v11, 0x0

    .line 130
    :goto_15
    :try_start_15
    iget v12, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    invoke-static {v9, v7, v12, v8}, Lcom/motorola/camera/mcf/MotUtil;->addWatermarkToBitmap(Ljava/lang/Object;Ljava/lang/Object;IZ)Z

    move-result v7
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-nez v7, :cond_17

    goto :goto_17

    .line 131
    :cond_17
    :try_start_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v7

    .line 132
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 133
    :try_start_17
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v9, v12, v7, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 134
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 135
    :try_start_18
    invoke-static {v8}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 136
    :try_start_19
    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v8, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 137
    iget-object v7, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 138
    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    .line 139
    invoke-virtual {v8, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    if-eqz v1, :cond_18

    .line 140
    invoke-virtual {v8, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)Z

    .line 141
    :cond_18
    invoke-virtual {v8}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 142
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 143
    iput-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBuffer:Ljava/nio/ByteBuffer;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    goto :goto_18

    :catch_5
    move-exception v0

    .line 144
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    goto :goto_17

    :catch_6
    move-exception v0

    goto :goto_16

    :catchall_5
    move-exception v0

    const/4 v8, 0x0

    goto :goto_1a

    :catch_7
    move-exception v0

    const/4 v8, 0x0

    .line 145
    :goto_16
    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 146
    :try_start_1c
    invoke-static {v8}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    :goto_17
    move v4, v10

    :goto_18
    move v0, v4

    move-object v1, v5

    move v4, v6

    move-object v5, v9

    .line 147
    :goto_19
    invoke-static {v5}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    invoke-static {v1}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v4, :cond_19

    .line 149
    invoke-static {v11}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_19
    move v4, v0

    goto :goto_20

    :catchall_6
    move-exception v0

    .line 150
    :goto_1a
    :try_start_1d
    invoke-static {v8}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 151
    throw v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :catchall_7
    move-exception v0

    move-object v1, v5

    move v4, v6

    move-object v5, v11

    goto :goto_21

    :catch_8
    move-exception v0

    move-object v1, v5

    move v4, v6

    move-object v5, v11

    goto :goto_1f

    :catchall_8
    move-exception v0

    goto :goto_1c

    :catch_9
    move-exception v0

    goto :goto_1e

    :catchall_9
    move-exception v0

    goto/16 :goto_d

    :catch_a
    move-exception v0

    goto/16 :goto_f

    :catchall_a
    move-exception v0

    move v10, v4

    const/4 v9, 0x0

    :goto_1b
    const/4 v5, 0x0

    :goto_1c
    move-object v1, v5

    move-object v5, v9

    move v4, v10

    const/4 v2, 0x0

    goto :goto_22

    :catch_b
    move-exception v0

    move v10, v4

    const/4 v9, 0x0

    :goto_1d
    const/4 v5, 0x0

    :goto_1e
    move-object v1, v5

    move v4, v10

    const/4 v5, 0x0

    .line 152
    :goto_1f
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    .line 153
    invoke-static {v9}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    invoke-static {v1}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v4, :cond_1a

    .line 155
    invoke-static {v5}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_1a
    move v4, v10

    :goto_20
    if-nez v4, :cond_1b

    const-string v0, "Add watermark failed!"

    .line 156
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void

    :catchall_b
    move-exception v0

    :goto_21
    move-object v2, v5

    move-object v5, v9

    .line 157
    :goto_22
    invoke-static {v5}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    invoke-static {v1}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v4, :cond_1c

    .line 159
    invoke-static {v2}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    :cond_1c
    throw v0
.end method

.method public final embedXmpData(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 20

    move-object/from16 v1, p1

    .line 13
    sget-object v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->DEPTH_RENDER_ORIGINAL:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 14
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 15
    check-cast v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    const/4 v3, 0x1

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "SaveImageService"

    if-eqz v0, :cond_6

    .line 17
    sget-object v6, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 18
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 19
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v6, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 21
    sget-object v7, Lcom/motorola/camera/AppFeatures$Feature;->DYNAMIC_DEPTH_XMP:Lcom/motorola/camera/AppFeatures$Feature;

    .line 22
    iget-object v6, v6, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 24
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_6

    const-string v3, "Orientation"

    .line 25
    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v7, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/mcf/McfAuxFrameData;

    .line 26
    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    .line 27
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 28
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v8, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    .line 29
    invoke-virtual {v0, v8}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    .line 30
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    if-eqz v7, :cond_1

    .line 31
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 32
    :goto_1
    invoke-virtual {v6}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getData()[B

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    .line 33
    :cond_2
    :try_start_0
    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v9, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 34
    invoke-virtual {v9, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 35
    new-instance v10, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v10, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 36
    new-instance v6, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 37
    invoke-virtual {v10, v3, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v6, v3, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v10}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v3

    .line 40
    invoke-virtual {v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    invoke-static {v8, v6, v3, v0}, Lcom/motorola/camera/mcf/MotDynamicDepthUtil;->encodeDepthPhoto([B[B[BLcom/motorola/camera/mcf/McfImagingModelAuxData;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 42
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v3, "encodeDynamicDepthPhoto Failed to write exif orientation: "

    .line 43
    invoke-static {v3}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 44
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 46
    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing depth photo parameters depthJpeg="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " originalJpeg="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " imagingModel="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "Failed to encode dynamic depth photo, using gdepth instead!"

    .line 47
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_6
    iget-object v3, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    .line 49
    iget-object v6, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 50
    iget-object v0, v6, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 51
    iget-object v7, v6, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 52
    check-cast v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 53
    iget-object v8, v6, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mAlternateShotData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;

    const-string v9, "BurstPrimary"

    const-string v10, "BurstID"

    const-string v11, "SpecialTypeID"

    const-string v12, "http://ns.google.com/photos/1.0/camera/"

    if-eqz v8, :cond_24

    if-eqz v0, :cond_24

    .line 54
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 55
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Composition:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 56
    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 57
    iget-object v13, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v8, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 58
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 59
    iget-object v14, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v14, :cond_7

    .line 60
    sget-object v14, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 61
    new-instance v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 62
    iput-object v14, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 63
    :cond_7
    iget-object v14, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 64
    :try_start_1
    new-instance v15, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v15}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 p0, v4

    const/16 v4, 0x10

    move-object/from16 v16, v6

    const/4 v6, 0x1

    .line 65
    :try_start_2
    invoke-virtual {v15, v4, v6}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    if-eqz v0, :cond_8

    .line 66
    move-object v4, v14

    check-cast v4, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v4, v12, v11, v0, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_8
    if-eqz v13, :cond_9

    .line 67
    move-object v0, v14

    check-cast v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0, v12, v10, v13, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_9
    if-eqz v8, :cond_25

    .line 68
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    check-cast v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v14, v12, v9, v0, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_b

    :cond_b
    move-object/from16 p0, v4

    move-object/from16 v16, v6

    .line 70
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 71
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->BestShotType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 72
    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 73
    iget-object v4, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v6, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 74
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 75
    iget-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v8, :cond_c

    .line 76
    sget-object v8, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 77
    new-instance v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 78
    iput-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 79
    :cond_c
    iget-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 80
    :try_start_3
    new-instance v13, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v13}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v14, 0x10

    const/4 v15, 0x1

    .line 81
    invoke-virtual {v13, v14, v15}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    if-eqz v0, :cond_d

    .line 82
    move-object v14, v8

    check-cast v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v14, v12, v11, v0, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_d
    if-eqz v4, :cond_e

    .line 83
    move-object v0, v8

    check-cast v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0, v12, v10, v4, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_e
    if-eqz v6, :cond_25

    .line 84
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    :goto_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v8, v12, v9, v0, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_3
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_b

    .line 86
    :cond_10
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 87
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->LowLightAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 88
    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 89
    iget-object v4, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v6, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 90
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 91
    iget-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v8, :cond_11

    .line 92
    sget-object v8, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 93
    new-instance v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 94
    iput-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 95
    :cond_11
    iget-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 96
    :try_start_4
    new-instance v13, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v13}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v14, 0x10

    const/4 v15, 0x1

    .line 97
    invoke-virtual {v13, v14, v15}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    if-eqz v0, :cond_12

    .line 98
    move-object v14, v8

    check-cast v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v14, v12, v11, v0, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_12
    if-eqz v4, :cond_13

    .line 99
    move-object v0, v8

    check-cast v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0, v12, v10, v4, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_13
    if-eqz v6, :cond_25

    .line 100
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v8, v12, v9, v0, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_4
    .catch Lcom/adobe/xmp/XMPException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_b

    .line 102
    :cond_15
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 103
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->ImageStabilizationAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 104
    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 105
    iget-object v4, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v6, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 106
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 107
    iget-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v8, :cond_16

    .line 108
    sget-object v8, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 109
    new-instance v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 110
    iput-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 111
    :cond_16
    iget-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 112
    :try_start_5
    new-instance v13, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v13}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v14, 0x10

    const/4 v15, 0x1

    .line 113
    invoke-virtual {v13, v14, v15}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    if-eqz v0, :cond_17

    .line 114
    move-object v14, v8

    check-cast v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v14, v12, v11, v0, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_17
    if-eqz v4, :cond_18

    .line 115
    move-object v0, v8

    check-cast v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0, v12, v10, v4, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_18
    if-eqz v6, :cond_25

    .line 116
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_8

    :cond_19
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v8, v12, v9, v0, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_5
    .catch Lcom/adobe/xmp/XMPException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_b

    .line 118
    :cond_1a
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 119
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->CudAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 120
    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 121
    iget-object v4, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v6, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 122
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 123
    iget-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v8, :cond_1b

    .line 124
    sget-object v8, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 125
    new-instance v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 126
    iput-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 127
    :cond_1b
    iget-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 128
    :try_start_6
    new-instance v13, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v13}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v14, 0x10

    const/4 v15, 0x1

    .line 129
    invoke-virtual {v13, v14, v15}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    if-eqz v0, :cond_1c

    .line 130
    move-object v14, v8

    check-cast v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v14, v12, v11, v0, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_1c
    if-eqz v4, :cond_1d

    .line 131
    move-object v0, v8

    check-cast v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0, v12, v10, v4, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_1d
    if-eqz v6, :cond_25

    .line 132
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_9

    :cond_1e
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v8, v12, v9, v0, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_6
    .catch Lcom/adobe/xmp/XMPException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_b

    .line 134
    :cond_1f
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 135
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->OriginalType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 136
    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 137
    iget-object v4, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    iget-boolean v6, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 138
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 139
    iget-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v8, :cond_20

    .line 140
    sget-object v8, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 141
    new-instance v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 142
    iput-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 143
    :cond_20
    iget-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 144
    :try_start_7
    new-instance v13, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v13}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v14, 0x10

    const/4 v15, 0x1

    .line 145
    invoke-virtual {v13, v14, v15}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    if-eqz v0, :cond_21

    .line 146
    move-object v14, v8

    check-cast v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v14, v12, v11, v0, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_21
    if-eqz v4, :cond_22

    .line 147
    move-object v0, v8

    check-cast v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0, v12, v10, v4, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_22
    if-eqz v6, :cond_25

    .line 148
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_a

    :cond_23
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v8, v12, v9, v0, v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_7
    .catch Lcom/adobe/xmp/XMPException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_b

    :catch_1
    :cond_24
    move-object/from16 p0, v4

    move-object/from16 v16, v6

    .line 150
    :catch_2
    :cond_25
    :goto_b
    iget-object v0, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v4, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v0, v4, :cond_2a

    iget-boolean v0, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-nez v0, :cond_2a

    .line 151
    iget-object v0, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "UUID"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v4, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v4, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_26

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_26
    const/4 v4, 0x0

    .line 153
    :goto_c
    iget-object v6, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v6, :cond_27

    .line 154
    sget-object v6, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 155
    new-instance v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 156
    iput-object v6, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 157
    :cond_27
    iget-object v6, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 158
    :try_start_8
    new-instance v8, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v8}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v13, 0x10

    const/4 v14, 0x1

    .line 159
    invoke-virtual {v8, v13, v14}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    if-eqz v0, :cond_28

    .line 160
    move-object v13, v6

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v13, v12, v10, v0, v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_28
    if-eqz v4, :cond_2a

    .line 161
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    goto :goto_d

    :cond_29
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v6, v12, v9, v0, v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_8
    .catch Lcom/adobe/xmp/XMPException; {:try_start_8 .. :try_end_8} :catch_3

    .line 163
    :catch_3
    :cond_2a
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 164
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 165
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v4, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    if-ne v0, v4, :cond_33

    .line 166
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 167
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 168
    iget-object v6, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 169
    iget-object v6, v6, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 170
    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "PANO_IMAGE_HEIGHT"

    .line 171
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 172
    iget-object v8, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 173
    iget-object v8, v8, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 174
    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "PANO_IMAGE_WIDTH"

    .line 175
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 176
    iget-object v9, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 177
    iget-object v9, v9, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 178
    iget v10, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    .line 179
    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v13, "PANO_MAX_OUTPUT_SIZE"

    .line 180
    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v9

    if-nez v9, :cond_2b

    goto/16 :goto_10

    :cond_2b
    if-eqz v10, :cond_2e

    const/16 v13, 0xb4

    if-ne v10, v13, :cond_2c

    goto :goto_e

    :cond_2c
    if-le v8, v0, :cond_2d

    .line 181
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_f

    :cond_2d
    if-le v6, v4, :cond_33

    .line 182
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_f

    :cond_2e
    :goto_e
    if-le v8, v4, :cond_2f

    .line 183
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_f

    :cond_2f
    if-le v6, v0, :cond_33

    .line 184
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_f
    mul-int/lit8 v4, v0, 0x2

    sub-int v9, v4, v8

    .line 185
    div-int/lit8 v9, v9, 0x2

    sub-int v10, v0, v6

    .line 186
    div-int/lit8 v10, v10, 0x2

    if-gez v10, :cond_30

    mul-int/lit8 v4, v6, 0x2

    const/4 v10, 0x0

    move v0, v6

    :cond_30
    if-gez v9, :cond_31

    .line 187
    div-int/lit8 v0, v8, 0x2

    const/4 v9, 0x0

    move v4, v8

    .line 188
    :cond_31
    iget-object v13, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "http://ns.google.com/photos/1.0/panorama/"

    .line 189
    iget-object v15, v13, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v15, :cond_32

    sget-object v15, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 190
    new-instance v15, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 191
    iput-object v15, v13, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 192
    :cond_32
    iget-object v13, v13, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_9
    const-string v15, "CroppedAreaImageHeightPixels"

    .line 193
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_9
    .catch Lcom/adobe/xmp/XMPException; {:try_start_9 .. :try_end_9} :catch_4

    move-object/from16 v17, v11

    :try_start_a
    move-object v11, v13

    check-cast v11, Lcom/adobe/xmp/impl/XMPMetaImpl;
    :try_end_a
    .catch Lcom/adobe/xmp/XMPException; {:try_start_a .. :try_end_a} :catch_5

    move-object/from16 v18, v12

    const/4 v12, 0x0

    .line 194
    :try_start_b
    invoke-virtual {v11, v14, v15, v6, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "CroppedAreaImageWidthPixels"

    .line 195
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v11, v13

    check-cast v11, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 196
    invoke-virtual {v11, v14, v6, v8, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "CroppedAreaLeftPixels"

    .line 197
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v13

    check-cast v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 198
    invoke-virtual {v9, v14, v6, v8, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "CroppedAreaTopPixels"

    .line 199
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v13

    check-cast v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 200
    invoke-virtual {v9, v14, v6, v8, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "FullPanoHeightPixels"

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v8, v13

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 202
    invoke-virtual {v8, v14, v6, v0, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "FullPanoWidthPixels"

    .line 203
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v6, v13

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 204
    invoke-virtual {v6, v14, v0, v4, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "ProjectionType"

    const-string v4, "equirectangular"

    .line 205
    move-object v6, v13

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 206
    invoke-virtual {v6, v14, v0, v4, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "UsePanoramaViewer"

    .line 207
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 208
    invoke-virtual {v13, v14, v0, v4, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_b
    .catch Lcom/adobe/xmp/XMPException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_11

    :catch_4
    :cond_33
    :goto_10
    move-object/from16 v17, v11

    :catch_5
    move-object/from16 v18, v12

    .line 209
    :catch_6
    :goto_11
    iget-object v0, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mViewPoint:Lcom/motorola/camera/saving/ViewPoint;

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_12

    :cond_34
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_35

    .line 210
    :try_start_c
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v4, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 211
    invoke-virtual {v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 212
    invoke-static {v0}, Lcom/motorola/camera/saving/XmpUtil;->extractXmpMetadata(Ljava/io/InputStream;)Lcom/motorola/camera/saving/XmpData;

    move-result-object v4

    .line 213
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v4, :cond_35

    .line 214
    iget-object v0, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-eqz v0, :cond_35

    .line 215
    invoke-virtual {v3, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/adobe/xmp/XMPMeta;)Lcom/motorola/camera/saving/XmpData;

    .line 216
    iget-object v0, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mViewPoint:Lcom/motorola/camera/saving/ViewPoint;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/ViewPoint;)Lcom/motorola/camera/saving/XmpData;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_13

    :catch_7
    move-exception v0

    const-string v4, "Error adding 360 InitialView"

    .line 217
    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    :cond_35
    :goto_13
    invoke-static {v7}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 219
    iget-object v0, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v4, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfAuxFrameData;

    .line 220
    iget-object v4, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v5, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/mcf/McfDepthRender;

    if-eqz v0, :cond_39

    .line 221
    new-instance v5, Lcom/motorola/camera/saving/XmpData$GDepth;

    invoke-direct {v5, v0}, Lcom/motorola/camera/saving/XmpData$GDepth;-><init>(Lcom/motorola/camera/mcf/McfAuxFrameData;)V

    .line 222
    iget-object v6, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    .line 223
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_38

    .line 224
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    goto :goto_14

    .line 225
    :cond_36
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    .line 226
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v2, v6

    .line 227
    :goto_14
    iget-boolean v6, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    if-eqz v6, :cond_37

    .line 228
    new-instance v6, Lcom/motorola/camera/saving/XmpData$GImage;

    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v2

    const-string v8, "Segmentation"

    invoke-direct {v6, v2, v8}, Lcom/motorola/camera/saving/XmpData$GImage;-><init>([BLjava/lang/String;)V

    goto :goto_15

    .line 229
    :cond_37
    new-instance v6, Lcom/motorola/camera/saving/XmpData$GImage;

    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/motorola/camera/saving/XmpData$GImage;-><init>([B)V

    goto :goto_15

    :cond_38
    const/4 v6, 0x0

    .line 230
    :goto_15
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiX()I

    move-result v8

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiY()I

    move-result v9

    .line 231
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiWidth()I

    move-result v10

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiHeight()I

    move-result v0

    invoke-direct {v2, v8, v9, v10, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    goto :goto_16

    :cond_39
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_16
    if-eqz v4, :cond_3a

    .line 232
    new-instance v0, Lcom/motorola/camera/saving/XmpData$DepthFocus;

    invoke-virtual {v4}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocalPointX()I

    move-result v2

    .line 233
    invoke-virtual {v4}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocalPointY()I

    move-result v8

    invoke-virtual {v4}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocusType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v8, v4}, Lcom/motorola/camera/saving/XmpData$DepthFocus;-><init>(IILjava/lang/String;)V

    goto :goto_17

    :cond_3a
    const/4 v0, 0x0

    :goto_17
    const-string v2, "Data"

    const-string v4, "image/jpeg"

    const-string v8, "Mime"

    if-eqz v5, :cond_3d

    .line 234
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "http://ns.google.com/photos/1.0/depthmap/"

    .line 235
    iget-object v10, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v10, :cond_3b

    sget-object v10, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 236
    new-instance v10, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 237
    iput-object v10, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 238
    :cond_3b
    iget-object v10, v3, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v10, :cond_3c

    sget-object v10, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 239
    new-instance v10, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 240
    iput-object v10, v3, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 241
    :cond_3c
    iget-object v10, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 242
    iget-object v11, v3, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_d
    const-string v12, "Far"

    .line 243
    iget v13, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v14, v10

    check-cast v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v15, 0x0

    .line 244
    invoke-virtual {v14, v9, v12, v13, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v12, "Format"

    const-string v13, "RangeLinear"

    .line 245
    move-object v14, v10

    check-cast v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 246
    invoke-virtual {v14, v9, v12, v13, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 247
    move-object v12, v10

    check-cast v12, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 248
    invoke-virtual {v12, v9, v8, v4, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v12, "Near"

    const/4 v13, 0x0

    .line 249
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v14, v10

    check-cast v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 250
    invoke-virtual {v14, v9, v12, v13, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 251
    iget-object v12, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/String;

    check-cast v11, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 252
    invoke-virtual {v11, v9, v2, v12, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 253
    iget-object v11, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    if-eqz v11, :cond_3d

    const-string v12, "RoiX"

    .line 254
    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v13, v10

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v14, 0x0

    .line 255
    invoke-virtual {v13, v9, v12, v11, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v11, "RoiY"

    .line 256
    iget-object v12, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v13, v10

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v14, 0x0

    .line 257
    invoke-virtual {v13, v9, v11, v12, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v11, "RoiWidth"

    .line 258
    iget-object v12, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v13, v10

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v14, 0x0

    .line 259
    invoke-virtual {v13, v9, v11, v12, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v11, "RoiHeight"

    .line 260
    iget-object v5, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v10, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v12, 0x0

    .line 261
    invoke-virtual {v10, v9, v11, v5, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_d
    .catch Lcom/adobe/xmp/XMPException; {:try_start_d .. :try_end_d} :catch_8

    :catch_8
    :cond_3d
    if-eqz v6, :cond_40

    .line 262
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "http://ns.google.com/photos/1.0/image/"

    .line 263
    iget-object v9, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v9, :cond_3e

    sget-object v9, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 264
    new-instance v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 265
    iput-object v9, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 266
    :cond_3e
    iget-object v9, v3, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v9, :cond_3f

    sget-object v9, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 267
    new-instance v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 268
    iput-object v9, v3, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 269
    :cond_3f
    iget-object v9, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 270
    iget-object v10, v3, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 271
    :try_start_e
    iget-object v11, v6, Lcom/motorola/camera/saving/XmpData$GImage;->mData:Ljava/lang/String;

    check-cast v10, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v12, 0x0

    .line 272
    invoke-virtual {v10, v5, v2, v11, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 273
    move-object v2, v9

    check-cast v2, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 274
    invoke-virtual {v2, v5, v8, v4, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 275
    iget-object v2, v6, Lcom/motorola/camera/saving/XmpData$GImage;->mItemSemantic:Ljava/lang/String;

    if-eqz v2, :cond_40

    const-string v4, "ItemSemantic"

    .line 276
    check-cast v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 277
    invoke-virtual {v9, v5, v4, v2, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_e
    .catch Lcom/adobe/xmp/XMPException; {:try_start_e .. :try_end_e} :catch_9

    :catch_9
    :cond_40
    if-eqz v0, :cond_42

    .line 278
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://ns.motorola.com/camera/1.0/depthfocus/"

    .line 279
    iget-object v4, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v4, :cond_41

    sget-object v4, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 280
    new-instance v4, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v4}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 281
    iput-object v4, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 282
    :cond_41
    iget-object v4, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_f
    const-string v5, "FocalPointX"

    .line 283
    iget v6, v0, Lcom/motorola/camera/saving/XmpData$DepthFocus;->mFocalPointX:I

    .line 284
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v8, v4

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v9, 0x0

    .line 285
    invoke-virtual {v8, v2, v5, v6, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v5, "FocalPointY"

    .line 286
    iget v6, v0, Lcom/motorola/camera/saving/XmpData$DepthFocus;->mFocalPointY:I

    .line 287
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v8, v4

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 288
    invoke-virtual {v8, v2, v5, v6, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v5, "FocalPointType"

    .line 289
    iget-object v0, v0, Lcom/motorola/camera/saving/XmpData$DepthFocus;->mFocalPointType:Ljava/lang/String;

    .line 290
    check-cast v4, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 291
    invoke-virtual {v4, v2, v5, v0, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_f
    .catch Lcom/adobe/xmp/XMPException; {:try_start_f .. :try_end_f} :catch_a

    .line 292
    :catch_a
    :cond_42
    iget-boolean v0, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    if-eqz v0, :cond_43

    .line 293
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Layer:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 294
    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    goto :goto_18

    .line 295
    :cond_43
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 296
    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 297
    :goto_18
    iget-object v2, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v2, :cond_44

    .line 298
    sget-object v2, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 299
    new-instance v2, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 300
    iput-object v2, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 301
    :cond_44
    iget-object v2, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 302
    :try_start_10
    new-instance v4, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v4}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v5, 0x10

    const/4 v6, 0x1

    .line 303
    invoke-virtual {v4, v5, v6}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    if-eqz v0, :cond_45

    .line 304
    check-cast v2, Lcom/adobe/xmp/impl/XMPMetaImpl;
    :try_end_10
    .catch Lcom/adobe/xmp/XMPException; {:try_start_10 .. :try_end_10} :catch_b

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    :try_start_11
    invoke-virtual {v2, v6, v5, v0, v4}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_11
    .catch Lcom/adobe/xmp/XMPException; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_19

    :catch_b
    :cond_45
    move-object/from16 v6, v18

    :catch_c
    :goto_19
    move-object/from16 v2, v16

    .line 305
    iget-object v0, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    if-eqz v0, :cond_47

    .line 306
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 307
    iget-wide v4, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideoPresentationOffsetUs:J

    .line 308
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_46

    .line 310
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 311
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 312
    iput-object v0, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 313
    :cond_46
    iget-object v8, v3, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_12
    const-string v0, "MotionPhoto"

    .line 314
    move-object v2, v8

    check-cast v2, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v9, 0x0

    move-object/from16 v10, p0

    .line 315
    invoke-virtual {v2, v6, v0, v10, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "MotionPhotoVersion"

    .line 316
    move-object v2, v8

    check-cast v2, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 317
    invoke-virtual {v2, v6, v0, v10, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "MotionPhotoPresentationTimestampUs"

    .line 318
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 319
    move-object v4, v8

    check-cast v4, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 320
    invoke-virtual {v4, v6, v0, v2, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 321
    invoke-static {v8}, Lcom/motorola/camera/saving/XmpData;->createMotionPhotoItemDirectory(Lcom/adobe/xmp/XMPMeta;)V

    const-string v0, "Container:Directory[%d]/Container:Item"

    .line 322
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "Primary"

    const-string v17, "image/jpeg"

    const-wide/16 v18, 0x0

    move-object v14, v8

    .line 323
    invoke-static/range {v14 .. v19}, Lcom/motorola/camera/saving/XmpData;->embedMotionPhotoItem(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x2

    .line 324
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "MotionPhoto"

    const-string/jumbo v11, "video/mp4"

    .line 325
    invoke-static/range {v8 .. v13}, Lcom/motorola/camera/saving/XmpData;->embedMotionPhotoItem(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_12
    .catch Lcom/adobe/xmp/XMPException; {:try_start_12 .. :try_end_12} :catch_d

    goto :goto_1a

    :catch_d
    move-exception v0

    const-string v2, "XmpData"

    const-string v4, "can\'t embed motion photo oem"

    .line 326
    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    :cond_47
    :goto_1a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    .line 328
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DUMP_TO_XMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 329
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 330
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 331
    iget v0, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_48

    .line 332
    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SYSTEM_ARCSOFT_DUAL_CALIBRATION_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_48

    .line 333
    array-length v2, v0

    if-eqz v2, :cond_48

    const-string v2, "calibration"

    .line 334
    invoke-virtual {v3, v2, v0}, Lcom/motorola/camera/saving/XmpData;->embedDebugData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    :cond_48
    iget-object v0, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz v0, :cond_49

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v0, :cond_49

    .line 336
    iget v0, v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "jobid"

    invoke-virtual {v3, v2, v0}, Lcom/motorola/camera/saving/XmpData;->embedDebugData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    :cond_49
    iput-object v3, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    move-object/from16 v1, p2

    .line 338
    invoke-static {v1, v3}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 4
    invoke-interface/range {p2 .. p2}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v4, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 7
    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-string v7, "SEQ_ID"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    iget-object v6, v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 9
    iget-object v7, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v8, "ALTERNATE_SHOT"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 10
    iget-object v8, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v9, "alternate_shot_index_"

    invoke-static {v9}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 11
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v9

    :goto_0
    if-eqz v7, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v9

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v8

    :goto_2
    const-string v7, "IS_PRIMARY"

    .line 13
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq v6, v7, :cond_4

    goto :goto_3

    :cond_4
    move v8, v9

    :goto_3
    const-string v6, "MCF"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget-object v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 16
    iget-object v6, v6, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 17
    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "task_id"

    .line 18
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 19
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .line 20
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21
    :cond_5
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 22
    invoke-interface {v0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v7

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    move-object v11, v7

    .line 23
    invoke-interface {v0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v12

    .line 24
    invoke-interface {v0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v0

    .line 25
    invoke-static {v0, v12}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 26
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    .line 27
    iget-object v4, v4, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 28
    invoke-interface {v4}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    .line 29
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v4, "SaveImageService"

    const-string v7, "notifyImageSaveComplete: unable to determine if current media file is the original one."

    .line 30
    invoke-static {v4, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :goto_5
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 32
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v4

    if-eqz v4, :cond_8

    if-eqz v9, :cond_7

    .line 33
    iget-object v7, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->isBackgroundServiceJob()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/motorola/camera/saving/SaveImageService;->removeBgRecord(J)V

    :cond_7
    if-eqz v11, :cond_8

    .line 36
    invoke-virtual {v1, v11}, Lcom/motorola/camera/saving/SaveImageService;->notifyProcessingUri(Landroid/net/Uri;)V

    .line 37
    :cond_8
    new-instance v0, Landroid/util/Size;

    iget v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iget v4, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    invoke-direct {v0, v1, v4}, Landroid/util/Size;-><init>(II)V

    iget v1, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-static {v0, v1}, Lcom/motorola/camera/utility/SizeUtility;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/motorola/camera/CameraData;

    iget-wide v14, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v18

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v19

    iget v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    const/16 v21, 0x0

    move-object v10, v1

    move/from16 v20, v0

    .line 40
    invoke-direct/range {v10 .. v21}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    .line 41
    iget-object v0, v1, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/FormatHolder;->putAll(Landroid/os/Bundle;)V

    .line 42
    invoke-static {v1, v6}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    return-void
.end method

.method public final notifyProcessingUri(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getProcessingUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object p0

    .line 2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final removeImageProcessing(Lcom/motorola/camera/CameraData;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->deleteMediaItem(Landroid/net/Uri;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete in MediaStore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SaveImageService"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->isBackgroundServiceJob()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/motorola/camera/saving/SaveImageService;->removeBgRecord(J)V

    :cond_1
    return-void
.end method

.method public final writeJpeg(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 2
    iget-object v0, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    move-object v4, v0

    check-cast v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 4
    invoke-virtual {v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 5
    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    const-string v0, "ImageLength"

    const-string v7, "ImageWidth"

    .line 6
    iget-object v8, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 7
    iget-object v8, v8, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 8
    iget-object v9, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v10, "DOCUMENT_POINTS"

    .line 9
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v12, 0x0

    if-eqz v9, :cond_6

    .line 10
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 11
    iget-object v13, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v14, "DOCUMENT_WIDTH"

    invoke-virtual {v13, v14, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    new-array v15, v14, [B

    .line 14
    invoke-virtual {v5, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 15
    invoke-static {v15, v12, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 16
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v15

    .line 17
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 18
    invoke-virtual {v14, v15}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 19
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    const/4 v15, 0x3

    new-array v15, v15, [I

    const/16 v12, 0x8

    new-array v10, v12, [I

    .line 20
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v13

    div-float/2addr v12, v13

    const/4 v13, 0x0

    .line 21
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v13, v11, :cond_0

    .line 22
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v12

    float-to-int v11, v11

    aput v11, v10, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    const/16 v21, 0x0

    move-object/from16 v19, v10

    move-object/from16 v20, v15

    invoke-static/range {v16 .. v21}, Lcom/motorola/camera/mcf/DocUtil;->cropRgb([BII[I[IZ)[B

    move-result-object v9

    .line 24
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v11, 0x1

    .line 26
    aget v12, v15, v11

    const/4 v11, 0x2

    aget v11, v15, v11

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v11, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 27
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 28
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 29
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v13

    invoke-virtual {v11, v12, v13, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 30
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 33
    :try_start_0
    new-instance v12, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    .line 34
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 35
    new-instance v13, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v13, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 36
    invoke-virtual {v13, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 37
    invoke-virtual {v13, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v6

    .line 38
    :try_start_1
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    .line 39
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 40
    iget v6, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    iput v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    .line 41
    invoke-virtual {v13, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    .line 42
    invoke-virtual {v13, v7, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v13, v0, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {v11}, Lcom/motorola/camera/utility/AndroidImageUtils;->createDocThumbnail([B)[B

    move-result-object v0

    .line 45
    invoke-virtual {v13, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)Z

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0x8

    :goto_1
    if-ge v6, v7, :cond_1

    .line 47
    aget v8, v10, v6

    .line 48
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ";"

    .line 49
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 50
    :cond_1
    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_POINTS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 52
    invoke-virtual {v13, v6, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    .line 53
    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    const-string v6, "1;"

    .line 54
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 55
    invoke-virtual {v13, v0, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    .line 56
    invoke-virtual {v13}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v11

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v16, v6

    :goto_2
    :try_start_2
    const-string v6, "SaveImageService"

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process failed to write exif of document: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :goto_3
    invoke-static {v9}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 60
    new-instance v6, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {v6}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    .line 61
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v7, "http://ns.google.com/photos/1.0/document/"

    .line 63
    iget-object v8, v6, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v8, :cond_2

    sget-object v8, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 64
    new-instance v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 65
    iput-object v8, v6, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 66
    :cond_2
    iget-object v8, v6, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v8, :cond_3

    sget-object v8, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 67
    new-instance v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 68
    iput-object v8, v6, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 69
    :cond_3
    iget-object v8, v6, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 70
    iget-object v9, v6, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_3
    const-string v10, "Data"

    .line 71
    check-cast v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v12, 0x0

    .line 72
    invoke-virtual {v9, v7, v10, v0, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "Mime"

    const-string v9, "image/jpeg"

    .line 73
    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 74
    invoke-virtual {v8, v7, v0, v9, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_3
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v7, "XmpData"

    const-string v8, "can\'t embed document data"

    .line 75
    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :goto_4
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 77
    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 78
    iget-object v7, v6, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v7, :cond_4

    .line 79
    sget-object v7, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 80
    new-instance v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v7}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 81
    iput-object v7, v6, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 82
    :cond_4
    iget-object v7, v6, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 83
    :try_start_4
    new-instance v8, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v8}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v9, 0x10

    const/4 v10, 0x1

    .line 84
    invoke-virtual {v8, v9, v10}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V
    :try_end_4
    .catch Lcom/adobe/xmp/XMPException; {:try_start_4 .. :try_end_4} :catch_3

    const-string v9, "http://ns.google.com/photos/1.0/camera/"

    if-eqz v0, :cond_5

    :try_start_5
    const-string v10, "SpecialTypeID"

    .line 85
    check-cast v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v7, v9, v10, v0, v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_5
    .catch Lcom/adobe/xmp/XMPException; {:try_start_5 .. :try_end_5} :catch_3

    .line 86
    :catch_3
    :cond_5
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v12

    goto :goto_6

    .line 87
    :goto_5
    invoke-static {v9}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 88
    throw v0

    :cond_6
    move-object/from16 v16, v6

    const/4 v12, 0x0

    :goto_6
    if-eqz v12, :cond_7

    .line 89
    iput-object v12, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBuffer:Ljava/nio/ByteBuffer;

    move-object v5, v12

    .line 90
    :cond_7
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 91
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    if-eqz v16, :cond_9

    .line 92
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v5, v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    goto/16 :goto_12

    .line 93
    :cond_9
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 94
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 95
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "PANO_SAVE_OUTPUT_BY_ENGINE"

    .line 96
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 97
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 98
    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->createFileDescriptorWithFallback(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/io/FileDescriptor;

    .line 99
    :cond_a
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const-wide/16 v5, 0x0

    .line 100
    :try_start_6
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v5, v6, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_4

    .line 101
    :catch_4
    iget v3, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    sget-object v7, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    const/16 v7, 0x9

    if-ne v3, v7, :cond_b

    const/4 v3, 0x1

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_c

    .line 102
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v7, 0x1

    .line 103
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 104
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v9, 0x0

    invoke-static {v8, v9, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 105
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-static {v8, v3, v9}, Lcom/motorola/camera/utility/SizeUtility;->convertWH(III)[I

    move-result-object v3

    const/4 v8, 0x0

    .line 106
    aget v9, v3, v8

    iput v9, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    .line 107
    aget v3, v3, v7

    iput v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 108
    :try_start_7
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v5, v6, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    const/4 v11, 0x0

    goto :goto_8

    .line 109
    :cond_c
    iget-object v3, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v5, "PANO_IMAGE_WIDTH"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "PANO_IMAGE_HEIGHT"

    .line 110
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    .line 111
    invoke-static {v3, v5, v6}, Lcom/motorola/camera/utility/SizeUtility;->convertWH(III)[I

    move-result-object v3

    const/4 v11, 0x0

    .line 112
    aget v5, v3, v11

    iput v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    const/4 v6, 0x1

    .line 113
    aget v3, v3, v6

    iput v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 114
    :goto_8
    iget-object v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 115
    iget-object v3, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 116
    invoke-static {v0, v3, v11}, Lcom/motorola/camera/saving/SaveImageService;->correctExifInfo(Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;Z)V

    .line 117
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->finish()V

    .line 118
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/saving/SaveImageService;->notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V

    goto/16 :goto_12

    :cond_d
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 119
    invoke-virtual {v1, v2, v5}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 120
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 121
    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    array-length v7, v7

    .line 122
    iput v7, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    .line 123
    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 124
    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    if-nez v5, :cond_e

    move v5, v6

    goto :goto_9

    :cond_e
    move v5, v11

    .line 125
    :goto_9
    iget-object v7, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz v7, :cond_10

    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v7, :cond_10

    .line 126
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v7

    if-eqz v5, :cond_10

    .line 127
    sget-object v5, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v7, v5, :cond_f

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_DEPTH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v7, v5, :cond_f

    move v5, v6

    goto :goto_a

    :cond_f
    move v5, v11

    .line 128
    :cond_10
    :goto_a
    iget-object v7, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    if-eqz v7, :cond_11

    .line 129
    sget-object v8, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v7, v8}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/mcf/McfAuxBinData;

    if-eqz v7, :cond_11

    .line 130
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/McfAuxBinData;->isAppXData()Z

    move-result v7

    if-eqz v7, :cond_11

    move v7, v6

    goto :goto_b

    :cond_11
    move v7, v11

    :goto_b
    if-eqz v7, :cond_13

    if-eqz v5, :cond_13

    .line 131
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v7, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v5, v7}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/mcf/McfAuxBinData;

    if-eqz v5, :cond_13

    .line 132
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->isAppXData()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 133
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->getAppXId()I

    move-result v7

    .line 134
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimaryLength()I

    move-result v8

    if-lez v8, :cond_13

    .line 135
    :try_start_8
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 136
    :try_start_9
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    array-length v12, v12

    .line 137
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimary()[B

    move-result-object v13

    array-length v13, v13

    add-int/2addr v12, v13

    invoke-direct {v10, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 138
    :try_start_a
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimary()[B

    move-result-object v5

    invoke-static {v7, v5, v8, v10}, Lcom/motorola/camera/saving/XmpUtil;->addAppXSegments(I[BLjava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 139
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 140
    :cond_12
    invoke-static {v8}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_f

    :catchall_1
    move-exception v0

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v10, v9

    :goto_c
    move-object v9, v10

    move-object v10, v8

    goto :goto_d

    :catch_6
    move-object v10, v9

    :catch_7
    move-object v9, v10

    move-object v10, v8

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v10, v9

    :goto_d
    invoke-static {v10}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v9}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 142
    throw v0

    :catch_8
    move-object v10, v9

    .line 143
    :goto_e
    invoke-static {v10}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v10, v9

    .line 144
    :goto_f
    invoke-static {v10}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 145
    :cond_13
    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v5}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v5

    .line 146
    iget-object v7, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 147
    invoke-interface {v7}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v8

    if-eqz v8, :cond_18

    .line 148
    iget-object v3, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 149
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v9

    if-nez v9, :cond_14

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v9

    if-nez v9, :cond_14

    .line 150
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v9

    if-nez v9, :cond_14

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v9

    if-nez v9, :cond_14

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    move v11, v6

    .line 151
    :cond_15
    invoke-interface {v8}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v3

    if-nez v3, :cond_17

    if-eqz v11, :cond_16

    goto :goto_10

    .line 152
    :cond_16
    invoke-interface {v8, v5}, Lcom/motorola/camera/storage/SharedMediaFile;->setFileName(Ljava/lang/String;)V

    .line 153
    invoke-static {v7}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v7

    .line 154
    iput-object v7, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    goto :goto_11

    .line 155
    :cond_17
    :goto_10
    invoke-interface {v8}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v3

    .line 156
    invoke-static {v3}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v3

    .line 157
    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v7

    .line 158
    :cond_18
    :goto_11
    invoke-static {v0, v7, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 159
    invoke-virtual {v1, v2, v7}, Lcom/motorola/camera/saving/SaveImageService;->notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V

    .line 160
    :cond_19
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 161
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 162
    check-cast v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 163
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    if-nez v1, :cond_1a

    goto :goto_12

    .line 164
    :cond_1a
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v3, v4, :cond_1b

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->ZSL_DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-ne v3, v4, :cond_1c

    :cond_1b
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    if-eqz v3, :cond_1c

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SAVE_DEPTH_MAP:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 165
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 166
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 167
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 168
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v3, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfAuxFrameData;

    if-eqz v0, :cond_1c

    .line 169
    new-instance v3, Lcom/motorola/camera/saving/FileName;

    iget-object v4, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-direct {v3, v4}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    const/4 v4, 0x4

    .line 170
    invoke-virtual {v3, v4}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    move-result-object v3

    .line 171
    invoke-interface {v1}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v1

    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v1

    .line 172
    invoke-static {v1}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    .line 173
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getPrimary()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    :cond_1c
    :goto_12
    return-void
.end method
