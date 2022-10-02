.class public final Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JobMgrService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/service/jms/JobMgrService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.service.jms.JobMgrService$onStartCommand$1"
    f = "JobMgrService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/service/jms/JobMgrService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    sget p1, Lcom/motorola/camera/background/service/jms/JobMgrService;->$r8$clinit:I

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 5
    invoke-static {p0, p1, v0, v1}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig$default(Landroid/content/Context;Ljava/lang/String;ZI)[B

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMImplIntf()Ljms/IJobMgrService;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljms/IJobMgrService;->initialize(Ljava/lang/String;[B)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1

    .line 7
    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    if-ne p1, v1, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->_stopSelf(Z)V

    .line 9
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
