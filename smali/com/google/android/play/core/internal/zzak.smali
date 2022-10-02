.class public final Lcom/google/android/play/core/internal/zzak;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/internal/zzah;

.field public final synthetic zzb:Lcom/google/android/play/core/internal/zzas;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzas;Lcom/google/android/play/core/tasks/zzi;Lcom/google/android/play/core/internal/zzah;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/internal/zzak;->zzb:Lcom/google/android/play/core/internal/zzas;

    iput-object p3, p0, Lcom/google/android/play/core/internal/zzak;->zza:Lcom/google/android/play/core/internal/zzah;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzak;->zzb:Lcom/google/android/play/core/internal/zzas;

    iget-object p0, p0, Lcom/google/android/play/core/internal/zzak;->zza:Lcom/google/android/play/core/internal/zzah;

    .line 2
    iget-object v1, v0, Lcom/google/android/play/core/internal/zzas;->zzo:Landroid/os/IInterface;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/google/android/play/core/internal/zzas;->zzh:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/play/core/internal/zzas;->zzc:Lcom/google/android/play/core/appupdate/zzy;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Initiate binding to the service."

    invoke-virtual {v1, v4, v3}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Lcom/google/android/play/core/internal/zzas;->zze:Ljava/util/List;

    .line 3
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/android/play/core/internal/zzar;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/play/core/internal/zzar;-><init>(Lcom/google/android/play/core/internal/zzas;)V

    iput-object p0, v0, Lcom/google/android/play/core/internal/zzas;->zzn:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/play/core/internal/zzas;->zzh:Z

    iget-object v3, v0, Lcom/google/android/play/core/internal/zzas;->zzb:Landroid/content/Context;

    iget-object v4, v0, Lcom/google/android/play/core/internal/zzas;->zzi:Landroid/content/Intent;

    .line 5
    invoke-virtual {v3, v4, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, v0, Lcom/google/android/play/core/internal/zzas;->zzc:Lcom/google/android/play/core/appupdate/zzy;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Failed to bind to the service."

    .line 6
    invoke-virtual {p0, v3, v1}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iput-boolean v2, v0, Lcom/google/android/play/core/internal/zzas;->zzh:Z

    iget-object p0, v0, Lcom/google/android/play/core/internal/zzas;->zze:Ljava/util/List;

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/internal/zzah;

    new-instance v2, Lcom/google/android/play/core/internal/zzat;

    .line 8
    invoke-direct {v2}, Lcom/google/android/play/core/internal/zzat;-><init>()V

    .line 9
    iget-object v1, v1, Lcom/google/android/play/core/internal/zzah;->zza:Lcom/google/android/play/core/tasks/zzi;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object p0, v0, Lcom/google/android/play/core/internal/zzas;->zze:Ljava/util/List;

    .line 11
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_2
    iget-boolean v1, v0, Lcom/google/android/play/core/internal/zzas;->zzh:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/play/core/internal/zzas;->zzc:Lcom/google/android/play/core/appupdate/zzy;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Waiting to bind to the service."

    .line 12
    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v0, Lcom/google/android/play/core/internal/zzas;->zze:Ljava/util/List;

    .line 13
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/zzah;->run()V

    :cond_4
    :goto_1
    return-void
.end method
