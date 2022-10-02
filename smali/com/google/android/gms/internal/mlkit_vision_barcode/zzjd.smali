.class public final enum Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcz;"
    }
.end annotation


# static fields
.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

.field public static final synthetic zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;


# instance fields
.field public final zze:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    const-string v3, "TYPE_THIN"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    const-string v5, "TYPE_THICK"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zze:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zze:I

    return p0
.end method
