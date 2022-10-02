.class public final enum Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;
.super Ljava/lang/Enum;
.source "JobMgrService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/service/jms/JobMgrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

.field public static final enum DEINITIALIZED:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

.field public static final enum INITIALIZED:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;->INITIALIZED:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    const-string v3, "DEINITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;->DEINITIALIZED:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;->$VALUES:[Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;->$VALUES:[Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    return-object v0
.end method
