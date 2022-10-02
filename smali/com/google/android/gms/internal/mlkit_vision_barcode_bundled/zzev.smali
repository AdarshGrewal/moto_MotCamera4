.class public Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# instance fields
.field public volatile zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

.field public volatile zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;->zzW()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;)V

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 7
    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;->zzW()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;->zza:[B

    array-length p0, p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;->zzE()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    .line 1
    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;->zzC()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;
    :try_end_1
    .catch Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2
    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
