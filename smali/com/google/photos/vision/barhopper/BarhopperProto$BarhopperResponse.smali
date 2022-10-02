.class public final Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;
.source "com.google.mlkit:barcode-scanning@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee<",
        "Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;",
        "Lcom/google/photos/vision/barhopper/zzj;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem<",
            "Lcom/google/photos/vision/barhopper/zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

.field private zzj:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    .line 1
    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    const-class v1, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzj:B

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    .line 3
    iput-object v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzh:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    return-void
.end method

.method public static synthetic zza()Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    return-object v0
.end method

.method public static zzb([BLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;)Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;
        }
    .end annotation

    sget-object v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    .line 1
    array-length v5, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;

    move-result-object v7

    new-instance v6, Lcom/google/android/play/core/assetpacks/zzcv;

    .line 6
    invoke-direct {v6, p1}, Lcom/google/android/play/core/assetpacks/zzcv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;)V

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, v0

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;->zzh(Ljava/lang/Object;[BIILcom/google/android/play/core/assetpacks/zzcv;)V

    .line 7
    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;->zzf(Ljava/lang/Object;)V

    .line 8
    iget p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;->zzb:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzX()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 10
    check-cast v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    return-object v0

    .line 11
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    .line 13
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1

    .line 15
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 16
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_1
    .catch Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    throw p0

    .line 20
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;

    .line 21
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception p0

    .line 22
    throw p0
.end method


# virtual methods
.method public final zzc()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/photos/vision/barhopper/zzc;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    return-object p0
.end method

.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    if-nez p2, :cond_0

    move p3, v4

    :cond_0
    iput-byte p3, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzj:B

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_1
    sget-object p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    return-object p0

    .line 2
    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzj;

    .line 3
    invoke-direct {p0, v4}, Lcom/google/photos/vision/barhopper/zzj;-><init>(I)V

    return-object p0

    .line 4
    :cond_3
    new-instance p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    .line 5
    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;-><init>()V

    return-object p0

    :cond_4
    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p1, "zze"

    aput-object p1, p0, v4

    const-string/jumbo p1, "zzf"

    aput-object p1, p0, p3

    .line 6
    const-class p1, Lcom/google/photos/vision/barhopper/zzc;

    aput-object p1, p0, v3

    const-string/jumbo p1, "zzg"

    aput-object p1, p0, v2

    sget-object p1, Lcom/google/photos/vision/barhopper/zzah;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    aput-object p1, p0, v1

    const-string/jumbo p1, "zzh"

    aput-object p1, p0, v0

    const/4 p1, 0x6

    const-string/jumbo p2, "zzi"

    aput-object p2, p0, p1

    sget-object p1, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0002\u0001\u041b\u0002\u150c\u0000\u0003\u1008\u0001\u0004\u100a\u0002"

    .line 8
    invoke-direct {p2, p1, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 9
    :cond_5
    iget-byte p0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzj:B

    .line 10
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
