.class public final Lcom/google/android/gms/internal/mlkit_common/zzx;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Lcom/google/android/gms/internal/mlkit_common/zzv;

.field public zzc:Lcom/google/android/gms/internal/mlkit_common/zzv;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzx;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzv;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzx;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzv;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzx;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzx;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzx;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzv;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzv;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzv;

    const-string v1, ""

    :goto_0
    if-eqz p0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzv;->zzb:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzv;->zza:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 5
    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzv;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzv;

    const-string v1, ", "

    goto :goto_0

    :cond_2
    const/16 p0, 0x7d

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzx;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    new-instance p2, Lcom/google/android/gms/internal/mlkit_common/zzv;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_common/zzv;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzx;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzv;

    .line 1
    iput-object p2, v0, Lcom/google/android/gms/internal/mlkit_common/zzv;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzv;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzx;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzv;

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/google/android/gms/internal/mlkit_common/zzv;->zzb:Ljava/lang/Object;

    iput-object p1, p2, Lcom/google/android/gms/internal/mlkit_common/zzv;->zza:Ljava/lang/String;

    return-object p0
.end method
