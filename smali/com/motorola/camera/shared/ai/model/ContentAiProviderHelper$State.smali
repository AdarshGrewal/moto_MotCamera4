.class public final enum Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;
.super Ljava/lang/Enum;
.source "ContentAiProviderHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

.field public static final enum CAMERA_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

.field public static final enum CAMERA_UPDATE_MANDATORY:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

.field public static final enum CONTENT_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

.field public static final enum CONTENT_UPDATE_MANDATORY:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

.field public static final enum NO_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;


# instance fields
.field public final isCompatible:Z

.field public final isUpdatable:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    const-string v1, "NO_UPDATE_AVAILABLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->NO_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    .line 2
    new-instance v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    const-string v4, "CAMERA_UPDATE_AVAILABLE"

    invoke-direct {v1, v4, v3, v3, v3}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->CAMERA_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    .line 3
    new-instance v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    const-string v5, "CAMERA_UPDATE_MANDATORY"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2, v3}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->CAMERA_UPDATE_MANDATORY:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    .line 4
    new-instance v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    const-string v7, "CONTENT_UPDATE_AVAILABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v3, v3}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->CONTENT_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    .line 5
    new-instance v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    const-string v9, "CONTENT_UPDATE_MANDATORY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2, v3}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->CONTENT_UPDATE_MANDATORY:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->isCompatible:Z

    iput-boolean p4, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->isUpdatable:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    return-object v0
.end method
