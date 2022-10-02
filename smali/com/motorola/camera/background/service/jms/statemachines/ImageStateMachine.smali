.class public final Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;
.super Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;
.source "ImageStateMachine.kt"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final stateMachine:Lcom/tinder/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tinder/StateMachine<",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V
    .locals 6

    const-string v0, "jmsIntf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V

    .line 3
    new-instance p2, Lcom/tinder/StateMachine;

    new-instance v0, Lcom/tinder/StateMachine$GraphBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tinder/StateMachine$GraphBuilder;-><init>(Lcom/tinder/StateMachine$Graph;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/tinder/StateMachine$Graph;

    iget-object v2, v0, Lcom/tinder/StateMachine$GraphBuilder;->initialState:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/tinder/StateMachine$GraphBuilder;->stateDefinitions:Ljava/util/LinkedHashMap;

    const-string v4, "$this$toMap"

    .line 5
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 7
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsJVMKt;->toSingletonMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    goto :goto_0

    .line 9
    :cond_1
    sget-object v4, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 10
    :goto_0
    iget-object v0, v0, Lcom/tinder/StateMachine$GraphBuilder;->onTransitionListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v2, v4, v0}, Lcom/tinder/StateMachine$Graph;-><init>(Ljava/lang/Object;Ljava/util/Map;Ljava/util/List;)V

    .line 11
    invoke-direct {p2, p1, v1}, Lcom/tinder/StateMachine;-><init>(Lcom/tinder/StateMachine$Graph;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->stateMachine:Lcom/tinder/StateMachine;

    return-void

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getStateMachine()Lcom/tinder/StateMachine;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tinder/StateMachine<",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->stateMachine:Lcom/tinder/StateMachine;

    return-object p0
.end method
