.class public final Lkotlinx/coroutines/UndispatchedCoroutine;
.super Lkotlinx/coroutines/internal/ScopeCoroutine;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/ScopeCoroutine<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,182:1\n55#2,13:183\n*S KotlinDebug\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n*L\n141#1:183,13\n*E\n"
.end annotation


# instance fields
.field public savedContext:Lkotlin/coroutines/CoroutineContext;

.field public savedOldValue:Ljava/lang/Object;


# virtual methods
.method public afterResume(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedContext:Lkotlin/coroutines/CoroutineContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedOldValue:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedContext:Lkotlin/coroutines/CoroutineContext;

    .line 4
    iput-object v1, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedOldValue:Ljava/lang/Object;

    .line 5
    :goto_0
    invoke-static {p1, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->recoverResult(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    throw v1
.end method

.method public final clearThreadContext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedContext:Lkotlin/coroutines/CoroutineContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedContext:Lkotlin/coroutines/CoroutineContext;

    .line 3
    iput-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedOldValue:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
