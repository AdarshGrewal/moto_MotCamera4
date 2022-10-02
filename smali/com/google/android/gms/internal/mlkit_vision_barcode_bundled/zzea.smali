.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;
.source "com.google.mlkit:barcode-scanning@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjp;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;"
    }
.end annotation


# instance fields
.field public zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    return-void
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    .line 1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzc:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    return-object p0
.end method
