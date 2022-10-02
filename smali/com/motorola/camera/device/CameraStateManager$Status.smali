.class public final enum Lcom/motorola/camera/device/CameraStateManager$Status;
.super Ljava/lang/Enum;
.source "CameraStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/CameraStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/device/CameraStateManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/device/CameraStateManager$Status;

.field public static final enum CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

.field public static final enum CLOSING:Lcom/motorola/camera/device/CameraStateManager$Status;

.field public static final enum OPEN:Lcom/motorola/camera/device/CameraStateManager$Status;

.field public static final enum UNUSED:Lcom/motorola/camera/device/CameraStateManager$Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/motorola/camera/device/CameraStateManager$Status;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/device/CameraStateManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/device/CameraStateManager$Status;->OPEN:Lcom/motorola/camera/device/CameraStateManager$Status;

    new-instance v1, Lcom/motorola/camera/device/CameraStateManager$Status;

    const-string v3, "CLOSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/device/CameraStateManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    new-instance v3, Lcom/motorola/camera/device/CameraStateManager$Status;

    const-string v5, "CLOSING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/device/CameraStateManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSING:Lcom/motorola/camera/device/CameraStateManager$Status;

    new-instance v5, Lcom/motorola/camera/device/CameraStateManager$Status;

    const-string v7, "UNUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/device/CameraStateManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/device/CameraStateManager$Status;->UNUSED:Lcom/motorola/camera/device/CameraStateManager$Status;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/motorola/camera/device/CameraStateManager$Status;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/motorola/camera/device/CameraStateManager$Status;->$VALUES:[Lcom/motorola/camera/device/CameraStateManager$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/device/CameraStateManager$Status;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/device/CameraStateManager$Status;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/device/CameraStateManager$Status;->$VALUES:[Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v0}, [Lcom/motorola/camera/device/CameraStateManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/device/CameraStateManager$Status;

    return-object v0
.end method
