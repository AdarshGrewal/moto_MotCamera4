.class public final Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;
.super Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;
.source "PostProcServiceConnection.kt"

# interfaces
.implements Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final START_COPROC_TIMEOUT:J

.field public final clientIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public final context:Landroid/content/Context;

.field public final identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public mBgLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mBindingPending:Z

.field public mService:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

.field public mServiceBound:Z

.field public mServiceClientId:Ljava/lang/Integer;

.field public final mServiceConnection:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;

.field public mStartRefCount:I

.field public final mlModels:Landroid/os/Bundle;

.field public final parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

.field public final product:Ljava/lang/String;

.field public final serviceClientIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

.field public final staticConfig:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Landroid/content/Context;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Ljava/lang/String;[BLandroid/os/Bundle;)V
    .locals 1

    const-string v0, "clientIdentity"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "product"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "staticConfig"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mlModels"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3, p4, p5}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;-><init>(Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 5
    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->clientIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 6
    iput-object p5, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->serviceClientIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    .line 7
    iput-object p6, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->product:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->staticConfig:[B

    .line 9
    iput-object p8, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mlModels:Landroid/os/Bundle;

    const/4 p1, -0x1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceClientId:Ljava/lang/Integer;

    const-wide/16 p1, 0x1388

    .line 11
    iput-wide p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->START_COPROC_TIMEOUT:J

    .line 12
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBgLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    new-instance p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;-><init>(Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;)V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceConnection:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceConnection:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_0
    return-void
.end method

.method public getServiceIntf()Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mService:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    return-object p0
.end method

.method public isMsgTypeSupported(Lcom/motorola/camera/background/common/msg/MsgType;)Z
    .locals 1

    const-string p0, "msgType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public isReady()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    return p0
.end method

.method public start(Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBgLock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mStartRefCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    if-nez v1, :cond_2

    .line 4
    iput-boolean v3, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBindingPending:Z

    .line 5
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const-string v4, "<set-?>"

    .line 6
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->mCoproReady:Ljava/util/concurrent/CountDownLatch;

    .line 8
    new-instance v1, Landroid/content/Intent;

    .line 9
    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    .line 10
    const-class v5, Lcom/motorola/camera/background/coprocessor/postproc/PostProcService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    if-nez v4, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceConnection:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    move v2, v1

    .line 13
    :goto_0
    iget v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mStartRefCount:I

    add-int/2addr v1, v3

    .line 14
    iput v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mStartRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move v2, v3

    .line 15
    :cond_2
    :goto_1
    monitor-exit v0

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    .line 16
    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->START_COPROC_TIMEOUT:J

    .line 17
    iget-boolean p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    if-nez p1, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->getMCoproReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 19
    :cond_3
    iget-boolean v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    :cond_4
    return v2

    .line 20
    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public stop()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBgLock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBindingPending:Z

    .line 3
    iget v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mStartRefCount:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    .line 4
    iput v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mStartRefCount:I

    if-gtz v2, :cond_8

    .line 5
    iput v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mStartRefCount:I

    .line 6
    iget-boolean v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_8

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mService:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    if-nez v2, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceClientId:Ljava/lang/Integer;

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    invoke-interface {v2, v4}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->unregisterClient(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 10
    :try_start_2
    sget-object v4, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    const-string v5, "PostProcService unregisterClient() exception: "

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mService:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    if-nez v2, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    invoke-interface {v2}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->deinitialize()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 14
    :try_start_4
    sget-object v4, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    const-string v5, "BgService Message deinitialize() exception: "

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    :goto_2
    :try_start_5
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    if-nez v2, :cond_3

    goto :goto_3

    .line 17
    :cond_3
    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceConnection:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v2

    .line 18
    :try_start_6
    sget-object v4, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unbindService exception: "

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    :goto_3
    iput-boolean v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    .line 20
    new-instance v2, Landroid/content/Intent;

    .line 21
    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    .line 22
    const-class v5, Lcom/motorola/camera/background/coprocessor/postproc/PostProcService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    if-nez v4, :cond_4

    goto :goto_4

    .line 24
    :cond_4
    invoke-virtual {v4, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 25
    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    .line 26
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    check-cast p0, Landroid/app/ActivityManager;

    const-string v2, "com.motorola.camera3:postProcService"

    const-string v4, "am"

    .line 27
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "processName"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v3

    if-ltz v4, :cond_8

    :goto_5
    add-int/lit8 v3, v1, 0x1

    .line 30
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v2, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "killing process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pid = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "camera2.background"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_6

    :cond_5
    if-le v3, v4, :cond_6

    goto :goto_6

    :cond_6
    move v1, v3

    goto :goto_5

    .line 33
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_7

    .line 34
    :cond_8
    :goto_6
    monitor-exit v0

    return-void

    :goto_7
    monitor-exit v0

    throw p0
.end method
