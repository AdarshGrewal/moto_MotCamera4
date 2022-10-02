.class public final enum Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;
.super Ljava/lang/Enum;
.source "JobMgrScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/service/jms/JobMgrScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JobRetrySource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

.field public static final enum COPROC:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

.field public static final enum JMS:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    const-string v1, "JMS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;->JMS:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    .line 2
    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    const-string v3, "COPROC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;->COPROC:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;->$VALUES:[Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;->$VALUES:[Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    return-object v0
.end method
