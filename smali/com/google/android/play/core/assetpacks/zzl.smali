.class public final Lcom/google/android/play/core/assetpacks/zzl;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field public static final zza:Lcom/google/android/play/core/appupdate/zzy;


# instance fields
.field public final zzb:Lcom/google/android/play/core/assetpacks/zzbh;

.field public final zzc:Lcom/google/android/play/core/internal/zzco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzco<",
            "Lcom/google/android/play/core/assetpacks/zzy;",
            ">;"
        }
    .end annotation
.end field

.field public final zzd:Lcom/google/android/play/core/assetpacks/zzbb;

.field public final zzi:Lcom/google/android/play/core/internal/zzco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzco<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/appupdate/zzy;

    const-string v1, "AssetPackManager"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzl;->zza:Lcom/google/android/play/core/appupdate/zzy;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzbb;Lcom/google/android/play/core/splitinstall/zzs;Lcom/google/android/play/core/assetpacks/zzde;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzbx;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/common/zza;Lcom/google/android/play/core/assetpacks/zzeb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/zzbh;",
            "Lcom/google/android/play/core/internal/zzco<",
            "Lcom/google/android/play/core/assetpacks/zzy;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/zzbb;",
            "Lcom/google/android/play/core/splitinstall/zzs;",
            "Lcom/google/android/play/core/assetpacks/zzde;",
            "Lcom/google/android/play/core/assetpacks/zzco;",
            "Lcom/google/android/play/core/assetpacks/zzbx;",
            "Lcom/google/android/play/core/internal/zzco<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/play/core/common/zza;",
            "Lcom/google/android/play/core/assetpacks/zzeb;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzc:Lcom/google/android/play/core/internal/zzco;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzd:Lcom/google/android/play/core/assetpacks/zzbb;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzi:Lcom/google/android/play/core/internal/zzco;

    return-void
.end method


# virtual methods
.method public final zzg(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzd:Lcom/google/android/play/core/assetpacks/zzbb;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 3
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzd:Lcom/google/android/play/core/assetpacks/zzbb;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_1
    iput-boolean p1, v0, Lcom/google/android/play/core/listener/zzc;->zzf:Z

    invoke-virtual {v0}, Lcom/google/android/play/core/listener/zzc;->zzb()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzi:Lcom/google/android/play/core/internal/zzco;

    invoke-interface {p1}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/zzi;-><init>(Lcom/google/android/play/core/assetpacks/zzl;)V

    .line 7
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    .line 9
    monitor-exit v0

    throw p0
.end method
