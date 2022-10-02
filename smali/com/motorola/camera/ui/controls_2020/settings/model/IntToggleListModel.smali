.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;
.super Ljava/lang/Enum;
.source "IntToggleListModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel$Companion;

.field public static final enum VIDEO_STABILIZATION:Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;


# instance fields
.field public final cameraType:Lcom/motorola/camera/settings/CameraType;

.field public final getSetting:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final iconCheckedId:Ljava/lang/Integer;

.field public final iconUncheckedId:Ljava/lang/Integer;

.field public final key:I

.field public final summary:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v9, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel$1;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel$1;

    const v0, 0x7f08020d

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v1, "VIDEO_STABILIZATION"

    const/4 v2, 0x0

    const v4, 0x7f1103b9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v5, v6

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;)V

    sput-object v9, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->VIDEO_STABILIZATION:Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Integer;",
            ">;>;I",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/settings/CameraType;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->getSetting:Lkotlin/jvm/functions/Function0;

    .line 3
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->key:I

    .line 4
    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->iconCheckedId:Ljava/lang/Integer;

    .line 5
    iput-object p6, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->iconUncheckedId:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->summary:Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    return-object v0
.end method
