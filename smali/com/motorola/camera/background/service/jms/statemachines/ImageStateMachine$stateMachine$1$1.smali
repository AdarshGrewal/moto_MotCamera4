.class public final Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageStateMachine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/tinder/StateMachine$GraphBuilder<",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;",
        ">.StateDefinitionBuilder<",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageStateMachine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageStateMachine.kt\ncom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1\n+ 2 StateMachine.kt\ncom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder\n+ 3 StateMachine.kt\ncom/tinder/StateMachine$Matcher$Companion\n*L\n1#1,263:1\n182#2:264\n165#2:265\n182#2:267\n165#2:268\n121#3:266\n121#3:269\n*S KotlinDebug\n*F\n+ 1 ImageStateMachine.kt\ncom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1\n*L\n32#1:264\n32#1:265\n71#1:267\n71#1:268\n32#1:266\n71#1:269\n*E\n"
.end annotation


# instance fields
.field public final synthetic $dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    const-string v0, "$this$state"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    invoke-direct {v0, v1, v2, p1}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;)V

    .line 4
    const-class v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;

    const-string v2, "clazz"

    .line 5
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v3, Lcom/tinder/StateMachine$Matcher;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {p1, v3, v0}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    .line 8
    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$2;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    invoke-direct {v0, v1, p0, p1}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$2;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;)V

    .line 9
    const-class p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;

    .line 10
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/tinder/StateMachine$Matcher;

    invoke-direct {v1, p0, v4}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
