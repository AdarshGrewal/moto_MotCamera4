.class public final Lcom/google/photos/vision/barhopper/zzae;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;
.source "com.google.mlkit:barcode-scanning@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee<",
        "Lcom/google/photos/vision/barhopper/zzae;",
        "Lcom/google/photos/vision/barhopper/zzad;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/zzae;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/zzae;

    .line 1
    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzae;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    const-class v1, Lcom/google/photos/vision/barhopper/zzae;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/zzae;->zzh:B

    return-void
.end method

.method public static zzc()Lcom/google/photos/vision/barhopper/zzad;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzF()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    move-result-object v0

    check-cast v0, Lcom/google/photos/vision/barhopper/zzad;

    return-object v0
.end method

.method public static synthetic zzd()Lcom/google/photos/vision/barhopper/zzae;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    return-object v0
.end method

.method public static synthetic zze(Lcom/google/photos/vision/barhopper/zzae;I)V
    .locals 1

    iget v0, p0, Lcom/google/photos/vision/barhopper/zzae;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/photos/vision/barhopper/zzae;->zze:I

    iput p1, p0, Lcom/google/photos/vision/barhopper/zzae;->zzf:I

    return-void
.end method

.method public static synthetic zzf(Lcom/google/photos/vision/barhopper/zzae;I)V
    .locals 1

    iget v0, p0, Lcom/google/photos/vision/barhopper/zzae;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/photos/vision/barhopper/zzae;->zze:I

    iput p1, p0, Lcom/google/photos/vision/barhopper/zzae;->zzg:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzae;->zzf:I

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzae;->zzg:I

    return p0
.end method

.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    move p3, v0

    :cond_0
    iput-byte p3, p0, Lcom/google/photos/vision/barhopper/zzae;->zzh:B

    return-object v2

    .line 1
    :cond_1
    sget-object p0, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    return-object p0

    .line 2
    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzad;

    .line 3
    invoke-direct {p0, v2}, Lcom/google/photos/vision/barhopper/zzad;-><init>(Lcom/google/photos/vision/barhopper/zza;)V

    return-object p0

    .line 4
    :cond_3
    new-instance p0, Lcom/google/photos/vision/barhopper/zzae;

    .line 5
    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzae;-><init>()V

    return-object p0

    :cond_4
    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "zze"

    aput-object p1, p0, v0

    const-string/jumbo p1, "zzf"

    aput-object p1, p0, p3

    const-string/jumbo p1, "zzg"

    aput-object p1, p0, v2

    .line 6
    sget-object p1, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001\u1504\u0000\u0002\u1504\u0001"

    .line 8
    invoke-direct {p2, p1, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 9
    :cond_5
    iget-byte p0, p0, Lcom/google/photos/vision/barhopper/zzae;->zzh:B

    .line 10
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
