.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcj<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;"
    }
.end annotation


# instance fields
.field public zzb:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;->zzb:I

    return-void
.end method


# virtual methods
.method public zzB()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzC()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;
    .locals 5

    .line 1
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzE()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    .line 2
    new-array v2, v1, [B

    .line 3
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzb:Ljava/util/logging/Logger;

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdh;

    const/4 v4, 0x0

    .line 5
    invoke-direct {v3, v2, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdh;-><init>([BII)V

    .line 6
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzV(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdh;->zza()I

    move-result v0

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;

    .line 9
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;-><init>([B)V

    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x48

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Serializing "

    const-string v4, " to a ByteString threw an IOException (should never happen)."

    invoke-static {v3, v2, p0, v4}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzD(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
