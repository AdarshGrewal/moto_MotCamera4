.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;

.field public final zzb:Ljava/lang/Object;

.field public final zzc:Ljava/lang/Object;

.field public final zzd:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/TransportScheduleCallback;Lcom/google/android/datatransport/runtime/EventInternal;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zzc:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zzd:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zzd:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zzb:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zzc:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zzd:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zzb:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zzc:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v5, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zza:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;

    .line 3
    iput-object v4, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzb:Ljava/lang/Object;

    .line 4
    iget-object v4, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zza:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkz;

    .line 5
    iget-object v6, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzc:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    .line 6
    iget-object v6, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzd:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzju;

    .line 7
    iget-object v6, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zze:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjx;

    .line 8
    iget-object v5, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzf:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzds;

    if-eqz v4, :cond_2

    .line 9
    iget-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkz;->zzd:Ljava/lang/String;

    .line 10
    sget v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzap;->$r8$clinit:I

    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v1

    :goto_1
    if-nez v5, :cond_2

    .line 12
    iget-object v4, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkz;->zzd:Ljava/lang/String;

    const-string v5, "null reference"

    .line 13
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v4, "NA"

    .line 14
    :goto_2
    new-instance v5, Lcom/google/android/play/core/assetpacks/zzm;

    invoke-direct {v5, v1}, Lcom/google/android/play/core/assetpacks/zzm;-><init>(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzb:Ljava/lang/String;

    .line 15
    iput-object v1, v5, Lcom/google/android/play/core/assetpacks/zzm;->zza:Ljava/lang/Object;

    .line 16
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzc:Ljava/lang/String;

    .line 17
    iput-object v1, v5, Lcom/google/android/play/core/assetpacks/zzm;->zzb:Ljava/lang/Object;

    .line 18
    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    monitor-enter v1

    :try_start_0
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    monitor-exit v1

    goto :goto_4

    .line 19
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    .line 20
    invoke-direct {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;-><init>()V

    .line 21
    :goto_3
    iget-object v8, v6, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v8}, Landroidx/core/os/LocaleListInterface;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 22
    invoke-virtual {v6, v2}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 23
    sget-object v9, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 24
    invoke-virtual {v8}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 25
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 26
    :cond_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object v6

    sput-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 27
    :goto_4
    iput-object v6, v5, Lcom/google/android/play/core/assetpacks/zzm;->zze:Ljava/lang/Object;

    .line 28
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    iput-object v1, v5, Lcom/google/android/play/core/assetpacks/zzm;->zzh:Ljava/lang/Object;

    .line 30
    iput-object v4, v5, Lcom/google/android/play/core/assetpacks/zzm;->zzd:Ljava/lang/Object;

    .line 31
    iput-object p0, v5, Lcom/google/android/play/core/assetpacks/zzm;->zzc:Ljava/lang/Object;

    .line 32
    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzg:Lcom/google/android/gms/tasks/zzw;

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzg:Lcom/google/android/gms/tasks/zzw;

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_5

    .line 35
    :cond_5
    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 36
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p0

    .line 37
    :goto_5
    iput-object p0, v5, Lcom/google/android/play/core/assetpacks/zzm;->zzf:Ljava/lang/Object;

    const/16 p0, 0xa

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const v1, 0x7fffffff

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v5, Lcom/google/android/play/core/assetpacks/zzm;->zzj:Ljava/lang/Object;

    .line 40
    iput-object v5, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzb:Ljava/lang/Object;

    .line 41
    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;

    .line 42
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;)V

    return-void

    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v1

    throw p0

    .line 44
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zzb:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/datatransport/runtime/TransportContext;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zzc:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/datatransport/TransportScheduleCallback;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->zzd:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/EventInternal;

    sget-object v5, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->LOGGER:Ljava/util/logging/Logger;

    .line 45
    :try_start_2
    iget-object v5, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->backendRegistry:Lcom/google/android/datatransport/runtime/backends/BackendRegistry;

    .line 46
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/datatransport/runtime/backends/BackendRegistry;->get(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/TransportBackend;

    move-result-object v5

    if-nez v5, :cond_6

    const-string p0, "Transport backend \'%s\' is not registered"

    new-array v0, v1, [Ljava/lang/Object;

    .line 47
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 48
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 49
    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 51
    :cond_6
    invoke-interface {v5, p0}, Lcom/google/android/datatransport/runtime/backends/TransportBackend;->decorate(Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object p0

    .line 52
    iget-object v1, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->guard:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    .line 53
    new-instance v2, Landroidx/viewpager2/widget/FakeDrag;

    invoke-direct {v2, v0, v3, p0}, Landroidx/viewpager2/widget/FakeDrag;-><init>(Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)V

    .line 54
    invoke-interface {v1, v2}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;->runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 55
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 56
    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error scheduling event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 57
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
