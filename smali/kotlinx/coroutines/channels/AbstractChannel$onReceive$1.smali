.class public final Lkotlinx/coroutines/channels/AbstractChannel$onReceive$1;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/selects/SelectClause1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/AbstractChannel;->getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/selects/SelectClause1<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lkotlinx/coroutines/channels/AbstractChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/AbstractChannel<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/AbstractChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/AbstractChannel<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$onReceive$1;->this$0:Lkotlinx/coroutines/channels/AbstractChannel;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerSelectClause1(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$onReceive$1;->this$0:Lkotlinx/coroutines/channels/AbstractChannel;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    :goto_0
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 5
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v1

    instance-of v1, v1, Lkotlinx/coroutines/channels/Send;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isBufferEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 6
    new-instance v1, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;

    invoke-direct {v1, p0, p1, p2, v3}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;I)V

    .line 7
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V

    :cond_3
    if-eqz v2, :cond_0

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->pollSelectInternal(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->ALREADY_SELECTED:Ljava/lang/Object;

    if-ne v1, v2, :cond_5

    :goto_2
    return-void

    .line 11
    :cond_5
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_6

    goto :goto_0

    .line 12
    :cond_6
    sget-object v2, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne v1, v2, :cond_7

    goto :goto_0

    .line 13
    :cond_7
    instance-of v2, v1, Lkotlinx/coroutines/channels/Closed;

    if-nez v2, :cond_8

    .line 14
    invoke-static {p2, v1, v0}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    .line 15
    :cond_8
    check-cast v1, Lkotlinx/coroutines/channels/Closed;

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object p0

    sget-object p1, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->baseContinuationImplClassName:Ljava/lang/String;

    throw p0
.end method
