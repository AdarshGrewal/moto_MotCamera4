.class public final enum Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;
.super Ljava/lang/Enum;
.source "ExposureBracketUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAM_ANTIBANDING_HAL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

.field public static final enum MODE_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

.field public static final enum MODE_60HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

.field public static final enum MODE_AUTO:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

.field public static final enum MODE_AUTO_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

.field public static final enum MODE_AUTO_60HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

.field public static final enum MODE_MAX:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

.field public static final enum OFF:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->OFF:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    .line 2
    new-instance v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    const-string v3, "MODE_60HZ"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->MODE_60HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    .line 3
    new-instance v3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    const-string v5, "MODE_50HZ"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->MODE_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    .line 4
    new-instance v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    const-string v7, "MODE_AUTO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->MODE_AUTO:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    .line 5
    new-instance v7, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    const-string v9, "MODE_AUTO_50HZ"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->MODE_AUTO_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    .line 6
    new-instance v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    const-string v11, "MODE_AUTO_60HZ"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->MODE_AUTO_60HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    .line 7
    new-instance v11, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    const-string v13, "MODE_MAX"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->MODE_MAX:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->$VALUES:[Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;
    .locals 1

    const-class v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;
    .locals 1

    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->$VALUES:[Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    return-object v0
.end method
