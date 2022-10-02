.class public abstract Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;
.super Ljava/lang/Object;
.source "StateMachineBase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Unknown;,
        Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Init;,
        Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;,
        Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;,
        Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxCoProcJobComplete;,
        Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;,
        Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;,
        Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxSrcClientJobComplete;,
        Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;,
        Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$RemoveJob;,
        Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;
    }
.end annotation


# static fields
.field public static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion$$cachedSerializer$delegate$1;

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
