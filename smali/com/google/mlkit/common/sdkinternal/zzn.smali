.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzn;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic zza:Ljava/util/concurrent/Executor;

.field public final synthetic zzb:Lcom/google/android/gms/tasks/zzb;

.field public final synthetic zzc:Landroidx/transition/ViewGroupOverlayApi18;

.field public final synthetic zzd:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/zzb;Landroidx/transition/ViewGroupOverlayApi18;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzb:Lcom/google/android/gms/tasks/zzb;

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzc:Landroidx/transition/ViewGroupOverlayApi18;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzd:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zza:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzb:Lcom/google/android/gms/tasks/zzb;

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzc:Landroidx/transition/ViewGroupOverlayApi18;

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzd:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzb;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v2}, Landroidx/transition/ViewGroupOverlayApi18;->cancel()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzw;->zzc(Ljava/lang/Exception;)V

    .line 6
    :goto_0
    throw p1
.end method
