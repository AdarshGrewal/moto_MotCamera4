.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;
.source "com.google.mlkit:barcode-scanning@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee<",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzh;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

.field private zzl:I

.field private zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzam;",
            ">;"
        }
    .end annotation
.end field

.field private zzn:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zzn:B

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zzf:I

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    move p3, v0

    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zzn:B

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    return-object p0

    .line 2
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzh;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzh;-><init>()V

    return-object p0

    .line 4
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;-><init>()V

    return-object p0

    :cond_4
    const/16 p0, 0xc

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p1, "zze"

    aput-object p1, p0, v0

    const-string/jumbo p1, "zzf"

    aput-object p1, p0, p3

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzi;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    aput-object p1, p0, v4

    const-string/jumbo p1, "zzg"

    aput-object p1, p0, v3

    const-class p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    aput-object p1, p0, v2

    const-string/jumbo p1, "zzh"

    aput-object p1, p0, v1

    const/4 p1, 0x6

    const-string/jumbo p2, "zzi"

    aput-object p2, p0, p1

    const/4 p1, 0x7

    const-string/jumbo p2, "zzj"

    aput-object p2, p0, p1

    const/16 p1, 0x8

    const-string/jumbo p2, "zzl"

    aput-object p2, p0, p1

    const/16 p1, 0x9

    const-string/jumbo p2, "zzm"

    aput-object p2, p0, p1

    const/16 p1, 0xa

    const-class p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzam;

    aput-object p2, p0, p1

    const/16 p1, 0xb

    const-string/jumbo p2, "zzk"

    aput-object p2, p0, p1

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\u000f\u0008\u0000\u0002\u0004\u0001\u100c\u0000\u0003\u041b\u0004\u1004\u0001\u0005\u1409\u0002\u0006\u1409\u0003\u0007\u1004\u0005\u0008\u001b\u000f\u1409\u0004"

    .line 8
    invoke-direct {p2, p1, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 9
    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zzn:B

    .line 10
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
