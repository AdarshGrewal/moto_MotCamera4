.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;
.super Ljava/lang/Enum;
.source "IntListModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel$Companion;

.field public static final enum EXTERNAL_PREVIEW:Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

.field public static final enum STORAGE:Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;


# instance fields
.field public final getCameraType:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/motorola/camera/settings/CameraType;",
            ">;"
        }
    .end annotation
.end field

.field public final key:I

.field public final setting:Lcom/motorola/camera/settings/SettingsManager$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    .line 2
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "EXTERNAL_PREVIEW"

    const/4 v2, 0x0

    const v3, 0x7f110393

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v0, v7

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;-><init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/jvm/functions/Function0;I)V

    sput-object v7, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->EXTERNAL_PREVIEW:Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    .line 4
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    .line 5
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v9, "STORAGE"

    const/4 v10, 0x1

    const v11, 0x7f1103ae

    const/4 v13, 0x0

    const/4 v14, 0x4

    move-object v8, v0

    .line 6
    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;-><init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/jvm/functions/Function0;I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->STORAGE:Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    const/4 p5, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    .line 3
    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 4
    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    return-object v0
.end method
