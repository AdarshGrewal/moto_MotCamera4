.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public zzc:Z

.field public zzd:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    const/4 v1, 0x1

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgl;

    const/16 v1, 0x10

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgl;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgl;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgl;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzg()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza()I

    move-result v1

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzg()Z

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzC(I)I

    move-result p0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    if-ne v0, v1, :cond_1

    .line 6
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 7
    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcl;

    if-nez v2, :cond_0

    add-int/2addr p0, p0

    goto :goto_0

    :cond_0
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcl;

    const/4 p0, 0x0

    .line 8
    throw p0

    .line 9
    :cond_1
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_0

    .line 10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v2, v0, v0

    const/16 p1, 0x3f

    shr-long/2addr v0, p1

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzE(J)I

    move-result v1

    goto/16 :goto_3

    .line 13
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int v0, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result v1

    goto/16 :goto_3

    .line 14
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_2

    .line 15
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_3

    .line 16
    :pswitch_4
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;

    if-eqz v0, :cond_2

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;->zza()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzx(I)I

    move-result v1

    goto/16 :goto_3

    .line 18
    :cond_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzx(I)I

    move-result v1

    goto/16 :goto_3

    .line 19
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result v1

    goto/16 :goto_3

    .line 20
    :pswitch_6
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    if-eqz v0, :cond_3

    .line 21
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzu(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;)I

    move-result v1

    goto/16 :goto_3

    .line 22
    :cond_3
    check-cast p1, [B

    .line 23
    array-length p1, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result v0

    goto :goto_1

    .line 24
    :pswitch_7
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeu;

    if-eqz v0, :cond_4

    .line 25
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeu;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zza()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result v0

    goto :goto_1

    .line 27
    :cond_4
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;->zzE()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result v0

    :goto_1
    add-int v1, v0, p1

    goto :goto_3

    .line 29
    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 30
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;->zzE()I

    move-result v1

    goto :goto_3

    .line 31
    :pswitch_9
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    if-eqz v0, :cond_5

    .line 32
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzu(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;)I

    move-result v1

    goto :goto_3

    .line 33
    :cond_5
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 34
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v1, 0x1

    goto :goto_3

    .line 35
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto :goto_3

    .line 36
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    goto :goto_2

    .line 37
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzx(I)I

    move-result v1

    goto :goto_3

    .line 38
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzE(J)I

    move-result v1

    goto :goto_3

    .line 39
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzE(J)I

    move-result v1

    goto :goto_3

    .line 40
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    goto :goto_3

    .line 41
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    :goto_2
    move v1, v2

    :goto_3
    add-int/2addr p0, v1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzl(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, [B

    .line 5
    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 6
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object p0
.end method

.method public static zzn(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzg()Z

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 5
    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;->zzX()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_0
    instance-of p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeu;

    if-eqz p0, :cond_1

    return v3

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v3
.end method

.method public static final zzo(Ljava/util/Map$Entry;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;

    if-ne v2, v3, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzg()Z

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzf()Z

    .line 6
    instance-of v0, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeu;

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeu;

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result v0

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zza()I

    move-result v1

    add-int/2addr v0, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result p0

    add-int/2addr p0, v3

    add-int/2addr p0, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result v2

    :goto_0
    add-int/2addr v2, v1

    add-int/2addr v2, v0

    add-int/2addr v2, p0

    return v2

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 11
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result p0

    add-int/2addr p0, v3

    add-int/2addr p0, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result v0

    .line 12
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;->zzE()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(I)I

    move-result v2

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->hashCode()I

    move-result p0

    return p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzc()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzd:Z

    iput-boolean p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzd:Z

    return-object v0
.end method

.method public final zzf()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzd:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final zzg()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzc:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zza()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzc:Z

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzg()Z

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zza:Ljava/nio/charset/Charset;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 8
    :pswitch_0
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeu;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 9
    :pswitch_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 10
    :pswitch_2
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    if-nez v0, :cond_0

    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    goto :goto_1

    .line 11
    :pswitch_3
    instance-of v0, p2, Ljava/lang/String;

    goto :goto_0

    .line 12
    :pswitch_4
    instance-of v0, p2, Ljava/lang/Boolean;

    goto :goto_0

    .line 13
    :pswitch_5
    instance-of v0, p2, Ljava/lang/Double;

    goto :goto_0

    .line 14
    :pswitch_6
    instance-of v0, p2, Ljava/lang/Float;

    goto :goto_0

    .line 15
    :pswitch_7
    instance-of v0, p2, Ljava/lang/Long;

    goto :goto_0

    .line 16
    :pswitch_8
    instance-of v0, p2, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_2

    .line 17
    :cond_0
    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeu;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzd:Z

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 19
    :cond_2
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    move-result-object p1

    .line 22
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;

    aput-object p1, v0, v1

    const/4 p1, 0x2

    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 24
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzk()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzn(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzc()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzn(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final zzm(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeu;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzg()Z

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;

    if-ne v1, v3, :cond_3

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    instance-of v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeu;

    if-nez v3, :cond_2

    if-nez v1, :cond_0

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_0
    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    if-eqz v2, :cond_1

    .line 12
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    .line 13
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_1
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;->zzU()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcj;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcj;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcj;

    .line 16
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    move-result-object p1

    .line 18
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 20
    :cond_2
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeu;

    .line 21
    throw v2

    .line 22
    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 24
    :cond_4
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeu;

    .line 25
    throw v2
.end method
