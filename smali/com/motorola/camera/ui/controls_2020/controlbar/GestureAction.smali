.class public final enum Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;
.super Ljava/lang/Enum;
.source "GestureAction.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

.field public static final enum Close:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

.field public static final enum None:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

.field public static final enum Open:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->None:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    const-string v3, "Open"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Open:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    const-string v5, "Close"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Close:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    return-object v0
.end method
