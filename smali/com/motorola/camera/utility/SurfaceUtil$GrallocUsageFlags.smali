.class public abstract enum Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
.super Ljava/lang/Enum;
.source "SurfaceUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/SurfaceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GrallocUsageFlags"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;,
        Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$MTKG9X;,
        Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$QSM8250;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

.field public static final enum DEFAULT:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

.field public static final enum MTKG9X:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

.field public static final enum QSM8250:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->DEFAULT:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    .line 2
    new-instance v1, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$MTKG9X;

    const-string v3, "MTKG9X"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$MTKG9X;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->MTKG9X:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    .line 3
    new-instance v3, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$QSM8250;

    const-string v5, "QSM8250"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$QSM8250;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->QSM8250:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->$VALUES:[Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
    .locals 1

    const-class v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->$VALUES:[Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    return-object v0
.end method


# virtual methods
.method public abstract getUsage(ILcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J
.end method
