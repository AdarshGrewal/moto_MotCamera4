.class public final Lcom/motorola/camera/background/service/jms/JobMgrService;
.super Lcom/motorola/camera/background/common/ServiceBase;
.source "JobMgrService.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;,
        Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobMgrService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobMgrService.kt\ncom/motorola/camera/background/service/jms/JobMgrService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,306:1\n1#2:307\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0005\u0006B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/motorola/camera/background/service/jms/JobMgrService;",
        "Lcom/motorola/camera/background/common/ServiceBase;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "()V",
        "ProgressUpdates",
        "STATE",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBindRefCount:I

.field public mForegroundService:Z

.field public mImplIntf:Ljms/IJobMgrService;

.field public mIsServiceRunning:Z

.field public mNotificationBuilder:Landroid/app/Notification$Builder;

.field public final mNotificationCoRoutine:Lkotlinx/coroutines/CompletableJob;

.field public final mNotificationLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mNotificationState:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

.field public final mProgressUpdateChannel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;",
            ">;"
        }
    .end annotation
.end field

.field public final mStartList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public pendingStatusText:Ljava/lang/String;

.field public restartedByAndroid:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/background/service/jms/JobMgrService;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/background/common/ServiceBase;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mStartList:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mForegroundService:Z

    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationCoRoutine:Lkotlinx/coroutines/CompletableJob;

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/4 v4, 0x6

    .line 5
    invoke-static {v2, v3, v1, v4}, Landroidx/room/RoomMasterTable;->Channel$default(IILkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mProgressUpdateChannel:Lkotlinx/coroutines/channels/Channel;

    .line 6
    sget-object v1, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;->DEINITIALIZED:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    .line 7
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    const-class v1, Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/motorola/camera/background/common/ServiceBase;->TAG:Ljava/lang/String;

    .line 10
    iput v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mStartMode:I

    .line 11
    iput-boolean v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mAllowRebind:Z

    .line 12
    iput v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    return-void
.end method


# virtual methods
.method public final _stopSelf(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMImplIntf()Ljms/IJobMgrService;

    move-result-object p1

    invoke-interface {p1}, Ljms/IJobMgrService;->deinitialize()V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;->DEINITIALIZED:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    const-string v1, "<set-?>"

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationCoRoutine:Lkotlinx/coroutines/CompletableJob;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationCoRoutine:Lkotlinx/coroutines/CompletableJob;

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 10
    iget-boolean p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mForegroundService:Z

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    const/4 p1, 0x4

    const-string v0, "context"

    .line 12
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    .line 14
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 16
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationCoRoutine:Lkotlinx/coroutines/CompletableJob;

    return-object p0
.end method

.method public final getMImplIntf()Ljms/IJobMgrService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Ljms/IJobMgrService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mImplIntf"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getMNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mNotificationBuilder"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/background/common/ServiceBase;->getMBinding()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/background/common/ServiceBase;->onCreate()V

    .line 2
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "baseContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;-><init>(Landroid/content/Context;Lcom/motorola/camera/background/service/jms/JobMgrService;)V

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mBinding:Landroid/os/IBinder;

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/background/common/ServiceBase;->getMBinding()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljms/IJobMgrService$Stub;->asInterface(Landroid/os/IBinder;)Ljms/IJobMgrService;

    move-result-object v0

    const-string v1, "asInterface(mBinding)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Ljms/IJobMgrService;

    const v0, 0x7f1103f6

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.statu\u2026ding_process_img_message)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->pendingStatusText:Ljava/lang/String;

    const v0, 0x7f1100cb

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.desc_\u2026_fg_service_notification)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Lcom/motorola/camera/shared/NotificationHelper;->buildCameraForegroundNotification(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const-string v0, "notification"

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    .line 12
    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->startForegroundService()V

    .line 14
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->createBaseDir(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mIsServiceRunning:Z

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMImplIntf()Ljms/IJobMgrService;

    move-result-object v0

    invoke-interface {v0}, Ljms/IJobMgrService;->cleanUp()Z

    .line 3
    invoke-super {p0}, Lcom/motorola/camera/background/common/ServiceBase;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mStartList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.motorola.camera3.EXTRA_FOREGROUND_SERVICE"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mForegroundService:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->startForegroundService()V

    goto :goto_1

    .line 4
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/background/common/ServiceBase;->onStartCommand(Landroid/content/Intent;II)I

    .line 5
    iput-boolean v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mIsServiceRunning:Z

    :goto_1
    if-eqz p1, :cond_2

    const-string p2, "com.motorola.camera3.EXTRA_KEEP_ALIVE_START"

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move v0, v2

    .line 7
    :cond_3
    iput-boolean v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->restartedByAndroid:Z

    if-eqz v0, :cond_4

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationCoRoutine:Lkotlinx/coroutines/CompletableJob;

    .line 9
    new-instance v4, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 10
    :cond_4
    iget p0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mStartMode:I

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMImplIntf()Ljms/IJobMgrService;

    move-result-object v0

    invoke-interface {v0}, Ljms/IJobMgrService;->numPendingJobs()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrService;->_stopSelf(Z)V

    .line 4
    :cond_0
    iget-boolean p0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mAllowRebind:Z

    return p0
.end method

.method public final startForegroundService()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mIsServiceRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mIsServiceRunning:Z

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mProgressUpdateChannel:Lkotlinx/coroutines/channels/Channel;

    .line 4
    new-instance v4, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;

    const/4 v1, 0x0

    invoke-direct {v4, v0, p0, v1}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v1, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;->INITIALIZED:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    .line 6
    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
