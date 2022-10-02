.class public final enum Lcom/google/mlkit/common/sdkinternal/model/BaseModel;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@17.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mlkit/common/sdkinternal/model/BaseModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic zzc:[Lcom/google/mlkit/common/sdkinternal/model/BaseModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    const-string v1, "FACE_DETECTION"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    const-string v3, "SMART_REPLY"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    const-string v5, "TRANSLATE"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    const-string v7, "ENTITY_EXTRACTION"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8}, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->zzc:[Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

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

.method public static values()[Lcom/google/mlkit/common/sdkinternal/model/BaseModel;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->zzc:[Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    .line 1
    invoke-virtual {v0}, [Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    return-object v0
.end method
