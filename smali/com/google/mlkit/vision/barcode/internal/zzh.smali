.class public final synthetic Lcom/google/mlkit/vision/barcode/internal/zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlp;


# instance fields
.field public final synthetic zza:Lcom/google/mlkit/vision/barcode/internal/zzi;

.field public final synthetic zzb:J

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

.field public final synthetic zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

.field public final synthetic zzf:Lcom/google/mlkit/vision/common/InputImage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/barcode/internal/zzi;JLcom/google/android/gms/internal/mlkit_vision_barcode/zzje;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zza:Lcom/google/mlkit/vision/barcode/internal/zzi;

    iput-wide p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzb:J

    iput-object p4, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    iput-object p5, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    iput-object p6, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    iput-object p7, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzf:Lcom/google/mlkit/vision/common/InputImage;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;
    .locals 12

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zza:Lcom/google/mlkit/vision/barcode/internal/zzi;

    iget-wide v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzb:J

    iget-object v3, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    iget-object v4, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    iget-object v5, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzf:Lcom/google/mlkit/vision/common/InputImage;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;-><init>(I)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;-><init>(I)V

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide v10, 0x7fffffffffffffffL

    and-long/2addr v1, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzc:Ljava/lang/Object;

    .line 4
    iput-object v3, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zza:Ljava/lang/Object;

    .line 5
    sget-boolean v1, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 7
    iput-object v1, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzb:Ljava/lang/Object;

    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    iput-object v1, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzd:Ljava/lang/Object;

    .line 10
    iput-object v1, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zze:Ljava/lang/Object;

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzix;

    .line 12
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzix;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;)V

    .line 13
    iput-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zza:Ljava/lang/Object;

    .line 14
    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    .line 15
    invoke-static {v1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;

    move-result-object v1

    .line 16
    iput-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzc:Ljava/lang/Object;

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object v1

    .line 18
    iput-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzd:Ljava/lang/Object;

    .line 19
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object v1

    .line 20
    iput-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zze:Ljava/lang/Object;

    .line 21
    iget v1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    .line 22
    sget-object v2, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget v2, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const-string v3, "null reference"

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_9

    const/16 v8, 0x23

    const v10, 0x32315659

    const/16 v11, 0x11

    if-eq v2, v11, :cond_2

    if-ne v2, v10, :cond_0

    goto :goto_0

    :cond_0
    if-eq v2, v8, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 24
    :cond_1
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v5

    .line 25
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    .line 26
    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    .line 28
    :goto_1
    new-instance v2, Lcom/google/android/play/core/appupdate/zzr;

    invoke-direct {v2, v7}, Lcom/google/android/play/core/appupdate/zzr;-><init>(I)V

    if-eq v1, v4, :cond_7

    if-eq v1, v8, :cond_6

    if-eq v1, v10, :cond_5

    const/16 v3, 0x10

    if-eq v1, v3, :cond_4

    if-eq v1, v11, :cond_3

    .line 29
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;

    goto :goto_2

    .line 30
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;

    goto :goto_2

    .line 31
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;

    goto :goto_2

    .line 32
    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;

    goto :goto_2

    .line 33
    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;

    goto :goto_2

    .line 34
    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;

    .line 35
    :goto_2
    iput-object v1, v2, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const v1, 0x7fffffff

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v2, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    .line 38
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzit;

    .line 39
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzit;-><init>(Lcom/google/android/play/core/appupdate/zzr;)V

    .line 40
    iput-object p0, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzb:Ljava/lang/Object;

    .line 41
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;

    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;-><init>(I)V

    iget-boolean v0, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    if-eqz v0, :cond_8

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    .line 43
    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzc:Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzju;

    .line 45
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzju;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;)V

    .line 46
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzd:Ljava/lang/Object;

    .line 47
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;

    move-result-object p0

    return-object p0

    .line 48
    :cond_9
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v5
.end method
