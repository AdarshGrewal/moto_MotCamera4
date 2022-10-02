.class public final Lcom/google/mlkit/vision/barcode/internal/zzi;
.super Lcom/google/mlkit/common/sdkinternal/MLTask;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/common/sdkinternal/MLTask<",
        "Ljava/util/List<",
        "Lcom/google/mlkit/vision/barcode/Barcode;",
        ">;",
        "Lcom/google/mlkit/vision/common/InputImage;",
        ">;"
    }
.end annotation


# static fields
.field public static zza:Z = true

.field public static final zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;


# instance fields
.field public final zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

.field public final zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

.field public final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

.field public final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;

.field public final zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

.field public zzh:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/mlkit/vision/common/internal/ImageUtils;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    .line 2
    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/MLTask;-><init>()V

    .line 2
    new-instance v0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    const-string v0, "MlKitContext can not be null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BarcodeScannerOptions can not be null"

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    iput-object p4, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    .line 5
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;

    const-string p3, "mlkit:vision"

    .line 7
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;

    return-void
.end method


# virtual methods
.method public final run(Lcom/google/mlkit/common/sdkinternal/MLTaskInput;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/mlkit/vision/common/InputImage;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->check(Lcom/google/mlkit/vision/common/InputImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    .line 5
    invoke-interface {v0, p1}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;

    move-result-object v8

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    move-object v0, p0

    move-wide v2, v6

    move-object v4, p1

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v8

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 7
    :try_start_2
    iget v0, v8, Lcom/google/mlkit/common/MlKitException;->zza:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zzN:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    :goto_0
    move-object v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, v6

    move-object v4, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V

    .line 11
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;",
            "J",
            "Lcom/google/mlkit/vision/common/InputImage;",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    .line 1
    invoke-direct {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;-><init>()V

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    .line 2
    invoke-direct {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;-><init>()V

    if-eqz p5, :cond_4

    .line 3
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/vision/barcode/Barcode;

    .line 4
    iget-object v3, v2, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 5
    invoke-interface {v3}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza()I

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x1000

    if-gt v3, v5, :cond_0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_0
    move v3, v4

    :cond_1
    move v4, v3

    .line 6
    :goto_1
    sget-object v3, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    if-nez v3, :cond_2

    .line 8
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    .line 9
    :cond_2
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    .line 10
    iget-object v2, v2, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 11
    invoke-interface {v2}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzb()I

    move-result v2

    .line 12
    sget-object v3, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    if-nez v2, :cond_3

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;

    .line 15
    :cond_3
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v12, v1, p2

    new-instance v14, Lcom/google/mlkit/vision/barcode/internal/zzh;

    move-object v1, v14

    move-object/from16 v2, p0

    move-wide v3, v12

    move-object/from16 v5, p1

    move-object v6, v10

    move-object v7, v11

    move-object/from16 v8, p4

    .line 17
    invoke-direct/range {v1 .. v8}, Lcom/google/mlkit/vision/barcode/internal/zzh;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzi;JLcom/google/android/gms/internal/mlkit_vision_barcode/zzje;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;Lcom/google/mlkit/vision/common/InputImage;)V

    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    .line 18
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;-><init>(I)V

    .line 19
    iput-object v9, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zza:Ljava/lang/Object;

    .line 20
    sget-boolean v3, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z

    .line 21
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 22
    iput-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzb:Ljava/lang/Object;

    .line 23
    iget-object v3, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    .line 24
    invoke-static {v3}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;

    move-result-object v3

    .line 25
    iput-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzc:Ljava/lang/Object;

    .line 26
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object v3

    .line 27
    iput-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzd:Ljava/lang/Object;

    .line 28
    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object v3

    .line 29
    iput-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zze:Ljava/lang/Object;

    .line 30
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;

    .line 31
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;)V

    .line 32
    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->zzba:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    .line 33
    iget-object v5, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzj:Ljava/util/Map;

    .line 34
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzj:Ljava/util/Map;

    .line 35
    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;

    .line 36
    invoke-direct {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;-><init>()V

    .line 37
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v5, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzj:Ljava/util/Map;

    .line 38
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzce;

    .line 39
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm;->zzm(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 41
    invoke-virtual {v1, v4, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;J)Z

    move-result v3

    const/4 v8, 0x1

    if-nez v3, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzi:Ljava/util/Map;

    .line 42
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-interface {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm;->zzo()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 44
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzce;->zzc(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 45
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;

    invoke-direct {v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;-><init>(I)V

    .line 46
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const-wide/16 v14, 0x0

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    add-long v14, v16, v14

    goto :goto_3

    .line 47
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 p3, v3

    int-to-long v2, v11

    div-long/2addr v14, v2

    .line 48
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v14, 0x7fffffffffffffffL

    and-long/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzc:Ljava/lang/Object;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 50
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zza(Ljava/util/List;D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zza:Ljava/lang/Object;

    const-wide v2, 0x4052c00000000000L    # 75.0

    .line 52
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zza(Ljava/util/List;D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzf:Ljava/lang/Object;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    .line 54
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zza(Ljava/util/List;D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zze:Ljava/lang/Object;

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    .line 56
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zza(Ljava/util/List;D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzd:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 58
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zza(Ljava/util/List;D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzb:Ljava/lang/Object;

    .line 60
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzin;

    .line 61
    invoke-direct {v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzin;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;)V

    .line 62
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzce;->zzc(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 63
    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;

    .line 64
    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;-><init>(I)V

    iget-boolean v10, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    if-eqz v10, :cond_8

    .line 65
    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    goto :goto_4

    :cond_8
    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjd;

    .line 66
    :goto_4
    iput-object v10, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzc:Ljava/lang/Object;

    .line 67
    new-instance v10, Landroidx/viewpager2/widget/FakeDrag;

    invoke-direct {v10}, Landroidx/viewpager2/widget/FakeDrag;-><init>()V

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v11, 0x7fffffff

    and-int/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v10, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Ljava/lang/Object;

    .line 70
    iput-object v6, v10, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Ljava/lang/Object;

    .line 71
    iput-object v2, v10, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Ljava/lang/Object;

    .line 72
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzds;

    .line 73
    invoke-direct {v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzds;-><init>(Landroidx/viewpager2/widget/FakeDrag;)V

    .line 74
    iput-object v2, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zzf:Ljava/lang/Object;

    .line 75
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;

    move-result-object v2

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;Ljava/lang/String;)V

    move-object/from16 v3, p3

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_9
    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzj:Ljava/util/Map;

    .line 77
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    iget-boolean v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    sub-long v18, v20, v12

    iget-object v2, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;

    if-eq v8, v1, :cond_a

    const/16 v0, 0x5eed

    goto :goto_6

    :cond_a
    const/16 v0, 0x5eee

    :goto_6
    move v15, v0

    .line 79
    iget v0, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zzP:I

    .line 80
    monitor-enter v2

    .line 81
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v9, -0x1

    cmp-long v1, v5, v9

    if-nez v1, :cond_b

    goto :goto_7

    .line 83
    :cond_b
    iget-object v1, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    sub-long v5, v3, v5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1e

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v5, v9

    if-gtz v1, :cond_c

    monitor-exit v2

    goto :goto_8

    .line 85
    :cond_c
    :goto_7
    :try_start_1
    iget-object v1, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zza:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    .line 86
    new-instance v5, Lcom/google/android/gms/common/internal/TelemetryData;

    new-array v6, v8, [Lcom/google/android/gms/common/internal/MethodInvocation;

    new-instance v7, Lcom/google/android/gms/common/internal/MethodInvocation;

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v14, v7

    move/from16 v16, v0

    invoke-direct/range {v14 .. v24}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    aput-object v7, v6, v0

    .line 87
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    .line 88
    check-cast v1, Lcom/google/android/gms/common/internal/service/zao;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/internal/service/zao;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzls;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzls;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/zzw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    :goto_8
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
