.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea<",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjp;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;


# instance fields
.field private zzf:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zzf:B

    return-void
.end method

.method public static synthetic zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    return-object v0
.end method

.method public static zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p3, 0x4

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zzf:B

    return-object v0

    .line 1
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    return-object p0

    .line 2
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjp;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjp;-><init>()V

    return-object p0

    .line 4
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;-><init>()V

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    const-string p2, "\u0003\u0000"

    .line 8
    invoke-direct {p1, p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 9
    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zzf:B

    .line 10
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
