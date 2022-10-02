.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# static fields
.field public static final zza:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;->zza:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;->zza:Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    if-eqz v0, :cond_3

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzc()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb()V

    :cond_2
    return-void

    .line 9
    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 10
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhj;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;

    .line 11
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    .line 3
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;

    if-eqz v1, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;-><init>(I)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    move-result-object p2

    move-object v0, p2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    :goto_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhj;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;

    .line 11
    invoke-virtual {p2, p1, p3, p4, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;->zza:Ljava/lang/Class;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhj;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;

    .line 17
    invoke-virtual {p2, p1, p3, p4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 18
    :cond_3
    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;

    if-eqz v1, :cond_4

    .line 19
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;-><init>(I)V

    .line 20
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;->size()I

    move-result p2

    invoke-virtual {v1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;->addAll(ILjava/util/Collection;)Z

    .line 22
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhj;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;

    .line 23
    invoke-virtual {p2, p1, p3, p4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_4
    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    if-eqz v1, :cond_5

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    .line 25
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzc()Z

    move-result v2

    if-nez v2, :cond_5

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    move-result-object v0

    .line 27
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhj;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;

    .line 28
    invoke-virtual {p2, p1, p3, p4, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 29
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    .line 30
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez p2, :cond_6

    if-lez v1, :cond_6

    .line 31
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    if-gtz p2, :cond_7

    goto :goto_3

    :cond_7
    move-object p0, v0

    .line 32
    :goto_3
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhj;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;

    .line 33
    invoke-virtual {p2, p1, p3, p4, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
