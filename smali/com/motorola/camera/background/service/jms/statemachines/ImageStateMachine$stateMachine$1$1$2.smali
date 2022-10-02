.class public final Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$2;
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
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;",
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

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$2;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$2;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$2;->$this_state:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    check-cast p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;

    const-string v0, "$this$on"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object p2, p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 5
    iget-object v7, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 6
    sget-object v8, Lcom/motorola/camera/background/common/ReturnCode;->CANCELED:Lcom/motorola/camera/background/common/ReturnCode;

    .line 7
    iget v9, v7, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    const-string v1, "ProcessJob Msg Ack"

    const-string v2, "jobContext"

    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v2, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;

    invoke-direct {v2, v1}, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;-><init>(Ljava/lang/String;)V

    .line 10
    sget-object v1, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 11
    sget-object v3, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$$serializer;

    .line 12
    invoke-virtual {v1, v3, v2}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 13
    new-instance v10, Lcom/motorola/camera/background/common/msg/MsgParameters;

    sget-object v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 14
    sget-object v11, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 15
    iget v2, v11, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 16
    sget-object v3, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    move-object v1, v10

    move-object v4, v7

    move-object v6, v8

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    .line 18
    new-instance v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;

    invoke-direct {v1, v9, v10}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;-><init>(ILcom/motorola/camera/background/common/msg/MsgParameters;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v3, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 20
    iget-object v5, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    .line 21
    new-instance p2, Lcom/motorola/camera/background/common/msg/MsgParameters;

    .line 22
    iget v2, v11, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    move-object v1, p2

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    .line 24
    new-instance v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;

    .line 25
    iget v2, v7, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 26
    invoke-direct {v1, v2, p2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;-><init>(ILcom/motorola/camera/background/common/msg/MsgParameters;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$2;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    .line 28
    iget-wide v1, v7, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 29
    sget-object v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;

    invoke-virtual {p2, v1, v2, v3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateState(JLcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;)V

    .line 30
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$2;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    .line 31
    iget-wide v1, v7, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    const/4 v3, 0x1

    .line 32
    invoke-virtual {p2, v1, v2, v3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMarkForDelete(JZ)V

    .line 33
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$2;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    invoke-virtual {p2, v1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->setMProcessOwner(Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner;)V

    .line 34
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$2;->$this_state:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    sget-object p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    new-instance v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;

    invoke-direct {v1, v0}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "$receiver"

    .line 35
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "state"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    invoke-direct {p0, p2, v1}, Lcom/tinder/StateMachine$Graph$State$TransitionTo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
