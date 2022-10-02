.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz<",
            "**>;"
        }
    .end annotation
.end field

.field public final zzc:Z

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz<",
            "**>;",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq<",
            "*>;",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    .line 1
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzc:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    move-result-object p0

    const/4 p1, 0x0

    move v1, p1

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzb()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 6
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzo(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzc()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzo(Ljava/util/Map$Entry;)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzc:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;->zzT()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcj;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzg(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zze(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zza:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzh(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzc:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    .line 7
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzE(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/play/core/assetpacks/zzcv;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/play/core/assetpacks/zzcv;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_a

    .line 5
    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result v4

    iget p3, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    const/16 v3, 0xb

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    and-int/lit8 v3, p3, 0x7

    if-ne v3, v5, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    iget-object v3, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zzb:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    ushr-int/lit8 v6, p3, 0x3

    .line 6
    invoke-virtual {v2, v3, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 7
    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;

    .line 8
    move-object v2, v8

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 10
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;

    move-result-object p3

    .line 11
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;[BIILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p3

    .line 12
    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    iget-object v3, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    .line 13
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 14
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;Lcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p3

    :goto_1
    move-object v2, v8

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzn(I[BIILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_8

    .line 16
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result v4

    iget v6, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    and-int/lit8 v7, v6, 0x7

    ushr-int/lit8 v8, v6, 0x3

    if-eq v8, v5, :cond_6

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 17
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;

    .line 18
    move-object v7, v2

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    iget-object v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 19
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 20
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;

    move-result-object v6

    .line 21
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;[BIILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result v4

    iget-object v6, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    iget-object v7, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    .line 22
    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v7, v5, :cond_7

    .line 23
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zza([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result v4

    iget-object v3, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    .line 24
    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    goto :goto_2

    :cond_6
    if-nez v7, :cond_7

    .line 25
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result v4

    iget p3, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    iget-object v6, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zzb:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 26
    invoke-virtual {v2, v6, v7, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_7
    :goto_3
    const/16 v7, 0xc

    if-eq v6, v7, :cond_8

    .line 27
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzn(I[BIILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result v4

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v5

    .line 28
    invoke-virtual {v1, p3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zzh(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    .line 29
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0
.end method

.method public final zzi(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    move-result-object p0

    .line 6
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final zzj(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzk()Z

    move-result p0

    return p0
.end method

.method public final zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzf()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzg()Z

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzf()Z

    .line 7
    instance-of v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzes;

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzes;

    .line 9
    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzes;->zza:Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeu;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    move-result-object v1

    .line 12
    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;->zzw(ILjava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;->zzw(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Found invalid MessageSet item."

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;)V

    return-void
.end method
