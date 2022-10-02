.class public final Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;
.super Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;
.source "JobMgrServiceImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MsgHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-direct {p0}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public processCtlMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    const-string/jumbo v1, "type"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "taskId"

    move-object/from16 v4, p3

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "retCode"

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v13, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 6
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "processCtlMsg: message processing not allowed. Either not initialized or shutting down."

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    return-object v0

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-static {v1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->access$checkWatchDog(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;)V

    .line 10
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    .line 11
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 12
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "processCtlMsg: unknown type: "

    .line 13
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 14
    :cond_1
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 15
    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;

    .line 16
    invoke-virtual {v0, v1, v5}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;

    .line 17
    iget v0, v0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsCompleted:I

    goto :goto_1

    .line 18
    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-static {v1, v3}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->access$findValidCoProc(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;)Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-result-object v1

    if-nez v1, :cond_3

    .line 19
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 20
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "processJob: Coprocessor not registered"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v13, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_1

    .line 23
    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v10

    .line 24
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 25
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/Map;

    .line 26
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    const/4 v14, 0x0

    if-nez v2, :cond_4

    move-object v6, v14

    goto :goto_0

    .line 27
    :cond_4
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->priority:Lcom/motorola/camera/background/common/Priority;

    move-object v6, v2

    .line 28
    :goto_0
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    new-instance v15, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    .line 31
    iget v2, v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 33
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcConnection(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    move-result-object v11

    const/4 v12, 0x0

    move-object v1, v15

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 34
    invoke-direct/range {v1 .. v12}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;JLjava/lang/Integer;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;)V

    .line 35
    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessCtlMsg$1;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-direct {v1, v0, v2, v15, v14}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessCtlMsg$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x1

    invoke-static {v14, v1, v0, v14}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object v13
.end method

.method public processMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string/jumbo v1, "type"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "taskId"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msg"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "retCode"

    move-object/from16 v5, p5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v14, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 6
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "processMsg: message processing not allowed. Either not initialized or shutting down."

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    return-object v0

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-static {v1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->access$checkWatchDog(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;)V

    .line 10
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v1, v7, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 11
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 12
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "processMsg: unknown type: "

    .line 13
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 14
    :cond_1
    :pswitch_0
    new-instance v9, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    move-object v1, v9

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/ReturnCode;Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJobComplete$1;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-direct {v1, v0, v13, v9, v8}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJobComplete$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8, v1, v7, v8}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 16
    :cond_2
    :pswitch_1
    sget-object v1, Lcom/motorola/camera/background/common/ClientType;->CLIENT_BOTH:Lcom/motorola/camera/background/common/ClientType;

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 17
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/Map;

    .line 18
    iget v5, v4, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    .line 20
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 21
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/Map;

    .line 22
    iget v9, v4, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 23
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-nez v2, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->type:Lcom/motorola/camera/background/common/ClientType;

    .line 25
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v9, Lcom/motorola/camera/background/common/ClientType;->CLIENT_SOURCE:Lcom/motorola/camera/background/common/ClientType;

    if-eq v2, v9, :cond_5

    if-ne v2, v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v5

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v7

    :goto_2
    if-eqz v2, :cond_6

    move v2, v7

    goto :goto_3

    :cond_6
    move v2, v5

    .line 27
    :goto_3
    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 28
    iget-object v9, v9, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/Map;

    .line 29
    iget v10, v4, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 30
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 31
    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 32
    iget-object v9, v9, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/Map;

    .line 33
    iget v10, v4, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 34
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-nez v9, :cond_7

    goto :goto_4

    .line 35
    :cond_7
    iget-object v9, v9, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->type:Lcom/motorola/camera/background/common/ClientType;

    .line 36
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v10, Lcom/motorola/camera/background/common/ClientType;->CLIENT_SINK:Lcom/motorola/camera/background/common/ClientType;

    if-eq v9, v10, :cond_9

    if-ne v9, v1, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    move v1, v5

    goto :goto_6

    :cond_9
    :goto_5
    move v1, v7

    :goto_6
    if-eqz v1, :cond_a

    goto :goto_7

    :cond_a
    move v7, v5

    .line 38
    :goto_7
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-static {v1, v3}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->access$findValidCoProc(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;)Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-result-object v1

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    if-nez v7, :cond_b

    goto :goto_9

    .line 39
    :cond_b
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 40
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/Map;

    .line 41
    iget v5, v4, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-nez v2, :cond_c

    goto :goto_8

    .line 43
    :cond_c
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;

    move-object v8, v2

    .line 44
    :goto_8
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v10

    .line 46
    new-instance v15, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    .line 48
    iget v2, v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 50
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcConnection(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    move-result-object v16

    const/16 v17, 0x0

    move-object v1, v15

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v8

    move-wide v7, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    .line 51
    invoke-direct/range {v1 .. v12}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;JLjava/lang/Integer;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;)V

    .line 52
    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJob$1;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v13, v15, v2}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJob$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 53
    :cond_d
    :goto_9
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 54
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "processJob: clients and/or coprocessor not registered clientSrc="

    .line 55
    invoke-static {v2}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    iget v3, v4, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " clientDst="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v3, v4, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", coProc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v14, Lcom/motorola/camera/background/common/ReturnCode;->OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_a
    :pswitch_2
    return-object v14

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
