.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$sortRequests$4;
.super Lkotlin/jvm/internal/Lambda;
.source "JobDatabase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/service/jms/JobDatabase;->sortRequests(Ljava/util/List;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/background/service/jms/JobDatabase$sortRequests$4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobDatabase$sortRequests$4;

    invoke-direct {v0}, Lcom/motorola/camera/background/service/jms/JobDatabase$sortRequests$4;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobDatabase$sortRequests$4;->INSTANCE:Lcom/motorola/camera/background/service/jms/JobDatabase$sortRequests$4;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide p0, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->timeStamp:J

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method
