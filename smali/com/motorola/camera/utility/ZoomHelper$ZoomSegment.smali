.class public final enum Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;
.super Ljava/lang/Enum;
.source "ZoomHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/ZoomHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

.field public static final enum M:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

.field public static final enum T:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

.field public static final enum UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

.field public static final enum W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    const-string v1, "UW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    new-instance v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    const-string v3, "W"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    new-instance v3, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    const-string v5, "T"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    new-instance v5, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    const-string v7, "M"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->$VALUES:[Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->$VALUES:[Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0}, [Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    return-object v0
.end method
