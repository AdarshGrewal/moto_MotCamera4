.class public final enum Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;
.super Ljava/lang/Enum;
.source "IqConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MfnrAnchorSelectionAlgos"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;

    const-string v3, "FIXED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;

    const-string v5, "NON_FIXED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;->$VALUES:[Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;->$VALUES:[Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;

    invoke-virtual {v0}, [Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/IqConfigManager$QcMfnrSetting$MfnrAnchorSelectionAlgos;

    return-object v0
.end method
