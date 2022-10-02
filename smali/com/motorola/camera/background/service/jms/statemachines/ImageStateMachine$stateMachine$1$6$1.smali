.class public final Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageStateMachine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;",
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
.field public final synthetic $this_state:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tinder/StateMachine$GraphBuilder<",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;",
            ">.StateDefinitionBuilder<",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tinder/StateMachine$GraphBuilder<",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;",
            ">.StateDefinitionBuilder<",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6$1;->$this_state:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;

    check-cast p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;

    const-string v0, "$this$on"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "State_CancelJob: Event_onCancelJob: Cancelling Job"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p2, p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 6
    iget-object p2, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 7
    iget-wide v0, p2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6$1;->$this_state:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    sget-object v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;

    new-instance v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;

    invoke-direct {v3, v0, v1, p2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;-><init>(JLcom/motorola/camera/background/common/TaskId;)V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "$receiver"

    .line 9
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "state"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    invoke-direct {p0, v2, v3}, Lcom/tinder/StateMachine$Graph$State$TransitionTo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
