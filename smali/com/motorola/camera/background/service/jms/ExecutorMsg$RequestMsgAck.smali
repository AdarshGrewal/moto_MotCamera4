.class public final Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;
.super Lcom/motorola/camera/background/service/jms/ExecutorMsg;
.source "JobMgrScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/service/jms/ExecutorMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestMsgAck"
.end annotation


# instance fields
.field public final results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/motorola/camera/background/service/jms/ExecutorMsg;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;->results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;->results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;->results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;->results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "RequestMsgAck(results="

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;->results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
