.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JobDatabase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
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
    c = "com.motorola.camera.background.service.jms.JobDatabase$DB_pendingJobs$1"
    f = "JobDatabase.kt"
    l = {
        0x125
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $count:Lkotlin/jvm/internal/Ref$IntRef;

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/motorola/camera/background/service/jms/JobDatabase;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/motorola/camera/background/service/jms/JobDatabase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/motorola/camera/background/service/jms/JobDatabase;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/motorola/camera/background/service/jms/JobDatabase;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;->label:I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v3, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v6, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$count$2;

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$count$2;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v1

    .line 8
    check-cast v1, Lkotlinx/coroutines/DeferredCoroutine;

    .line 9
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal$kotlinx_coroutines_core(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    .line 10
    :goto_0
    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    iput p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
