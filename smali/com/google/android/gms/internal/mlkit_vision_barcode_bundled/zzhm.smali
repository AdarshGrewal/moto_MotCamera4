.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhm;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I[BII)I
    .locals 11

    const/4 p0, -0x1

    const/16 v0, -0x13

    const/16 v1, -0x3e

    const/16 v2, -0x10

    const/4 v3, 0x0

    const/16 v4, -0x60

    const/16 v5, -0x20

    const/16 v6, -0x41

    if-eqz p1, :cond_12

    if-lt p3, p4, :cond_0

    return p1

    :cond_0
    int-to-byte v7, p1

    if-ge v7, v5, :cond_2

    if-lt v7, v1, :cond_1

    add-int/lit8 p1, p3, 0x1

    .line 1
    aget-byte p3, p2, p3

    if-gt p3, v6, :cond_1

    :goto_0
    move p3, p1

    goto/16 :goto_6

    :cond_1
    return p0

    :cond_2
    const/16 v8, -0xc

    if-ge v7, v2, :cond_a

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_6

    add-int/lit8 p1, p3, 0x1

    .line 2
    aget-byte p3, p2, p3

    if-ge p1, p4, :cond_3

    move v10, p3

    move p3, p1

    move p1, v10

    goto :goto_2

    :cond_3
    if-gt v7, v8, :cond_5

    if-le p3, v6, :cond_4

    goto :goto_1

    :cond_4
    shl-int/lit8 p0, p3, 0x8

    xor-int/2addr p0, v7

    :cond_5
    :goto_1
    return p0

    :cond_6
    :goto_2
    if-gt p1, v6, :cond_9

    if-ne v7, v5, :cond_7

    if-lt p1, v4, :cond_9

    :cond_7
    if-ne v7, v0, :cond_8

    if-ge p1, v4, :cond_9

    :cond_8
    add-int/lit8 p1, p3, 0x1

    .line 3
    aget-byte p3, p2, p3

    if-gt p3, v6, :cond_9

    goto :goto_0

    :cond_9
    return p0

    :cond_a
    shr-int/lit8 v9, p1, 0x8

    not-int v9, v9

    int-to-byte v9, v9

    if-nez v9, :cond_e

    add-int/lit8 p1, p3, 0x1

    .line 4
    aget-byte v9, p2, p3

    if-ge p1, p4, :cond_b

    move p3, p1

    move p1, v3

    goto :goto_4

    :cond_b
    if-gt v7, v8, :cond_d

    if-le v9, v6, :cond_c

    goto :goto_3

    :cond_c
    shl-int/lit8 p0, v9, 0x8

    xor-int/2addr p0, v7

    :cond_d
    :goto_3
    return p0

    :cond_e
    shr-int/lit8 p1, p1, 0x10

    :goto_4
    if-nez p1, :cond_10

    add-int/lit8 p1, p3, 0x1

    .line 5
    aget-byte p3, p2, p3

    if-ge p1, p4, :cond_f

    move v10, p3

    move p3, p1

    move p1, v10

    goto :goto_5

    .line 6
    :cond_f
    invoke-static {v7, v9, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzk(III)I

    move-result p0

    return p0

    :cond_10
    :goto_5
    if-gt v9, v6, :cond_11

    shl-int/lit8 v7, v7, 0x1c

    add-int/lit8 v9, v9, 0x70

    add-int/2addr v9, v7

    shr-int/lit8 v7, v9, 0x1e

    if-nez v7, :cond_11

    if-gt p1, v6, :cond_11

    add-int/lit8 p1, p3, 0x1

    .line 7
    aget-byte p3, p2, p3

    if-gt p3, v6, :cond_11

    goto :goto_0

    :cond_11
    return p0

    :cond_12
    :goto_6
    if-ge p3, p4, :cond_13

    .line 8
    aget-byte p1, p2, p3

    if-ltz p1, :cond_13

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_13
    if-lt p3, p4, :cond_14

    goto :goto_8

    :cond_14
    :goto_7
    if-lt p3, p4, :cond_15

    :goto_8
    move p0, v3

    goto :goto_9

    :cond_15
    add-int/lit8 p1, p3, 0x1

    .line 9
    aget-byte p3, p2, p3

    if-gez p3, :cond_1e

    if-ge p3, v5, :cond_17

    if-ge p1, p4, :cond_16

    if-lt p3, v1, :cond_1d

    add-int/lit8 p3, p1, 0x1

    .line 10
    aget-byte p1, p2, p1

    if-le p1, v6, :cond_14

    goto :goto_9

    :cond_16
    move p0, p3

    goto :goto_9

    :cond_17
    if-ge p3, v2, :cond_1b

    add-int/lit8 v7, p4, -0x1

    if-lt p1, v7, :cond_18

    .line 11
    invoke-static {p2, p1, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzc([BII)I

    move-result p0

    goto :goto_9

    :cond_18
    add-int/lit8 v7, p1, 0x1

    .line 12
    aget-byte p1, p2, p1

    if-gt p1, v6, :cond_1d

    if-ne p3, v5, :cond_19

    if-lt p1, v4, :cond_1d

    :cond_19
    if-ne p3, v0, :cond_1a

    if-ge p1, v4, :cond_1d

    :cond_1a
    add-int/lit8 p3, v7, 0x1

    aget-byte p1, p2, v7

    if-le p1, v6, :cond_14

    goto :goto_9

    :cond_1b
    add-int/lit8 v7, p4, -0x2

    if-lt p1, v7, :cond_1c

    .line 13
    invoke-static {p2, p1, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzc([BII)I

    move-result p0

    goto :goto_9

    :cond_1c
    add-int/lit8 v7, p1, 0x1

    .line 14
    aget-byte p1, p2, p1

    if-gt p1, v6, :cond_1d

    shl-int/lit8 p3, p3, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_1d

    add-int/lit8 p1, v7, 0x1

    aget-byte p3, p2, v7

    if-gt p3, v6, :cond_1d

    add-int/lit8 p3, p1, 0x1

    aget-byte p1, p2, p1

    if-le p1, v6, :cond_14

    :cond_1d
    :goto_9
    return p0

    :cond_1e
    move p3, p1

    goto :goto_7
.end method
