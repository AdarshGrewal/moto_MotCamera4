.class public final enum Lcom/motorola/camera/JsonConfig$Mode;
.super Ljava/lang/Enum;
.source "JsonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/JsonConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/JsonConfig$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/JsonConfig$Mode;

.field public static final enum DEPTH_DUAL:Lcom/motorola/camera/JsonConfig$Mode;

.field public static final enum DUAL:Lcom/motorola/camera/JsonConfig$Mode;

.field public static final enum NORMAL:Lcom/motorola/camera/JsonConfig$Mode;

.field public static final enum ZSL_DEPTH_DUAL:Lcom/motorola/camera/JsonConfig$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/motorola/camera/JsonConfig$Mode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/JsonConfig$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/JsonConfig$Mode;->NORMAL:Lcom/motorola/camera/JsonConfig$Mode;

    new-instance v1, Lcom/motorola/camera/JsonConfig$Mode;

    const-string v3, "DUAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/JsonConfig$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/JsonConfig$Mode;->DUAL:Lcom/motorola/camera/JsonConfig$Mode;

    new-instance v3, Lcom/motorola/camera/JsonConfig$Mode;

    const-string v5, "DEPTH_DUAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/JsonConfig$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/JsonConfig$Mode;->DEPTH_DUAL:Lcom/motorola/camera/JsonConfig$Mode;

    new-instance v5, Lcom/motorola/camera/JsonConfig$Mode;

    const-string v7, "ZSL_DEPTH_DUAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/JsonConfig$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/JsonConfig$Mode;->ZSL_DEPTH_DUAL:Lcom/motorola/camera/JsonConfig$Mode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/motorola/camera/JsonConfig$Mode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/motorola/camera/JsonConfig$Mode;->$VALUES:[Lcom/motorola/camera/JsonConfig$Mode;

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

.method public static getMode(ZZZZZ)Lcom/motorola/camera/JsonConfig$Mode;
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/JsonConfig$Mode;->ZSL_DEPTH_DUAL:Lcom/motorola/camera/JsonConfig$Mode;

    sget-object v1, Lcom/motorola/camera/JsonConfig$Mode;->DEPTH_DUAL:Lcom/motorola/camera/JsonConfig$Mode;

    sget-object v2, Lcom/motorola/camera/JsonConfig$Mode;->DUAL:Lcom/motorola/camera/JsonConfig$Mode;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    return-object v2

    :cond_2
    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    return-object v2

    .line 2
    :cond_5
    sget-object p0, Lcom/motorola/camera/JsonConfig$Mode;->NORMAL:Lcom/motorola/camera/JsonConfig$Mode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/JsonConfig$Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/JsonConfig$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/JsonConfig$Mode;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/JsonConfig$Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/JsonConfig$Mode;->$VALUES:[Lcom/motorola/camera/JsonConfig$Mode;

    invoke-virtual {v0}, [Lcom/motorola/camera/JsonConfig$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/JsonConfig$Mode;

    return-object v0
.end method
