.class public final Lcom/google/android/gms/tasks/zzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;

.field public final synthetic zzb:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzj;Lcom/google/android/gms/tasks/zzw;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/tasks/zzi;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzi;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzbb;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/zzi;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzi;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/tasks/zzd;Lcom/google/android/play/core/tasks/zzm;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/tasks/zzi;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzi;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/tasks/zzi;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzi;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/tasks/zzi;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/tasks/zzd;

    .line 2
    iget-object v0, v0, Lcom/google/android/play/core/tasks/zzd;->zzb:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/play/core/tasks/zzd;

    .line 4
    iget-object v2, v2, Lcom/google/android/play/core/tasks/zzd;->zzc:Lcom/google/android/play/core/tasks/OnFailureListener;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/google/android/play/core/tasks/zzd;

    .line 6
    iget-object v1, v1, Lcom/google/android/play/core/tasks/zzd;->zzc:Lcom/google/android/play/core/tasks/OnFailureListener;

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzi;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/tasks/zzm;

    .line 8
    iget-object v2, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/google/android/play/core/tasks/zzm;->zze:Ljava/lang/Exception;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-interface {v1, p0}, Lcom/google/android/play/core/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 11
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 12
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzi;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzbb;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/listener/zzc;->zzi(Ljava/lang/Object;)V

    return-void

    .line 13
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzj;

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/tasks/zzj;->zzb:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/tasks/zzj;

    .line 16
    iget-object v2, v2, Lcom/google/android/gms/tasks/zzj;->zzc:Lcom/google/android/gms/tasks/OnCompleteListener;

    if-eqz v2, :cond_1

    .line 17
    check-cast v1, Lcom/google/android/gms/tasks/zzj;

    .line 18
    iget-object v1, v1, Lcom/google/android/gms/tasks/zzj;->zzc:Lcom/google/android/gms/tasks/OnCompleteListener;

    .line 19
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzi;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    .line 20
    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/zzw;)V

    .line 21
    :cond_1
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    .line 22
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzi;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/ReferenceQueue;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    .line 23
    :catch_0
    :goto_2
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/zzd;

    .line 25
    iget-object v2, v1, Lcom/google/mlkit/common/sdkinternal/zzd;->zza:Ljava/util/Set;

    .line 26
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 27
    :cond_2
    invoke-virtual {v1}, Ljava/lang/ref/PhantomReference;->clear()V

    iget-object v1, v1, Lcom/google/mlkit/common/sdkinternal/zzd;->zzb:Ljava/lang/Runnable;

    .line 28
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
