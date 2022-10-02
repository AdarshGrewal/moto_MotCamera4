.class public Lkotlinx/coroutines/channels/ActorKt;
.super Ljava/lang/Object;
.source "Actor.kt"


# direct methods
.method public static actor$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/channels/SendChannel;
    .locals 3

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    .line 1
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    and-int/lit8 v0, p6, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 v0, p6, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move p3, v2

    :cond_2
    and-int/lit8 p6, p6, 0x8

    const/4 v0, 0x0

    if-eqz p6, :cond_3

    move-object p4, v0

    .line 2
    :cond_3
    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineContextKt;->newCoroutineContext(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    const/4 p1, 0x6

    .line 3
    invoke-static {p2, v1, v0, p1}, Landroidx/room/RoomMasterTable;->Channel$default(IILkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    .line 4
    invoke-static {p3}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->kotlinx$coroutines$CoroutineStart$v$isLazy(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5
    new-instance p2, Lkotlinx/coroutines/channels/LazyActorCoroutine;

    invoke-direct {p2, p0, p1, p5}, Lkotlinx/coroutines/channels/LazyActorCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/Channel;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 6
    :cond_4
    new-instance p2, Lkotlinx/coroutines/channels/ActorCoroutine;

    invoke-direct {p2, p0, p1, v2}, Lkotlinx/coroutines/channels/ActorCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/Channel;Z)V

    :goto_0
    if-eqz p4, :cond_5

    .line 7
    invoke-virtual {p2, v1, v2, p4}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 8
    :cond_5
    invoke-virtual {p2, p3, p2, p5}, Lkotlinx/coroutines/AbstractCoroutine;->start$enumunboxing$(ILjava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-object p2
.end method

.method public static getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SystemSetting"

    const-string p2, "getMethod"

    .line 2
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
