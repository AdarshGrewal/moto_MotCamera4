.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;
.super Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf$Stub;
.source "PostProcServiceImpl.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;,
        Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobResult;,
        Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;,
        Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$MsgHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPostProcServiceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PostProcServiceImpl.kt\ncom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,526:1\n1858#2,3:527\n*S KotlinDebug\n*F\n+ 1 PostProcServiceImpl.kt\ncom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl\n*L\n504#1:527,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

.field public static final TAG:Ljava/lang/String;

.field public static final identity:Lcom/motorola/camera/background/common/RegisteredProcDef;


# instance fields
.field public mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

.field public mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

.field public final mJobCancelsFifo:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final mJobRequestsFifo:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final mJobResultsFifo:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobResult;",
            ">;"
        }
    .end annotation
.end field

.field public final mNumJobWorkers:I

.field public final mSharedPreferenceslistener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public mState:I

.field public final mWorkerCancelsFifo:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final mWorkerRequestsFifo:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->POST_PROCESS_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf$Stub;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/Map;

    .line 5
    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-direct {v0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    const/16 p1, 0x32

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v0, v1}, Landroidx/room/RoomMasterTable;->Channel$default(IILkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJobRequestsFifo:Lkotlinx/coroutines/channels/Channel;

    .line 7
    invoke-static {p1, v2, v0, v1}, Landroidx/room/RoomMasterTable;->Channel$default(IILkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJobCancelsFifo:Lkotlinx/coroutines/channels/Channel;

    const/4 v3, 0x1

    .line 8
    invoke-static {v3, v2, v0, v1}, Landroidx/room/RoomMasterTable;->Channel$default(IILkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mWorkerRequestsFifo:Lkotlinx/coroutines/channels/Channel;

    .line 9
    invoke-static {v3, v2, v0, v1}, Landroidx/room/RoomMasterTable;->Channel$default(IILkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mWorkerCancelsFifo:Lkotlinx/coroutines/channels/Channel;

    .line 10
    invoke-static {p1, v2, v0, v1}, Landroidx/room/RoomMasterTable;->Channel$default(IILkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJobResultsFifo:Lkotlinx/coroutines/channels/Channel;

    .line 11
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-static {v0, v3, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    .line 13
    iput v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mNumJobWorkers:I

    .line 14
    new-instance p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$mSharedPreferenceslistener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$mSharedPreferenceslistener$1;-><init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;)V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mSharedPreferenceslistener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final access$handleJobAllCancel(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 0

    .line 1
    iget p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2, p3, p2}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    .line 6
    invoke-interface {p1, p2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->initializeCoroutines()V

    .line 8
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    .line 9
    :cond_0
    sget-object p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "processJobCancel: clientId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is unknown"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    .line 11
    :cond_1
    sget-object p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "processJobCancel: service not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_0
    return-object p0
.end method

.method public static final access$handleJobCancel(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 0

    .line 1
    iget p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 p4, 0x1

    if-ne p2, p4, :cond_1

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    .line 4
    new-instance p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleJobCancel$1;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p0, p4}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleJobCancel$1;-><init>(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 5
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "processJobCancel: clientId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is unknown"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    .line 8
    :cond_1
    sget-object p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "processJobCancel: service not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_0
    return-object p0
.end method

.method public static final access$handleJobComplete(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/Map;

    .line 2
    iget v1, p2, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/Map;

    .line 5
    iget v1, p2, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->client:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    if-nez v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 9
    iget v2, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 10
    invoke-interface/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;

    .line 11
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/Map;

    .line 12
    iget p1, p2, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    .line 14
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->jobs:Ljava/util/List;

    .line 15
    new-instance p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/background/common/TaskId;)V

    invoke-interface {p0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 16
    :goto_1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    return-object p0
.end method

.method public static final access$handleProcessJob(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 8

    .line 1
    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v7, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, v7

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;-><init>(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;I)V

    iput-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->jobs:Ljava/util/List;

    .line 6
    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    .line 8
    new-instance p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, v0, p3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;-><init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 9
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_1

    .line 10
    :cond_1
    sget-object p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "processJob: clientId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is unknown"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_1

    .line 12
    :cond_2
    sget-object p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "processJob: service not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final createModelResourcesList(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "mlModels.keySet()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "{\"model-list\":{"

    move v4, v0

    move v3, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_2

    check-cast v5, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    .line 4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v8, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "ENGLISH"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_0

    const-string v4, ", "

    .line 7
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 8
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" : {"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\"fd\":"

    .line 9
    invoke-static {v2, v4}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "\"offset\":"

    .line 10
    invoke-static {v2, v5}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    long-to-int v5, v7

    invoke-static {v2, v5, v4}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\"size\":"

    .line 11
    invoke-static {v2, v4}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    long-to-int v3, v3

    const/16 v4, 0x7d

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v2

    move v4, v1

    :cond_1
    move v3, v6

    goto/16 :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    const-string/jumbo p0, "}}"

    .line 13
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized deinitialize()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    .line 3
    new-instance v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$MsgHandler;

    invoke-direct {v2, p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$MsgHandler;-><init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;)V

    .line 4
    invoke-virtual {v0, v2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->deleteClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {v0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->cleanUp()V

    .line 6
    invoke-static {}, Lcom/motorola/camera/background/common/ReturnCode;->values()[Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {v2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->deinitialize()I

    move-result v2

    aget-object v0, v0, v2

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v3, v2, v3}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    .line 10
    invoke-interface {v0, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "com.motorola.camera_preferences"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mSharedPreferenceslistener:Lkotlin/jvm/functions/Function2;

    new-instance v3, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 14
    iput v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "deinitialize: service already deinitialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    return-object p0
.end method

.method public declared-synchronized initialize(Ljava/lang/String;[BLandroid/os/Bundle;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "product"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "staticConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "models"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/motorola/camera/background/common/ReturnCode;->values()[Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->initialize(Ljava/lang/String;[B)I

    move-result p1

    aget-object p1, v0, p1

    .line 3
    sget-object p2, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    if-eq p1, p2, :cond_0

    .line 4
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->FAILED_TRANSACTION:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 5
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "com.motorola.camera_preferences"

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mSharedPreferenceslistener:Lkotlin/jvm/functions/Function2;

    new-instance v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    .line 8
    new-instance v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$MsgHandler;

    invoke-direct {v2, p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$MsgHandler;-><init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;)V

    .line 9
    invoke-virtual {v0, v2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->addClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->initializeCoroutines()V

    .line 11
    iput v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    .line 12
    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->updateDebugMasks(Landroid/content/SharedPreferences;)V

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {p0, p3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->createModelResourcesList(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setMlModelsList(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    return-object p2

    .line 15
    :cond_1
    :try_start_2
    sget-object p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "initialize: service already initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->FAILED_TRANSACTION:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final initializeCoroutines()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mNumJobWorkers:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mWorkerRequestsFifo:Lkotlinx/coroutines/channels/Channel;

    .line 3
    iget-object v4, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mWorkerCancelsFifo:Lkotlinx/coroutines/channels/Channel;

    .line 4
    iget-object v6, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJobResultsFifo:Lkotlinx/coroutines/channels/Channel;

    .line 5
    new-instance v10, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;

    const/4 v12, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x0

    const/4 v11, 0x3

    const/4 v9, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJobRequestsFifo:Lkotlinx/coroutines/channels/Channel;

    iget-object v4, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJobCancelsFifo:Lkotlinx/coroutines/channels/Channel;

    .line 7
    iget-object v6, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mWorkerRequestsFifo:Lkotlinx/coroutines/channels/Channel;

    iget-object v7, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mWorkerCancelsFifo:Lkotlinx/coroutines/channels/Channel;

    iget-object v5, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJobResultsFifo:Lkotlinx/coroutines/channels/Channel;

    .line 8
    new-instance v11, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;

    const/4 v8, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$MsgHandler;

    invoke-direct {v0, p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$MsgHandler;-><init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;)V

    return-object v0
.end method

.method public declared-synchronized registerClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;ILjava/lang/String;)I
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->client:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    .line 4
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    monitor-exit p0

    return v2

    .line 6
    :cond_1
    :try_start_1
    new-instance v6, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    sget-object v5, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;-><init>(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;ILjava/lang/String;Ljava/util/List;Lcom/motorola/camera/background/common/Priority;)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return p2

    .line 11
    :cond_2
    :try_start_2
    sget-object p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "registerClient: service not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterClient(I)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterClient("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->jobs:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;

    .line 8
    sget-object v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "WARNING: unregister client with stale job: "

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 10
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v1, "unregisterClient: unknown clientId="

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo p1, "unregisterClient: service not initialized"

    .line 14
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final updateDebugMasks(Landroid/content/SharedPreferences;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const-string v1, "com.motorola.camera.mcf_debug_logdd_mask"

    .line 2
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "com.motorola.camera.mcf_debug_logad_mask"

    const-string v3, "0"

    .line 3
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.motorola.camera.mcf_debug_mask0"

    .line 4
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "com.motorola.camera.mcf_debug_mask1"

    .line 5
    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "com.motorola.camera.mcf_debug_mask2"

    .line 6
    invoke-interface {p1, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v5, 0x200

    const-string v6, "com.motorola.camera.mcf_debug_mask3-jpegDumpApp6"

    .line 7
    invoke-interface {p1, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 8
    iget-object v5, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {v5, v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setLogDDFlag(I)I

    if-eqz v2, :cond_0

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setLogADFlag(Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {p0, v3, v4, v0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setDebugDumpFlags(IIII)I

    :cond_1
    return-void
.end method
