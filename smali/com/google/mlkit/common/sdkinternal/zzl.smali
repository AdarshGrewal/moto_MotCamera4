.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzl;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zza:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/mlkit/common/sdkinternal/ModelResource;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/ModelResource;

    .line 2
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 4
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    if-nez v0, :cond_1

    .line 5
    move-object v0, p0

    check-cast v0, Lcom/google/mlkit/vision/barcode/internal/zzi;

    .line 6
    monitor-enter v0

    :try_start_0
    iget-object v3, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    .line 7
    invoke-interface {v3}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzb()V

    sput-boolean v1, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 8
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0

    throw p0

    .line 11
    :cond_1
    :goto_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zza:Ljava/util/Map;

    .line 12
    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 13
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzke;->zza:Ljava/util/Map;

    .line 14
    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void

    .line 15
    :goto_2
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    .line 16
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->guard:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    .line 17
    new-instance v1, Lcom/google/android/play/core/appupdate/zzy;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/appupdate/zzy;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V

    .line 18
    invoke-interface {v0, v1}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;->runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
