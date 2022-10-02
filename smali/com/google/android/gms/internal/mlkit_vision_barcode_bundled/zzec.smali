.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field public final zzb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null messageDefaultInstance"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    return-void

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null containingTypeDefaultInstance"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
