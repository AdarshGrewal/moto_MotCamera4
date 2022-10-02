.class public final Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;
.super Lkotlinx/coroutines/internal/OpDescriptor;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrepareOp"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,667:1\n1#2:668\n*E\n"
.end annotation


# instance fields
.field public final affected:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

.field public final desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

.field public final next:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/OpDescriptor;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->affected:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->next:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 4
    iput-object p3, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    return-void
.end method


# virtual methods
.method public getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/AtomicOp<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    .line 2
    iget-object p0, p0, Lkotlinx/coroutines/internal/AtomicDesc;->atomicOp:Lkotlinx/coroutines/internal/AtomicOp;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "atomicOp"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public perform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->onPrepare(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedList_commonKt;->REMOVE_PREPARED:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->next:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->access$removed(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/Removed;

    move-result-object v3

    .line 6
    sget-object v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p1, p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->onRemoved(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 8
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    :cond_0
    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/internal/AtomicOp;->decide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/AtomicOp;->getConsensus()Ljava/lang/Object;

    move-result-object v0

    .line 11
    :goto_0
    sget-object v1, Lkotlinx/coroutines/internal/AtomicKt;->NO_DECISION:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    iget-object v1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->next:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->updatedNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->next:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 14
    :goto_1
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PrepareOp(op="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
