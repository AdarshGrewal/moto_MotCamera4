.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobDatabase.kt\ncom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1\n+ 2 Timing.kt\nkotlin/system/TimingKt\n*L\n1#1,563:1\n17#2,6:564\n*S KotlinDebug\n*F\n+ 1 JobDatabase.kt\ncom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1\n*L\n209#1:564,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.service.jms.JobDatabase$DB_updateJob$1"
    f = "JobDatabase.kt"
    l = {
        0xd2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $key:J

.field public final synthetic $retryCount:I

.field public final synthetic $successful:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public I$0:I

.field public J$0:J

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JILkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/service/jms/JobDatabase;",
            "JI",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$key:J

    iput p4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$retryCount:I

    iput-object p5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$key:J

    iget v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$retryCount:I

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JILkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v6, p2

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$key:J

    iget v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$retryCount:I

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JILkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v2, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget v1, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->I$0:I

    iget-wide v4, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->J$0:J

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/background/service/jms/JobDatabase;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v8, v1

    move-object v1, v2

    move-wide v6, v4

    move-object v2, v0

    move-object/from16 v0, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v4, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$key:J

    iget v6, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$retryCount:I

    iget-object v7, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    iget-object v8, v2, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    .line 7
    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->L$1:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->J$0:J

    iput v6, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->I$0:I

    iput v3, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->label:I

    invoke-virtual {v8, v4, v5, p0}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository;->selectById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    move v8, v6

    move-object v1, v7

    move-wide v6, v4

    .line 8
    :goto_0
    check-cast v0, Lcom/motorola/camera/background/service/jms/Transaction;

    if-eqz v0, :cond_3

    .line 9
    iget-object v5, v2, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    .line 10
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v12, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateRetryCount$1;

    const/4 v9, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateRetryCount$1;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;JILkotlin/coroutines/Continuation;)V

    const/4 v10, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v11, 0x0

    move-object v9, v0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 12
    iput-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 13
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
