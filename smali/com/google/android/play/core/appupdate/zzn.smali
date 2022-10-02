.class public Lcom/google/android/play/core/appupdate/zzn;
.super Lcom/google/android/play/core/internal/zzq;
.source "com.google.android.play:core@@1.10.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/play/core/internal/zzq;"
    }
.end annotation


# instance fields
.field public final zza:Lcom/google/android/play/core/appupdate/zzy;

.field public final zzb:Lcom/google/android/play/core/tasks/zzi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/zzi<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic zzc:Lcom/google/android/play/core/appupdate/zzq;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/appupdate/zzy;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/appupdate/zzy;",
            "Lcom/google/android/play/core/tasks/zzi<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzn;->zzc:Lcom/google/android/play/core/appupdate/zzq;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzq;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzn;->zza:Lcom/google/android/play/core/appupdate/zzy;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzn;->zzb:Lcom/google/android/play/core/tasks/zzi;

    return-void
.end method


# virtual methods
.method public zzb(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzn;->zzc:Lcom/google/android/play/core/appupdate/zzq;

    iget-object p1, p1, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzn;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzn;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onCompleteUpdate"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public zzc(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzn;->zzc:Lcom/google/android/play/core/appupdate/zzq;

    iget-object p1, p1, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzn;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzn;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onRequestInfo"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
