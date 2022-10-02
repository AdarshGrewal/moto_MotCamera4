.class public final enum Lcom/motorola/camera/ai/model/TipsModel;
.super Ljava/lang/Enum;
.source "TipsModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ai/model/TipsModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ai/model/TipsModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ai/model/TipsModel;

.field public static final enum BETTER_SELFIE:Lcom/motorola/camera/ai/model/TipsModel;

.field public static final Companion:Lcom/motorola/camera/ai/model/TipsModel$Companion;

.field public static final enum EYE_CATCHER:Lcom/motorola/camera/ai/model/TipsModel;

.field public static final enum INSTANT_REVIEW:Lcom/motorola/camera/ai/model/TipsModel;


# instance fields
.field public final description:I

.field public final imgDrawable:I

.field public final setting:Lcom/motorola/camera/settings/SettingsManager$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final title:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Lcom/motorola/camera/ai/model/TipsModel;

    .line 2
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "INSTANT_REVIEW"

    const/4 v2, 0x0

    const v3, 0x7f11020a

    const v4, 0x7f110219

    const v5, 0x7f0802d4

    move-object v0, v7

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ai/model/TipsModel;-><init>(Ljava/lang/String;IIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v7, Lcom/motorola/camera/ai/model/TipsModel;->INSTANT_REVIEW:Lcom/motorola/camera/ai/model/TipsModel;

    .line 4
    new-instance v0, Lcom/motorola/camera/ai/model/TipsModel;

    .line 5
    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v9, "EYE_CATCHER"

    const/4 v10, 0x1

    const v11, 0x7f110204

    const v12, 0x7f1101ec

    const v13, 0x7f0802d3

    move-object v8, v0

    .line 6
    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/ai/model/TipsModel;-><init>(Ljava/lang/String;IIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ai/model/TipsModel;->EYE_CATCHER:Lcom/motorola/camera/ai/model/TipsModel;

    .line 7
    new-instance v1, Lcom/motorola/camera/ai/model/TipsModel;

    const-string v16, "BETTER_SELFIE"

    const/16 v17, 0x2

    const v18, 0x7f1101f6

    const v19, 0x7f1101f5

    const v20, 0x7f0802d2

    const/16 v21, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ai/model/TipsModel;-><init>(Ljava/lang/String;IIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v1, Lcom/motorola/camera/ai/model/TipsModel;->BETTER_SELFIE:Lcom/motorola/camera/ai/model/TipsModel;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/motorola/camera/ai/model/TipsModel;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Lcom/motorola/camera/ai/model/TipsModel;->$VALUES:[Lcom/motorola/camera/ai/model/TipsModel;

    new-instance v0, Lcom/motorola/camera/ai/model/TipsModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ai/model/TipsModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/ai/model/TipsModel;->Companion:Lcom/motorola/camera/ai/model/TipsModel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/ai/model/TipsModel;->title:I

    .line 3
    iput p4, p0, Lcom/motorola/camera/ai/model/TipsModel;->description:I

    .line 4
    iput p5, p0, Lcom/motorola/camera/ai/model/TipsModel;->imgDrawable:I

    .line 5
    iput-object p6, p0, Lcom/motorola/camera/ai/model/TipsModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ai/model/TipsModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ai/model/TipsModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ai/model/TipsModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ai/model/TipsModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ai/model/TipsModel;->$VALUES:[Lcom/motorola/camera/ai/model/TipsModel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ai/model/TipsModel;

    return-object v0
.end method
