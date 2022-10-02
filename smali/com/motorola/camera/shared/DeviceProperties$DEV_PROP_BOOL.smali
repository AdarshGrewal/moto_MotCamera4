.class public final enum Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;
.super Ljava/lang/Enum;
.source "DeviceProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/shared/DeviceProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEV_PROP_BOOL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

.field public static final enum AUDIO_SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;


# instance fields
.field public mSet:Z

.field public final mSystemProperty:Ljava/lang/String;

.field public mValue:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    const-string v1, "AUDIO_SOUND_FORCED"

    const/4 v2, 0x0

    const-string v3, "audio.camerasound.force"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->AUDIO_SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->$VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mSystemProperty:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mSet:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->$VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    invoke-virtual {v0}, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    return-object v0
.end method
