.class public final Lcom/google/mlkit/vision/barcode/internal/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"


# static fields
.field public static final zza:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzd:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroid/util/SparseArray;

    .line 1
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v2, Lcom/google/mlkit/vision/barcode/internal/zzb;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    const/4 v4, 0x2

    .line 6
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    const/4 v5, 0x4

    .line 7
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    const/16 v6, 0x8

    .line 8
    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    const/16 v7, 0x10

    .line 9
    invoke-virtual {v0, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    const/16 v8, 0x20

    .line 10
    invoke-virtual {v0, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    const/16 v9, 0x40

    .line 11
    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    const/16 v10, 0x80

    .line 12
    invoke-virtual {v0, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    const/16 v11, 0x100

    .line 13
    invoke-virtual {v0, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    const/16 v12, 0x200

    .line 14
    invoke-virtual {v0, v12, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    const/16 v13, 0x400

    .line 15
    invoke-virtual {v0, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    const/16 v14, 0x800

    .line 16
    invoke-virtual {v0, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    const/16 v15, 0x1000

    .line 17
    invoke-virtual {v0, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    .line 19
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    .line 20
    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    const/4 v2, 0x3

    .line 21
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    .line 22
    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    const/4 v2, 0x5

    .line 23
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    const/4 v2, 0x6

    .line 24
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    const/4 v2, 0x7

    .line 25
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    .line 26
    invoke-virtual {v1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    const/16 v2, 0x9

    .line 27
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    const/16 v2, 0xa

    .line 28
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    const/16 v2, 0xb

    .line 29
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    const/16 v2, 0xc

    .line 30
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    .line 31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;
    .locals 4

    .line 1
    iget p0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zza:I

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;-><init>()V

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 4
    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    goto :goto_1

    .line 5
    :cond_0
    sget-object v1, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/Map;

    .line 6
    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, p0

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    new-instance p0, Landroidx/lifecycle/MethodCallsLogger;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroidx/lifecycle/MethodCallsLogger;-><init>(I)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object v0

    .line 11
    iput-object v0, p0, Landroidx/lifecycle/MethodCallsLogger;->mCalledMethods:Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;

    .line 13
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;-><init>(Landroidx/lifecycle/MethodCallsLogger;)V

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;J)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzi:Ljava/util/Map;

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;-><init>(I)V

    .line 6
    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    .line 7
    :goto_0
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzc:Ljava/lang/Object;

    .line 8
    new-instance v2, Lcom/google/mlkit/vision/barcode/internal/zza;

    invoke-direct {v2}, Lcom/google/mlkit/vision/barcode/internal/zza;-><init>()V

    .line 9
    iput-object p1, v2, Lcom/google/mlkit/vision/barcode/internal/zza;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjx;

    .line 11
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjx;-><init>(Lcom/google/mlkit/vision/barcode/internal/zza;)V

    .line 12
    iput-object p1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zze:Ljava/lang/Object;

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static zzf()Z
    .locals 3

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzd(Landroid/content/Context;)Z

    move-result v1

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return v1
.end method
