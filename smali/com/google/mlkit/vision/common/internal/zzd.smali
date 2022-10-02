.class public final synthetic Lcom/google/mlkit/vision/common/internal/zzd;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/mlkit/vision/common/internal/MobileVisionBase;

.field public final synthetic zzb:Lcom/google/mlkit/vision/common/InputImage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/common/internal/MobileVisionBase;Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/common/internal/zzd;->zza:Lcom/google/mlkit/vision/common/internal/MobileVisionBase;

    iput-object p2, p0, Lcom/google/mlkit/vision/common/internal/zzd;->zzb:Lcom/google/mlkit/vision/common/InputImage;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/zzd;->zza:Lcom/google/mlkit/vision/common/internal/MobileVisionBase;

    iget-object p0, p0, Lcom/google/mlkit/vision/common/internal/zzd;->zzb:Lcom/google/mlkit/vision/common/InputImage;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zza:Ljava/util/Map;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzik;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzik;

    .line 3
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzij;->$r8$clinit:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzik;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzik;

    const-string v1, ""

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzhl;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzhl;

    goto :goto_0

    :cond_0
    const-string v1, "detectorTaskWithResource#run"

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zza:Ljava/util/Map;

    .line 7
    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;

    .line 8
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;

    .line 10
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;

    :try_start_0
    iget-object v0, v0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzd:Lcom/google/mlkit/common/sdkinternal/MLTask;

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/mlkit/common/sdkinternal/MLTask;->run(Lcom/google/mlkit/common/sdkinternal/MLTaskInput;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method
