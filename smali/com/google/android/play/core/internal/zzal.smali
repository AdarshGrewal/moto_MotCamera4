.class public final Lcom/google/android/play/core/internal/zzal;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/internal/zzas;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzas;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/internal/zzal;->zza:Lcom/google/android/play/core/internal/zzas;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzah;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzal;->zza:Lcom/google/android/play/core/internal/zzas;

    .line 2
    iget-object v1, v0, Lcom/google/android/play/core/internal/zzas;->zzo:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/play/core/internal/zzas;->zzc:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unbind from service."

    .line 4
    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzal;->zza:Lcom/google/android/play/core/internal/zzas;

    .line 5
    iget-object v2, v0, Lcom/google/android/play/core/internal/zzas;->zzb:Landroid/content/Context;

    .line 6
    iget-object v0, v0, Lcom/google/android/play/core/internal/zzas;->zzn:Landroid/content/ServiceConnection;

    .line 7
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzal;->zza:Lcom/google/android/play/core/internal/zzas;

    .line 8
    iput-boolean v1, v0, Lcom/google/android/play/core/internal/zzas;->zzh:Z

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/google/android/play/core/internal/zzas;->zzo:Landroid/os/IInterface;

    .line 10
    iput-object v1, v0, Lcom/google/android/play/core/internal/zzas;->zzn:Landroid/content/ServiceConnection;

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/google/android/play/core/internal/zzal;->zza:Lcom/google/android/play/core/internal/zzas;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/zzas;->zzu()V

    return-void
.end method
