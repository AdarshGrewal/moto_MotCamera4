.class public Lkotlinx/coroutines/internal/ScopeCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "Scopes.kt"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/AbstractCoroutine<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;"
    }
.end annotation


# virtual methods
.method public afterCompletion(Ljava/lang/Object;)V
    .locals 2

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Landroidx/coordinatorlayout/R$style;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {p1, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->recoverResult(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, p1, p0, v1}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->resumeCancellableWith$default(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method

.method public afterResume(Ljava/lang/Object;)V
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-static {p1, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->recoverResult(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    throw p0
.end method

.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isScopedCoroutine()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
