.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;
.source "com.google.mlkit:barcode-scanning@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee<",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzl;",
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
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;


# instance fields
.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzy;

.field private zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

.field private zzo:B


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/photos/vision/barhopper/zzal;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/photos/vision/barhopper/zzal;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    .line 1
    invoke-direct {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;-><init>()V

    sput-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    .line 2
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    move-result-object v2

    .line 4
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    const-class v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    const/4 v5, 0x0

    const v6, 0x12660614

    move-object v3, v4

    .line 5
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzH(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzo:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzi:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, v4

    :goto_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzo:B

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    return-object p0

    .line 2
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzl;

    .line 3
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzl;-><init>(I)V

    return-object p0

    .line 4
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;-><init>()V

    return-object p0

    :cond_4
    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p1, "zzg"

    aput-object p1, p0, p3

    const-string/jumbo p1, "zzh"

    aput-object p1, p0, v4

    const-string/jumbo p1, "zzi"

    aput-object p1, p0, v3

    const-string/jumbo p1, "zzj"

    aput-object p1, p0, v2

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzai;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    aput-object p1, p0, v1

    const-string/jumbo p1, "zzk"

    aput-object p1, p0, v0

    const/4 p1, 0x6

    const-string/jumbo p2, "zzl"

    aput-object p2, p0, p1

    const/4 p1, 0x7

    const-string/jumbo p2, "zzn"

    aput-object p2, p0, p1

    const/16 p1, 0x8

    const-string/jumbo p2, "zzm"

    aput-object p2, p0, p1

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u01f4\u0007\u0000\u0001\u0002\u0001\u1508\u0000\u0002\u1008\u0001\u0003\u001e\u0005\u1008\u0002\u0006\u1008\u0003\u000f\u1409\u0005\u01f4\u1009\u0004"

    .line 8
    invoke-direct {p2, p1, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 9
    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzo:B

    .line 10
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
