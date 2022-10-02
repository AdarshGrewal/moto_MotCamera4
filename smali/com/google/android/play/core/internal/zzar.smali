.class public final Lcom/google/android/play/core/internal/zzar;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/internal/zzas;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/internal/zzas;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzar;->zza:Lcom/google/android/play/core/internal/zzas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzar;->zza:Lcom/google/android/play/core/internal/zzas;

    .line 2
    iget-object v0, v0, Lcom/google/android/play/core/internal/zzas;->zzc:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceConnected(%s)"

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/internal/zzar;->zza:Lcom/google/android/play/core/internal/zzas;

    new-instance v0, Lcom/google/android/play/core/internal/zzao;

    .line 4
    invoke-direct {v0, p0, p2}, Lcom/google/android/play/core/internal/zzao;-><init>(Lcom/google/android/play/core/internal/zzar;Landroid/os/IBinder;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/internal/zzas;->zzc()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzar;->zza:Lcom/google/android/play/core/internal/zzas;

    .line 2
    iget-object v0, v0, Lcom/google/android/play/core/internal/zzas;->zzc:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/internal/zzar;->zza:Lcom/google/android/play/core/internal/zzas;

    new-instance v0, Lcom/google/android/play/core/internal/zzap;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/play/core/internal/zzap;-><init>(Lcom/google/android/play/core/internal/zzar;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/internal/zzas;->zzc()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
