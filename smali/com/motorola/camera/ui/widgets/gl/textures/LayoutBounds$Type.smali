.class public final enum Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;
.super Ljava/lang/Enum;
.source "LayoutBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

.field public static final enum FIXED:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

.field public static final enum WRAP_CONTENT:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;->FIXED:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    const-string v3, "MATCH_VIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    const-string v5, "WRAP_CONTENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;->WRAP_CONTENT:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    return-object v0
.end method
