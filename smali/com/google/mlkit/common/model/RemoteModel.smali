.class public abstract Lcom/google/mlkit/common/model/RemoteModel;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    new-instance v1, Ljava/util/EnumMap;

    .line 1
    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/EnumMap;

    .line 2
    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of p0, p1, Lcom/google/mlkit/common/model/RemoteModel;

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/mlkit/common/model/RemoteModel;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-static {p0, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-static {p0, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {p0, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p0, v0

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    aput-object v1, p0, v0

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_common/zzx;

    const-string v0, "RemoteModel"

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzx;-><init>(Ljava/lang/String;)V

    const-string v0, "modelName"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzx;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzx;

    const-string v0, "baseModel"

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzx;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzx;

    const-string v0, "modelType"

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzx;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzx;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzx;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
