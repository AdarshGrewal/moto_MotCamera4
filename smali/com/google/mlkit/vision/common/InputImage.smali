.class public Lcom/google/mlkit/vision/common/InputImage;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Lcom/google/mlkit/common/sdkinternal/MLTaskInput;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public volatile zzb:Ljava/nio/ByteBuffer;

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;IIII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    const/4 v1, 0x1

    const v2, 0x32315659

    if-eq p5, v2, :cond_1

    if-ne p5, v0, :cond_0

    move p5, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput p2, p0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    iput p3, p0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    iput p4, p0, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    iput p5, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    return-void
.end method

.method public static fromByteArray([BIIII)Lcom/google/mlkit/vision/common/InputImage;
    .locals 14
    .param p0    # [B
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    move/from16 v0, p4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    new-instance v9, Lcom/google/mlkit/vision/common/InputImage;

    .line 2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v1, v9

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/mlkit/vision/common/InputImage;-><init>(Ljava/nio/ByteBuffer;IIII)V

    move-object v1, p0

    .line 3
    array-length v1, v1

    .line 4
    const-class v2, Lcom/google/android/play/core/tasks/zzn;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v3, "vision-common"

    .line 5
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x1

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v4, :cond_a

    if-nez v6, :cond_0

    goto/16 :goto_4

    .line 7
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzhp;

    .line 8
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v3, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhp;-><init>(Ljava/lang/String;ZI)V

    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v3, Lcom/google/android/play/core/tasks/zzn;->zza$com$google$android$gms$internal$mlkit_vision_common$zzig:Lcom/google/android/gms/internal/mlkit_vision_common/zzif;

    if-nez v3, :cond_1

    .line 10
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzif;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzif;-><init>()V

    sput-object v3, Lcom/google/android/play/core/tasks/zzn;->zza$com$google$android$gms$internal$mlkit_vision_common$zzig:Lcom/google/android/gms/internal/mlkit_vision_common/zzif;

    :cond_1
    sget-object v3, Lcom/google/android/play/core/tasks/zzn;->zza$com$google$android$gms$internal$mlkit_vision_common$zzig:Lcom/google/android/gms/internal/mlkit_vision_common/zzif;

    .line 11
    invoke-virtual {v3, v4}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    monitor-exit v2

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v7

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;->zzbs:Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v8, v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzi:Ljava/util/Map;

    .line 16
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    iget-object v8, v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzi:Ljava/util/Map;

    .line 18
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v6, v10

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x1e

    invoke-virtual {v8, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-gtz v8, :cond_3

    goto/16 :goto_3

    .line 19
    :cond_3
    :goto_0
    iget-object v8, v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzi:Ljava/util/Map;

    .line 20
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/google/android/play/core/appupdate/zzaa;

    invoke-direct {v6}, Lcom/google/android/play/core/appupdate/zzaa;-><init>()V

    const/4 v7, -0x1

    if-eq v0, v7, :cond_8

    const/16 v7, 0x23

    if-eq v0, v7, :cond_7

    const v7, 0x32315659

    if-eq v0, v7, :cond_6

    const/16 v7, 0x10

    if-eq v0, v7, :cond_5

    const/16 v7, 0x11

    if-eq v0, v7, :cond_4

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    goto :goto_1

    .line 22
    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    goto :goto_1

    .line 23
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    goto :goto_1

    .line 24
    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    goto :goto_1

    .line 25
    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zze:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    goto :goto_1

    .line 26
    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzg:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    .line 27
    :goto_1
    iput-object v0, v6, Lcom/google/android/play/core/appupdate/zzaa;->zzc:Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;

    .line 29
    iput-object v0, v6, Lcom/google/android/play/core/appupdate/zzaa;->zzb:Ljava/lang/Object;

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/play/core/appupdate/zzaa;->zzd:Ljava/lang/Object;

    .line 32
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/play/core/appupdate/zzaa;->zzf:Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/play/core/appupdate/zzaa;->zze:Ljava/lang/Object;

    .line 36
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v7, 0x7fffffffffffffffL

    and-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/play/core/appupdate/zzaa;->zza:Ljava/lang/Object;

    .line 38
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/play/core/appupdate/zzaa;->zzg:Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;

    .line 41
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;-><init>(Lcom/google/android/play/core/appupdate/zzaa;)V

    .line 42
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;-><init>()V

    .line 43
    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzc:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroidx/fragment/app/FragmentStore;

    const/4 v4, 0x0

    .line 45
    invoke-direct {v0, v1, v4}, Landroidx/fragment/app/FragmentStore;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;I)V

    .line 46
    iget-object v1, v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzf:Lcom/google/android/gms/tasks/zzw;

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzf:Lcom/google/android/gms/tasks/zzw;

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    .line 49
    :cond_9
    sget-object v1, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    .line 50
    iget-object v4, v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzh:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    :goto_2
    sget-object v4, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza:Ljava/lang/Object;

    sget-object v4, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    invoke-direct {v5, v3, v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;Landroidx/fragment/app/FragmentStore;Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v4, v5}, Lcom/google/mlkit/common/sdkinternal/zzh;->execute(Ljava/lang/Runnable;)V

    :goto_3
    return-object v9

    :catchall_0
    move-exception v0

    .line 53
    :try_start_3
    monitor-exit v2

    throw v0

    .line 54
    :cond_a
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_b

    const-string v1, " enableFirelog"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    if-nez v6, :cond_c

    const-string v1, " firelogEventType"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 58
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1c

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Missing required properties:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method
