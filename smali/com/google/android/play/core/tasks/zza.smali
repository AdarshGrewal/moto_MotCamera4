.class public final Lcom/google/android/play/core/tasks/zza;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;

.field public final synthetic zzb:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzbb;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/play/core/tasks/zza;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zza;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/zza;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzdz;Lcom/google/android/play/core/assetpacks/zzdw;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/play/core/tasks/zza;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zza;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/zza;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/tasks/zzb;Lcom/google/android/play/core/tasks/zzm;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/tasks/zza;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/google/android/play/core/tasks/zza;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/zza;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/google/android/play/core/tasks/zza;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzbb;

    iget-object p0, p0, Lcom/google/android/play/core/tasks/zza;->zzb:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    .line 2
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/zzbb;->zzc:Lcom/google/android/play/core/assetpacks/zzde;

    .line 3
    new-instance v2, Lcom/google/android/play/core/internal/zzaj;

    invoke-direct {v2, v1, p0}, Lcom/google/android/play/core/internal/zzaj;-><init>(Lcom/google/android/play/core/assetpacks/zzde;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/assetpacks/zzde;->zzr(Lcom/google/android/play/core/assetpacks/zzdd;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 4
    iget-object p0, v0, Lcom/google/android/play/core/assetpacks/zzbb;->zzd:Lcom/google/android/play/core/assetpacks/zzcl;

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzcl;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Run extractor loop"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/appupdate/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzj:Lcom/google/android/play/core/assetpacks/zzdh;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/zzdh;->zza()Lcom/google/android/play/core/assetpacks/zzdg;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/play/core/assetpacks/zzck; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 9
    sget-object v4, Lcom/google/android/play/core/assetpacks/zzcl;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array v5, v3, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "Error while getting next extraction task: %s"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/play/core/appupdate/zzy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    iget v4, v2, Lcom/google/android/play/core/assetpacks/zzck;->zza:I

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzi:Lcom/google/android/play/core/internal/zzco;

    .line 11
    invoke-interface {v4}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzy;

    iget v5, v2, Lcom/google/android/play/core/assetpacks/zzck;->zza:I

    invoke-interface {v4, v5}, Lcom/google/android/play/core/assetpacks/zzy;->zzi(I)V

    iget v4, v2, Lcom/google/android/play/core/assetpacks/zzck;->zza:I

    .line 12
    invoke-virtual {p0, v4, v2}, Lcom/google/android/play/core/assetpacks/zzcl;->zzb(ILjava/lang/Exception;)V

    :cond_0
    :goto_1
    if-eqz v0, :cond_7

    .line 13
    :try_start_1
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/zzce;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzc:Lcom/google/android/play/core/assetpacks/zzcf;

    .line 14
    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzce;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/zzcf;->zza(Lcom/google/android/play/core/assetpacks/zzce;)V

    goto :goto_0

    .line 15
    :cond_1
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/zzeq;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzd:Lcom/google/android/play/core/assetpacks/zzer;

    .line 16
    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzeq;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/zzer;->zza(Lcom/google/android/play/core/assetpacks/zzeq;)V

    goto :goto_0

    .line 17
    :cond_2
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/zzdt;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zze:Lcom/google/android/play/core/assetpacks/zzdu;

    .line 18
    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzdt;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/zzdu;->zza(Lcom/google/android/play/core/assetpacks/zzdt;)V

    goto :goto_0

    .line 19
    :cond_3
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/zzdw;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzf:Lcom/google/android/play/core/assetpacks/zzdz;

    .line 20
    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzdw;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/zzdz;->zza(Lcom/google/android/play/core/assetpacks/zzdw;)V

    goto :goto_0

    .line 21
    :cond_4
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/zzef;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzg:Lcom/google/android/play/core/assetpacks/zzeg;

    .line 22
    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzef;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/zzeg;->zza(Lcom/google/android/play/core/assetpacks/zzef;)V

    goto :goto_0

    .line 23
    :cond_5
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/zzei;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzh:Lcom/google/android/play/core/assetpacks/zzek;

    .line 24
    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzei;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/zzek;->zza(Lcom/google/android/play/core/assetpacks/zzei;)V

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzcl;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 25
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Unknown task type: %s"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/play/core/appupdate/zzy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    .line 26
    sget-object v4, Lcom/google/android/play/core/assetpacks/zzcl;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array v5, v3, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "Error during extraction task: %s"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/play/core/appupdate/zzy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzi:Lcom/google/android/play/core/internal/zzco;

    .line 28
    invoke-interface {v4}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzy;

    iget v5, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-interface {v4, v5}, Lcom/google/android/play/core/assetpacks/zzy;->zzi(I)V

    iget v0, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 29
    invoke-virtual {p0, v0, v2}, Lcom/google/android/play/core/assetpacks/zzcl;->zzb(ILjava/lang/Exception;)V

    goto/16 :goto_0

    .line 30
    :cond_7
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzcl;->zzk:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_8
    new-array p0, v1, [Ljava/lang/Object;

    const-string v1, "runLoop already looping; return"

    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/google/android/play/core/appupdate/zzy;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_9
    :goto_2
    return-void

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zza;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/tasks/zzb;

    .line 34
    iget-object v0, v0, Lcom/google/android/play/core/tasks/zzb;->zzb:Ljava/lang/Object;

    .line 35
    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/play/core/tasks/zza;->zzb:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/play/core/tasks/zzb;

    .line 36
    iget-object v2, v2, Lcom/google/android/play/core/tasks/zzb;->zzc:Lcom/google/android/play/core/internal/zzaj;

    if-eqz v2, :cond_a

    .line 37
    check-cast v1, Lcom/google/android/play/core/tasks/zzb;

    .line 38
    iget-object v1, v1, Lcom/google/android/play/core/tasks/zzb;->zzc:Lcom/google/android/play/core/internal/zzaj;

    .line 39
    iget-object p0, p0, Lcom/google/android/play/core/tasks/zza;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/tasks/zzm;

    .line 40
    iget-object p0, v1, Lcom/google/android/play/core/internal/zzaj;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/internal/zzas;

    iget-object v1, v1, Lcom/google/android/play/core/internal/zzaj;->zzb:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/tasks/zzi;

    .line 41
    iget-object v2, p0, Lcom/google/android/play/core/internal/zzas;->zzg:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p0, p0, Lcom/google/android/play/core/internal/zzas;->zzf:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 42
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 43
    :cond_a
    :goto_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 44
    :goto_4
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzdz;

    iget-object p0, p0, Lcom/google/android/play/core/tasks/zza;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzdw;

    .line 45
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzB(Ljava/lang/String;IJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
