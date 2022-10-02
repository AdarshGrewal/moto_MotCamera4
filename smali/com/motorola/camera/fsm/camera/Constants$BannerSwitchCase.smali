.class public final enum Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

.field public static final enum ENTER_HDR10_CASE:Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

.field public static final enum EXIT_HDR10_CASE:Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    const-string v1, "NONE_SWITCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    const-string v3, "EXIT_HDR10_CASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->EXIT_HDR10_CASE:Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    const-string v5, "ENTER_HDR10_CASE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->ENTER_HDR10_CASE:Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->$VALUES:[Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->$VALUES:[Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    return-object v0
.end method
