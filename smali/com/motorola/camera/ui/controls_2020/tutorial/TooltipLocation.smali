.class public final enum Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;
.super Ljava/lang/Enum;
.source "TooltipLocation.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

.field public static final enum BOTTOM_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

.field public static final enum BOTTOM_LEFT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

.field public static final enum BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

.field public static final enum TOP_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

.field public static final enum TOP_LEFT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

.field public static final enum TOP_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;


# instance fields
.field public mRes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    const v3, 0x7f0802da

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_LEFT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const-string v4, "TOP_CENTER"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    .line 3
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const-string v6, "TOP_RIGHT"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    .line 4
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const-string v6, "BOTTOM_LEFT"

    const/4 v8, 0x3

    const v9, 0x7f0802db

    invoke-direct {v3, v6, v8, v9}, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_LEFT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    .line 5
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const-string v10, "BOTTOM_CENTER"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v9}, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    .line 6
    new-instance v10, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const-string v12, "BOTTOM_RIGHT"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v9}, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const/4 v9, 0x6

    new-array v9, v9, [Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    aput-object v0, v9, v2

    aput-object v1, v9, v5

    aput-object v4, v9, v7

    aput-object v3, v9, v8

    aput-object v6, v9, v11

    aput-object v10, v9, v13

    sput-object v9, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const p1, 0x7f0802db

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->mRes:I

    .line 3
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->mRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    return-object v0
.end method
