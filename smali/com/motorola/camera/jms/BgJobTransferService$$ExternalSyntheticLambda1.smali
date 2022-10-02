.class public final synthetic Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(JZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda1;->f$0:J

    iput-boolean p3, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p4, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-wide v0, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda1;->f$0:J

    iget-boolean v2, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda1;->f$1:Z

    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    .line 1
    sget-object v3, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    .line 2
    iget-object v4, v3, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJobListener:Ljava/util/Set;

    monitor-enter v4

    .line 3
    :try_start_0
    iget-object v5, v3, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJobListener:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/jms/BgJobManager$TransferJobListener;

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 5
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget v8, v3, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v3, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I

    .line 7
    iget-object v8, v3, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJmsList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v3

    .line 9
    invoke-virtual {v3}, Lcom/motorola/camera/jms/BgJobTransferService;->getJobRefCount()I

    move-result v7

    if-gtz v7, :cond_0

    .line 10
    iget-object v7, v3, Lcom/motorola/camera/jms/BgJobTransferService;->mJobMgrServiceWatchDog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v7}, Lcom/motorola/camera/background/common/SimpleWatchDog;->cancel()V

    goto :goto_1

    .line 11
    :cond_0
    iget-object v7, v3, Lcom/motorola/camera/jms/BgJobTransferService;->mJobMgrServiceWatchDog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v7}, Lcom/motorola/camera/background/common/SimpleWatchDog;->reset()V

    :goto_1
    if-eqz v2, :cond_1

    .line 12
    invoke-interface {v6, v0, v1}, Lcom/motorola/camera/jms/BgJobManager$TransferJobListener;->onJobTransferComplete(J)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v6, v0, v1, p0}, Lcom/motorola/camera/jms/BgJobManager$TransferJobListener;->onJobTransferError(JLandroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v3

    throw p0

    .line 15
    :cond_2
    monitor-exit v4

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
