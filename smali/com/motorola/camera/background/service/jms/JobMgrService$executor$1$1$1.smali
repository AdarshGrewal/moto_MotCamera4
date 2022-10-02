.class public final Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JobMgrService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.service.jms.JobMgrService$executor$1$1$1"
    f = "JobMgrService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $TAG:Ljava/lang/String;

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/service/jms/JobMgrService;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->$TAG:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->$TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->$TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->L$0:Ljava/lang/Object;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    .line 4
    sget-object v2, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;->INITIALIZED:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 5
    iget-boolean v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mIsServiceRunning:Z

    if-eqz v1, :cond_2

    .line 6
    iget p1, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    const v1, 0x7f1100cb

    invoke-virtual {v0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v3, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v3, v3, v0}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    .line 11
    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 12
    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    :cond_1
    const-string p0, "mNotificationManager"

    .line 14
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 15
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    .line 16
    iget-boolean p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->restartedByAndroid:Z

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMImplIntf()Ljms/IJobMgrService;

    move-result-object p1

    invoke-interface {p1}, Ljms/IJobMgrService;->numPendingJobs()I

    move-result p1

    if-gtz p1, :cond_3

    .line 18
    invoke-virtual {p0, v3}, Lcom/motorola/camera/background/service/jms/JobMgrService;->_stopSelf(Z)V

    .line 19
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
