.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzht;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Landroidx/fragment/app/FragmentStore;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;Landroidx/fragment/app/FragmentStore;Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzd:Landroidx/fragment/app/FragmentStore;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzd:Landroidx/fragment/app/FragmentStore;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzc:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v3, v1, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    .line 2
    iput-object v2, v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzb:Ljava/lang/Object;

    .line 3
    iget-object v2, v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zza:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzhg;

    .line 4
    iget-object v3, v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzc:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 5
    iget-object v5, v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzhg;->zzd:Ljava/lang/String;

    .line 6
    sget v6, Lcom/google/android/gms/internal/mlkit_vision_common/zze;->$r8$clinit:I

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    if-nez v5, :cond_2

    .line 8
    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzhg;->zzd:Ljava/lang/String;

    const-string v5, "null reference"

    .line 9
    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v2, "NA"

    .line 10
    :goto_2
    new-instance v5, Lcom/google/android/play/core/assetpacks/zzm;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/google/android/play/core/assetpacks/zzm;-><init>(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzb:Ljava/lang/String;

    .line 11
    iput-object v6, v5, Lcom/google/android/play/core/assetpacks/zzm;->zza:Ljava/lang/Object;

    .line 12
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzc:Ljava/lang/String;

    .line 13
    iput-object v6, v5, Lcom/google/android/play/core/assetpacks/zzm;->zzb:Ljava/lang/Object;

    .line 14
    const-class v6, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v8, 0x7fffffff

    if-eqz v7, :cond_3

    monitor-exit v6

    goto :goto_5

    .line 15
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v7

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    move-object v10, v9

    move v9, v3

    .line 16
    :goto_3
    iget-object v11, v7, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v11}, Landroidx/core/os/LocaleListInterface;->size()I

    move-result v11

    if-ge v3, v11, :cond_7

    .line 17
    invoke-virtual {v7, v3}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v11

    .line 18
    sget-object v12, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 19
    invoke-virtual {v11}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    .line 20
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v9, 0x1

    .line 21
    array-length v13, v10

    if-ge v13, v12, :cond_6

    shr-int/lit8 v14, v13, 0x1

    add-int/2addr v13, v14

    add-int/2addr v13, v4

    if-ge v13, v12, :cond_4

    add-int/lit8 v13, v12, -0x1

    .line 22
    invoke-static {v13}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v13

    add-int/2addr v13, v13

    :cond_4
    if-gez v13, :cond_5

    move v13, v8

    .line 23
    :cond_5
    invoke-static {v10, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    .line 24
    :cond_6
    aput-object v11, v10, v9

    add-int/lit8 v3, v3, 0x1

    move v9, v12

    goto :goto_3

    .line 25
    :cond_7
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzo;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzr;

    if-nez v9, :cond_8

    .line 26
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    goto :goto_4

    .line 27
    :cond_8
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    invoke-direct {v3, v10, v9}, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;-><init>([Ljava/lang/Object;I)V

    :goto_4
    move-object v7, v3

    .line 28
    sput-object v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 29
    :goto_5
    iput-object v7, v5, Lcom/google/android/play/core/assetpacks/zzm;->zze:Ljava/lang/Object;

    .line 30
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    iput-object v3, v5, Lcom/google/android/play/core/assetpacks/zzm;->zzh:Ljava/lang/Object;

    .line 32
    iput-object v2, v5, Lcom/google/android/play/core/assetpacks/zzm;->zzd:Ljava/lang/Object;

    .line 33
    iput-object p0, v5, Lcom/google/android/play/core/assetpacks/zzm;->zzc:Ljava/lang/Object;

    .line 34
    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzg:Lcom/google/android/gms/tasks/zzw;

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_9

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzg:Lcom/google/android/gms/tasks/zzw;

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_6

    .line 37
    :cond_9
    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 38
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p0

    .line 39
    :goto_6
    iput-object p0, v5, Lcom/google/android/play/core/assetpacks/zzm;->zzf:Ljava/lang/Object;

    const/16 p0, 0xa

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/2addr p0, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v5, Lcom/google/android/play/core/assetpacks/zzm;->zzj:Ljava/lang/Object;

    .line 42
    iput-object v5, v1, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    .line 43
    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;

    .line 44
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;->zza(Landroidx/fragment/app/FragmentStore;)V

    return-void

    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v6

    throw p0
.end method
