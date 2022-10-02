.class public final enum Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;
.super Ljava/lang/Enum;
.source "InAppUpdateUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/InAppUpdateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateStateAvailability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

.field public static final enum RETRY_UPDATE_FAILED:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

.field public static final enum UPDATE_AVAILABLE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

.field public static final enum UPDATE_STATE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

.field public static final enum UPDATE_UNAVAILABLE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    const-string v1, "UPDATE_AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_AVAILABLE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    .line 2
    new-instance v1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    const-string v3, "UPDATE_UNAVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_UNAVAILABLE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    .line 3
    new-instance v3, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    const-string v5, "RETRY_UPDATE_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->RETRY_UPDATE_FAILED:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    .line 4
    new-instance v5, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    const-string v7, "UPDATE_STATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_STATE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->$VALUES:[Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;
    .locals 1

    const-class v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->$VALUES:[Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    return-object v0
.end method
