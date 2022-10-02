.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;
.source "com.google.mlkit:barcode-scanning@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee<",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzip;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;


# instance fields
.field private zze:I

.field private zzf:Z

.field private zzg:I

.field private zzh:Z

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zzh:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zzm:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zzn:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x5

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzip;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzip;-><init>()V

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;-><init>()V

    return-object p0

    :cond_3
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "zze"

    aput-object v3, p1, v2

    const-string/jumbo v2, "zzf"

    aput-object v2, p1, p0

    const-string/jumbo p0, "zzg"

    aput-object p0, p1, v1

    .line 6
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzis;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    aput-object p0, p1, v0

    const-string/jumbo p0, "zzh"

    aput-object p0, p1, p3

    const-string/jumbo p0, "zzi"

    aput-object p0, p1, p2

    const/4 p0, 0x6

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzio;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    aput-object p2, p1, p0

    const/4 p0, 0x7

    const-string/jumbo p2, "zzj"

    aput-object p2, p1, p0

    const/16 p0, 0x8

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzir;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    aput-object p2, p1, p0

    const/16 p0, 0x9

    const-string/jumbo p3, "zzk"

    aput-object p3, p1, p0

    const/16 p0, 0xa

    aput-object p2, p1, p0

    const/16 p0, 0xb

    const-string/jumbo p3, "zzl"

    aput-object p3, p1, p0

    const/16 p0, 0xc

    aput-object p2, p1, p0

    const/16 p0, 0xd

    const-string/jumbo p2, "zzm"

    aput-object p2, p1, p0

    const/16 p0, 0xe

    const-string/jumbo p2, "zzn"

    aput-object p2, p1, p0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u100c\u0001\u0003\u1007\u0002\u0004\u100c\u0003\u0005\u100c\u0004\u0006\u100c\u0005\u0007\u100c\u0006\u0008\u1008\u0007\t\u1008\u0008"

    .line 8
    invoke-direct {p2, p0, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 9
    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
