.class public Lcom/motorola/camera/service/CameraForegroundServiceManager;
.super Ljava/lang/Object;
.source "CameraForegroundServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/service/CameraForegroundServiceManager$SaveSessionPendingJobsRunnable;,
        Lcom/motorola/camera/service/CameraForegroundServiceManager$LazyLoader;
    }
.end annotation


# instance fields
.field public final mBgJobListener:Lcom/motorola/camera/jms/BgJobManager$BgJobManagerListener;

.field public final mClientVotes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/service/CameraForegroundServiceManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mLock:Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/motorola/camera/service/CameraForegroundServiceManager$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/service/CameraForegroundServiceManager$1;-><init>(Lcom/motorola/camera/service/CameraForegroundServiceManager;)V

    iput-object p1, p0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mBgJobListener:Lcom/motorola/camera/jms/BgJobManager$BgJobManagerListener;

    return-void
.end method

.method public static add(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/service/CameraForegroundServiceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/CameraForegroundServiceManager;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 4
    iget-object v2, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBgServiceProcessingEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mJmsServiceInterface:Lcom/motorola/camera/service/JmsServiceInterface;

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v4, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/service/JmsServiceInterface;)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 10
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    new-instance v5, Lcom/motorola/camera/service/CameraForegroundServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/motorola/camera/service/CameraForegroundServiceManager$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 12
    iget-object v2, v4, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/Map;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/service/CameraForegroundServiceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/CameraForegroundServiceManager;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    const-string v0, "CameraForegroundServiceManager"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit v1

    return-void

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gtz v4, :cond_2

    .line 8
    iget-object v2, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p0, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBgServiceProcessingEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/motorola/camera/service/CameraForegroundServiceManager;->stopJms()V

    goto :goto_0

    .line 12
    :cond_1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    new-instance v0, Lcom/motorola/camera/service/CameraForegroundServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3}, Lcom/motorola/camera/service/CameraForegroundServiceManager$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/Map;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_3
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final stopJms()V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mJmsServiceInterface:Lcom/motorola/camera/service/JmsServiceInterface;

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/service/JmsServiceInterface;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mBgJobListener:Lcom/motorola/camera/jms/BgJobManager$BgJobManagerListener;

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager;->mBjJobMgrListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    new-instance v1, Lcom/motorola/camera/service/CameraForegroundServiceManager$SaveSessionPendingJobsRunnable;

    .line 11
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-direct {v1, v2}, Lcom/motorola/camera/service/CameraForegroundServiceManager$SaveSessionPendingJobsRunnable;-><init>(Ljava/util/Set;)V

    const-wide/16 v2, 0x2710

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
