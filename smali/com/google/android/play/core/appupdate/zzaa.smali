.class public final Lcom/google/android/play/core/appupdate/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public zza:Ljava/lang/Object;

.field public zzb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public zzc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/appupdate/zzs;",
            ">;"
        }
    .end annotation
.end field

.field public zzd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/appupdate/zzq;",
            ">;"
        }
    .end annotation
.end field

.field public zze:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/appupdate/zzb;",
            ">;"
        }
    .end annotation
.end field

.field public zzf:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/appupdate/zzf;",
            ">;"
        }
    .end annotation
.end field

.field public zzg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/appupdate/AppUpdateManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/transition/ViewOverlayApi18;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zza:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/play/core/appupdate/zzj;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/appupdate/zzj;-><init>(Landroidx/transition/ViewOverlayApi18;)V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzb:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/play/core/appupdate/zzt;

    const/4 v1, 0x0

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/android/play/core/appupdate/zzt;-><init>(Lcom/google/android/play/core/internal/zzcs;I)V

    .line 4
    sget-object v0, Lcom/google/android/play/core/internal/zzcq;->zza:Ljava/lang/Object;

    .line 5
    instance-of v0, p1, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/play/core/internal/zzcq;

    .line 7
    invoke-direct {v0, p1}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object p1, v0

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzc:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/internal/zzcs;

    new-instance v2, Lcom/google/android/play/core/appupdate/zzr;

    .line 9
    invoke-direct {v2, v0, p1}, Lcom/google/android/play/core/appupdate/zzr;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 10
    instance-of p1, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Lcom/google/android/play/core/internal/zzcq;

    .line 12
    invoke-direct {p1, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v2, p1

    .line 13
    :goto_1
    iput-object v2, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzd:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzb:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/play/core/internal/zzcs;

    new-instance v0, Lcom/google/android/play/core/appupdate/zzc;

    .line 14
    invoke-direct {v0, p1, v1}, Lcom/google/android/play/core/appupdate/zzc;-><init>(Lcom/google/android/play/core/internal/zzcs;I)V

    .line 15
    instance-of p1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz p1, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    new-instance p1, Lcom/google/android/play/core/internal/zzcq;

    .line 17
    invoke-direct {p1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v0, p1

    .line 18
    :goto_2
    iput-object v0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zze:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzd:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/play/core/internal/zzcs;

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzb:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/play/core/internal/zzcs;

    new-instance v3, Lcom/google/android/play/core/appupdate/zzg;

    .line 19
    invoke-direct {v3, p1, v0, v2, v1}, Lcom/google/android/play/core/appupdate/zzg;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 20
    instance-of p1, v3, Lcom/google/android/play/core/internal/zzcq;

    if-eqz p1, :cond_3

    goto :goto_3

    .line 21
    :cond_3
    new-instance p1, Lcom/google/android/play/core/internal/zzcq;

    .line 22
    invoke-direct {p1, v3}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v3, p1

    .line 23
    :goto_3
    iput-object v3, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzf:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/play/core/appupdate/zzi;

    .line 24
    invoke-direct {p1, v3, v1}, Lcom/google/android/play/core/appupdate/zzi;-><init>(Lcom/google/android/play/core/internal/zzcs;I)V

    .line 25
    instance-of v0, p1, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v0, :cond_4

    goto :goto_4

    .line 26
    :cond_4
    new-instance v0, Lcom/google/android/play/core/internal/zzcq;

    .line 27
    invoke-direct {v0, p1}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object p1, v0

    .line 28
    :goto_4
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzg:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzaa;->zza:Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzb:Ljava/lang/Object;

    .line 32
    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzc:Ljava/lang/Object;

    .line 33
    iput-object p4, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzd:Ljava/lang/Object;

    .line 34
    iput-object p5, p0, Lcom/google/android/play/core/appupdate/zzaa;->zze:Ljava/lang/Object;

    .line 35
    iput-object p6, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzf:Ljava/lang/Object;

    .line 36
    iput-object p7, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzg:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zza:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzb:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/datatransport/runtime/backends/BackendRegistry;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzc:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzd:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zze:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzf:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzg:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/google/android/datatransport/runtime/time/Clock;

    .line 2
    new-instance p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/BackendRegistry;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;Lcom/google/android/datatransport/runtime/time/Clock;)V

    return-object p0
.end method
