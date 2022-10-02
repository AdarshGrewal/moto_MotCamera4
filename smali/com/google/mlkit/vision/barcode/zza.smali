.class public final synthetic Lcom/google/mlkit/vision/barcode/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"


# static fields
.field public static zza$com$google$android$gms$internal$mlkit_vision_barcode$zzmc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmb;


# direct methods
.method public static zza([BI)I
    .locals 1

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;
    .locals 4

    const-class v0, Lcom/google/mlkit/vision/barcode/zza;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_2

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzli;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzli;-><init>(Ljava/lang/String;ZI)V

    .line 5
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object p0, Lcom/google/mlkit/vision/barcode/zza;->zza$com$google$android$gms$internal$mlkit_vision_barcode$zzmc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmb;

    if-nez p0, :cond_1

    .line 6
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmb;-><init>()V

    sput-object p0, Lcom/google/mlkit/vision/barcode/zza;->zza$com$google$android$gms$internal$mlkit_vision_barcode$zzmc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmb;

    :cond_1
    sget-object p0, Lcom/google/mlkit/vision/barcode/zza;->zza$com$google$android$gms$internal$mlkit_vision_barcode$zzmc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmb;

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    :try_start_3
    monitor-exit v0

    throw p0

    .line 10
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_3

    const-string v1, " enableFirelog"

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-nez v3, :cond_4

    const-string v1, " firelogEventType"

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1c

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Missing required properties:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static zzc([BI)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/mlkit/vision/barcode/zza;->zza([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lcom/google/mlkit/vision/barcode/zza;->zza([BI)I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method
