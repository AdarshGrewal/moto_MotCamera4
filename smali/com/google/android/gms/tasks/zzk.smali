.class public final Lcom/google/android/gms/tasks/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;

.field public final synthetic zzb:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzl;Lcom/google/android/gms/tasks/zzw;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/tasks/zzk;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzk;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzek;Lcom/google/android/play/core/assetpacks/zzei;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/zzk;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzk;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/tasks/zzf;Lcom/google/android/play/core/tasks/zzm;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/tasks/zzk;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzk;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/tasks/zzk;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzk;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/tasks/zzk;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/tasks/zzf;

    .line 2
    iget-object v0, v0, Lcom/google/android/play/core/tasks/zzf;->zzb:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/play/core/tasks/zzf;

    .line 4
    iget-object v2, v2, Lcom/google/android/play/core/tasks/zzf;->zzc:Lcom/google/android/play/core/tasks/OnSuccessListener;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/google/android/play/core/tasks/zzf;

    .line 6
    iget-object v1, v1, Lcom/google/android/play/core/tasks/zzf;->zzc:Lcom/google/android/play/core/tasks/OnSuccessListener;

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzk;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/tasks/zzm;

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/zzm;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/google/android/play/core/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzk;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzek;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzei;

    .line 10
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzek;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzei;->zzb:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzei;->zzc:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzB(Ljava/lang/String;IJ)V

    return-void

    .line 11
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzl;

    .line 12
    iget-object v0, v0, Lcom/google/android/gms/tasks/zzl;->zzb:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/tasks/zzl;

    .line 14
    iget-object v2, v2, Lcom/google/android/gms/tasks/zzl;->zzc:Lcom/google/android/gms/tasks/OnFailureListener;

    if-eqz v2, :cond_1

    .line 15
    check-cast v1, Lcom/google/android/gms/tasks/zzl;

    .line 16
    iget-object v1, v1, Lcom/google/android/gms/tasks/zzl;->zzc:Lcom/google/android/gms/tasks/OnFailureListener;

    .line 17
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzk;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->getException()Ljava/lang/Exception;

    move-result-object p0

    const-string v2, "null reference"

    .line 19
    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 21
    :cond_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzk;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 23
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    const/16 v2, 0xd

    const-string v3, "Internal error has occurred when executing ML Kit tasks"

    .line 26
    invoke-direct {v1, v3, v2, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 27
    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    .line 28
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/zzw;->zzc(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 29
    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->zzc(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
