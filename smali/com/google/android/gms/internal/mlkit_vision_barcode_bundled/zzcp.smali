.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# direct methods
.method public static zza([BILcom/google/android/play/core/assetpacks/zzcv;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p1

    iget v0, p2, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    if-ltz v0, :cond_2

    .line 2
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    iput-object p0, p2, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    return p1

    .line 4
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->zzr([BII)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 5
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0

    .line 6
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0
.end method

.method public static zzb([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;[BIIILcom/google/android/play/core/assetpacks/zzcv;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 4
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzc(Ljava/lang/Object;[BIIILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p1

    .line 5
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzf(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    return p1
.end method

.method public static zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;[BIILcom/google/android/play/core/assetpacks/zzcv;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    .line 2
    invoke-static {p2, p1, v0, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzk(I[BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result v0

    iget p2, p4, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;->zze()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    .line 4
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;->zzh(Ljava/lang/Object;[BIILcom/google/android/play/core/assetpacks/zzcv;)V

    .line 5
    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;->zzf(Ljava/lang/Object;)V

    iput-object p3, p4, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    return p2

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0
.end method

.method public static zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;Lcom/google/android/play/core/assetpacks/zzcv;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi<",
            "*>;I[BII",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem<",
            "*>;",
            "Lcom/google/android/play/core/assetpacks/zzcv;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;[BIILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p3

    iget-object v0, p6, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    .line 2
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    .line 3
    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result v0

    iget v1, p6, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;[BIILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p3

    iget-object v0, p6, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    .line 5
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public static zzf([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;Lcom/google/android/play/core/assetpacks/zzcv;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem<",
            "*>;",
            "Lcom/google/android/play/core/assetpacks/zzcv;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;

    .line 2
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p1

    iget v0, p3, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 3
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p1

    iget v1, p3, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    .line 4
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;->zzg(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 5
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0
.end method

.method public static zzg([BILcom/google/android/play/core/assetpacks/zzcv;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p1

    iget v0, p2, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    .line 2
    iput-object p0, p2, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0
.end method

.method public static zzh([BILcom/google/android/play/core/assetpacks/zzcv;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p1

    iget v0, p2, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    if-ltz v0, :cond_11

    if-nez v0, :cond_0

    const-string p0, ""

    .line 2
    iput-object p0, p2, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    return p1

    .line 3
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhm;

    .line 4
    array-length v1, p0

    or-int v2, p1, v0

    sub-int v3, v1, p1

    sub-int/2addr v3, v0

    or-int/2addr v2, v3

    const/4 v3, 0x0

    if-ltz v2, :cond_10

    add-int v1, p1, v0

    .line 5
    new-array v0, v0, [C

    move v2, v3

    :goto_0
    if-ge p1, v1, :cond_2

    .line 6
    aget-byte v4, p0, p1

    invoke-static {v4}, Landroidx/recyclerview/R$dimen;->zzd(B)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v2, 0x1

    int-to-char v4, v4

    .line 7
    aput-char v4, v0, v2

    move v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    if-ge p1, v1, :cond_f

    add-int/lit8 v4, p1, 0x1

    .line 8
    aget-byte p1, p0, p1

    invoke-static {p1}, Landroidx/recyclerview/R$dimen;->zzd(B)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v5, v2, 0x1

    int-to-char p1, p1

    .line 9
    aput-char p1, v0, v2

    move p1, v4

    :goto_2
    move v2, v5

    if-ge p1, v1, :cond_2

    .line 10
    aget-byte v4, p0, p1

    invoke-static {v4}, Landroidx/recyclerview/R$dimen;->zzd(B)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v2, 0x1

    int-to-char v4, v4

    .line 11
    aput-char v4, v0, v2

    goto :goto_2

    :cond_4
    const/16 v5, -0x20

    if-ge p1, v5, :cond_7

    if-ge v4, v1, :cond_6

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    .line 12
    aget-byte v4, p0, v4

    const/16 v7, -0x3e

    if-lt p1, v7, :cond_5

    .line 13
    invoke-static {v4}, Landroidx/recyclerview/R$dimen;->zze(B)Z

    move-result v7

    if-nez v7, :cond_5

    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr p1, v4

    int-to-char p1, p1

    .line 14
    aput-char p1, v0, v2

    move p1, v5

    move v2, v6

    goto :goto_1

    .line 15
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0

    .line 16
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0

    :cond_7
    const/16 v6, -0x10

    if-ge p1, v6, :cond_c

    add-int/lit8 v6, v1, -0x1

    if-ge v4, v6, :cond_b

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v2, 0x1

    .line 17
    aget-byte v4, p0, v4

    aget-byte v6, p0, v6

    .line 18
    invoke-static {v4}, Landroidx/recyclerview/R$dimen;->zze(B)Z

    move-result v9

    if-nez v9, :cond_a

    const/16 v9, -0x60

    if-ne p1, v5, :cond_8

    if-lt v4, v9, :cond_a

    move p1, v5

    :cond_8
    const/16 v5, -0x13

    if-ne p1, v5, :cond_9

    if-ge v4, v9, :cond_a

    move p1, v5

    :cond_9
    invoke-static {v6}, Landroidx/recyclerview/R$dimen;->zze(B)Z

    move-result v5

    if-nez v5, :cond_a

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr p1, v4

    and-int/lit8 v4, v6, 0x3f

    or-int/2addr p1, v4

    int-to-char p1, p1

    .line 19
    aput-char p1, v0, v2

    move p1, v7

    move v2, v8

    goto/16 :goto_1

    .line 20
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0

    .line 21
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0

    :cond_c
    add-int/lit8 v5, v1, -0x2

    if-ge v4, v5, :cond_e

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v6, 0x1

    .line 22
    aget-byte v4, p0, v4

    aget-byte v5, p0, v5

    aget-byte v6, p0, v6

    .line 23
    invoke-static {v4}, Landroidx/recyclerview/R$dimen;->zze(B)Z

    move-result v8

    if-nez v8, :cond_d

    shl-int/lit8 v8, p1, 0x1c

    add-int/lit8 v9, v4, 0x70

    add-int/2addr v9, v8

    shr-int/lit8 v8, v9, 0x1e

    if-nez v8, :cond_d

    invoke-static {v5}, Landroidx/recyclerview/R$dimen;->zze(B)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-static {v6}, Landroidx/recyclerview/R$dimen;->zze(B)Z

    move-result v8

    if-nez v8, :cond_d

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x12

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr p1, v4

    and-int/lit8 v4, v5, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr p1, v4

    and-int/lit8 v4, v6, 0x3f

    or-int/2addr p1, v4

    ushr-int/lit8 v4, p1, 0xa

    const v5, 0xd7c0

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 24
    aput-char v4, v0, v2

    add-int/lit8 v4, v2, 0x1

    and-int/lit16 p1, p1, 0x3ff

    const v5, 0xdc00

    add-int/2addr p1, v5

    int-to-char p1, p1

    .line 25
    aput-char p1, v0, v4

    add-int/lit8 v2, v2, 0x2

    move p1, v7

    goto/16 :goto_1

    .line 26
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0

    .line 27
    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0

    .line 28
    :cond_f
    new-instance p0, Ljava/lang/String;

    .line 29
    invoke-direct {p0, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 30
    iput-object p0, p2, Lcom/google/android/play/core/assetpacks/zzcv;->zza:Ljava/lang/Object;

    return v1

    .line 31
    :cond_10
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, p2, v0

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0
.end method

.method public static zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;Lcom/google/android/play/core/assetpacks/zzcv;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_b

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zzh(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    move-result-object v7

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    .line 4
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result v3

    iget p2, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    if-ne p2, v0, :cond_2

    move v1, p2

    move p2, v3

    goto :goto_1

    :cond_2
    move v1, p2

    move-object v2, p1

    move v4, p3

    move-object v5, v7

    move-object v6, p5

    .line 5
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;Lcom/google/android/play/core/assetpacks/zzcv;)I

    move-result v1

    move v8, v1

    move v1, p2

    move p2, v8

    goto :goto_0

    :cond_3
    :goto_1
    if-gt p2, p3, :cond_4

    if-ne v1, v0, :cond_4

    .line 6
    invoke-virtual {p4, p0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zzh(ILjava/lang/Object;)V

    return p2

    .line 7
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0

    .line 8
    :cond_5
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p2

    iget p3, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    if-ltz p3, :cond_8

    .line 9
    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_7

    if-nez p3, :cond_6

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zzh(ILjava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_6
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->zzr([BII)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zzh(ILjava/lang/Object;)V

    :goto_2
    add-int/2addr p2, p3

    return p2

    .line 12
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0

    .line 13
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0

    .line 14
    :cond_9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zzh(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    .line 15
    :cond_a
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p1

    iget-wide p2, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zzd:J

    .line 16
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zzh(ILjava/lang/Object;)V

    return p1

    .line 17
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0
.end method

.method public static zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    return v0

    .line 2
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzk(I[BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p0

    return p0
.end method

.method public static zzk(I[BILcom/google/android/play/core/assetpacks/zzcv;)I
    .locals 1

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    shl-int/lit8 p1, p2, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    return v0

    :cond_0
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 2
    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    return p2

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    .line 3
    aget-byte p2, p1, p2

    if-ltz p2, :cond_2

    shl-int/lit8 p1, p2, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    return v0

    :cond_2
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 4
    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 5
    aget-byte p2, p1, p2

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_0

    :cond_4
    iput p0, p3, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    return v0
.end method

.method public static zzl(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;Lcom/google/android/play/core/assetpacks/zzcv;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem<",
            "*>;",
            "Lcom/google/android/play/core/assetpacks/zzcv;",
            ")I"
        }
    .end annotation

    .line 1
    check-cast p4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;

    .line 2
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p2

    iget v0, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    .line 3
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;->zzg(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    .line 4
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result v0

    iget v1, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p2

    iget v0, p5, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    .line 6
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;->zzg(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static zzm([BILcom/google/android/play/core/assetpacks/zzcv;)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    add-int/lit8 p1, v0, 0x1

    .line 2
    aget-byte v0, p0, v0

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    move v3, v5

    :goto_0
    if-gez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 3
    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    :cond_0
    iput-wide v1, p2, Lcom/google/android/play/core/assetpacks/zzcv;->zzd:J

    return p1

    :cond_1
    iput-wide v1, p2, Lcom/google/android/play/core/assetpacks/zzcv;->zzd:J

    return v0
.end method

.method public static zzn(I[BIILcom/google/android/play/core/assetpacks/zzcv;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_8

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    .line 2
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p2

    iget v0, p4, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    if-ne v0, p0, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzn(I[BIILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p2

    goto :goto_0

    :cond_3
    :goto_1
    if-gt p2, p3, :cond_4

    if-ne v0, p0, :cond_4

    return p2

    .line 4
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0

    .line 5
    :cond_5
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p0

    iget p1, p4, Lcom/google/android/play/core/assetpacks/zzcv;->zzc:I

    add-int/2addr p0, p1

    return p0

    :cond_6
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 6
    :cond_7
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/play/core/assetpacks/zzcv;)I

    move-result p0

    return p0

    .line 7
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0
.end method

.method public static zzo([BI)J
    .locals 7

    .line 1
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method
