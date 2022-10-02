.class public final enum Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;
.super Ljava/lang/Enum;
.source "MediaStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/callables/MediaStatusListener$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

.field public static final enum COMPLETION:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

.field public static final enum ERROR:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

.field public static final enum INFO:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    const-string v1, "COMPLETION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->COMPLETION:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    .line 2
    new-instance v1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->ERROR:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    .line 3
    new-instance v3, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    const-string v5, "INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->INFO:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->$VALUES:[Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->$VALUES:[Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    invoke-virtual {v0}, [Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    return-object v0
.end method
