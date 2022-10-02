.class public final enum Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;
.super Ljava/lang/Enum;
.source "ExposureBracketUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AntibandingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

.field public static final enum ILLUMINANT_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

.field public static final enum ILLUMINANT_60HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

.field public static final enum NONE:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->NONE:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    .line 2
    new-instance v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    const-string v3, "ILLUMINANT_50HZ"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->ILLUMINANT_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    .line 3
    new-instance v3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    const-string v5, "ILLUMINANT_60HZ"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->ILLUMINANT_60HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->$VALUES:[Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;
    .locals 1

    const-class v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;
    .locals 1

    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->$VALUES:[Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    return-object v0
.end method
