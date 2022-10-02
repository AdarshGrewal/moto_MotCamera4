.class public final Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageStateMachine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;",
        "Lcom/tinder/StateMachine$Graph$State$TransitionTo<",
        "+",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
        "+",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic $dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

.field public final synthetic $this_state:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tinder/StateMachine$GraphBuilder<",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;",
            ">.StateDefinitionBuilder<",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/service/jms/JobDatabase;",
            "Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;",
            "Lcom/tinder/StateMachine$GraphBuilder<",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;",
            ">.StateDefinitionBuilder<",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->$this_state:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    move-object/from16 v2, p2

    check-cast v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;

    const-string v3, "$this$on"

    .line 2
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "it"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v4, v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 5
    iget-object v8, v4, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 6
    iget-wide v11, v8, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 7
    iget-object v13, v4, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 8
    iget-object v14, v4, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    .line 9
    sget-object v15, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    .line 10
    new-instance v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;

    invoke-direct {v5, v4}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v4, v4, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->retrySource:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    if-nez v4, :cond_0

    .line 12
    iget v4, v8, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    const-string v5, "ProcessJob Msg Ack"

    const-string v6, "jobContext"

    .line 13
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v6, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;

    invoke-direct {v6, v5}, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;-><init>(Ljava/lang/String;)V

    .line 15
    sget-object v5, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 16
    sget-object v7, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$$serializer;

    .line 17
    invoke-virtual {v5, v7, v6}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 18
    new-instance v10, Lcom/motorola/camera/background/common/msg/MsgParameters;

    sget-object v5, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 19
    sget-object v5, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 20
    iget v6, v5, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 21
    sget-object v7, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    move-object v5, v10

    move-object/from16 p1, v1

    move-object v1, v10

    move-object v10, v15

    .line 22
    invoke-direct/range {v5 .. v10}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    .line 23
    new-instance v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;

    invoke-direct {v5, v4, v1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;-><init>(ILcom/motorola/camera/background/common/msg/MsgParameters;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 p1, v1

    .line 24
    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    sget-object v4, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    invoke-virtual {v1, v11, v12, v4}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateState(JLcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;)V

    .line 25
    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    .line 26
    iget v1, v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;->callerId:I

    move-wide v10, v11

    move v12, v1

    .line 27
    invoke-virtual/range {v9 .. v15}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMsgInfo(JILcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    .line 28
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    sget-object v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->setMProcessOwner(Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner;)V

    .line 29
    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->$this_state:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    new-instance v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;

    invoke-direct {v2, v3}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "$receiver"

    move-object/from16 v3, p1

    .line 30
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    invoke-direct {v0, v1, v2}, Lcom/tinder/StateMachine$Graph$State$TransitionTo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
