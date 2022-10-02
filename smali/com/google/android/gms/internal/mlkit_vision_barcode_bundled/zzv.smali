.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;
.source "com.google.mlkit:barcode-scanning@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee<",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;",
        "Lcom/google/photos/vision/barhopper/zzo;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;"
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;


# instance fields
.field private zzf:I

.field private zzg:J

.field private zzh:J

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

.field private zzj:B


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    .line 1
    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    move-result-object v0

    .line 4
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    const-class v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    const/4 v3, 0x0

    const v4, 0xca4e15

    move-object v1, v2

    .line 5
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzH(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zzj:B

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, v3

    :goto_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zzj:B

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    return-object p0

    .line 2
    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzo;

    .line 3
    invoke-direct {p0, v3}, Lcom/google/photos/vision/barhopper/zzo;-><init>(I)V

    return-object p0

    .line 4
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;-><init>()V

    return-object p0

    :cond_4
    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo p1, "zzf"

    aput-object p1, p0, p3

    const-string/jumbo p1, "zzg"

    aput-object p1, p0, v3

    const-string/jumbo p1, "zzh"

    aput-object p1, p0, v2

    const-string/jumbo p1, "zzi"

    aput-object p1, p0, v1

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0003\u0001\u1505\u0000\u0002\u1505\u0001\u0003\u1409\u0002"

    .line 8
    invoke-direct {p2, p1, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 9
    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zzj:B

    .line 10
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
