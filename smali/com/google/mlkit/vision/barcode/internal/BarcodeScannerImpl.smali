.class public Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/BarcodeScanner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/vision/common/internal/MobileVisionBase<",
        "Ljava/util/List<",
        "Lcom/google/mlkit/vision/barcode/Barcode;",
        ">;>;",
        "Lcom/google/mlkit/vision/barcode/BarcodeScanner;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzi;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    const/4 p2, 0x2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;-><init>(I)V

    .line 2
    invoke-static {p1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzc:Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzju;

    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzju;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;)V

    .line 6
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;-><init>(I)V

    .line 7
    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    goto :goto_0

    .line 9
    :cond_0
    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    .line 10
    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzc:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzd:Ljava/lang/Object;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;

    .line 13
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;I)V

    .line 14
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    .line 15
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzh()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/zzw;
    .locals 3
    .param p1    # Lcom/google/mlkit/vision/common/InputImage;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")",
            "Lcom/google/android/gms/tasks/zzw;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "This detector is already closed!"

    const/16 v1, 0xe

    invoke-direct {p1, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    .line 5
    new-instance v0, Lcom/google/android/gms/tasks/zzw;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzw;->zzc(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    goto :goto_0

    .line 9
    :cond_0
    :try_start_1
    iget v0, p1, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    .line 10
    iget v0, p1, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    if-lt v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzd:Lcom/google/mlkit/common/sdkinternal/MLTask;

    iget-object v1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzf:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/mlkit/vision/common/internal/zzd;

    .line 12
    invoke-direct {v2, p0, p1}, Lcom/google/mlkit/vision/common/internal/zzd;-><init>(Lcom/google/mlkit/vision/common/internal/MobileVisionBase;Lcom/google/mlkit/vision/common/InputImage;)V

    iget-object p1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zze:Landroidx/transition/ViewGroupOverlayApi18;

    .line 13
    iget-object p1, p1, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/tasks/zzb;

    .line 14
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/mlkit/common/sdkinternal/ModelResource;->callAfterLoad(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    .line 15
    :cond_1
    :try_start_2
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "InputImage width and height should be at least 32!"

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    .line 16
    new-instance v0, Lcom/google/android/gms/tasks/zzw;

    .line 17
    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzw;->zzc(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    monitor-exit p0

    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
