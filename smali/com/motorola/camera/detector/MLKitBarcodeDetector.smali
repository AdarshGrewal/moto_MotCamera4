.class public Lcom/motorola/camera/detector/MLKitBarcodeDetector;
.super Ljava/lang/Object;
.source "MLKitBarcodeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/detector/MLKitBarcodeDetector$IMLKitBarcodeListener;
    }
.end annotation


# static fields
.field public static sInitialized:Z = false

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public mBackoffFrameCounter:I

.field public mBackoffTimeBetweenScansFactor:I

.field public final mBarcodeListener:Lcom/motorola/camera/detector/MLKitBarcodeDetector$IMLKitBarcodeListener;

.field public mCandidateBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

.field public mCurrentBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mLastCaptureTimeStamp:J

.field public mScanAllowed:Z

.field public mScanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

.field public mScanning:Z

.field public final mShouldBackoff:Z

.field public final mTimeBetweenScans:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector$IMLKitBarcodeListener;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    .line 4
    iput v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    .line 5
    iput v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    .line 6
    sget-object v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBarcodeListener:Lcom/motorola/camera/detector/MLKitBarcodeDetector$IMLKitBarcodeListener;

    int-to-long p1, p2

    .line 8
    iput-wide p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mTimeBetweenScans:J

    .line 9
    iput-boolean p3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mShouldBackoff:Z

    .line 10
    new-instance p1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final containsBarcode(Ljava/util/List;Lcom/google/mlkit/vision/barcode/Barcode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode;",
            ">;",
            "Lcom/google/mlkit/vision/barcode/Barcode;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/barcode/Barcode;

    .line 2
    invoke-virtual {p1}, Lcom/google/mlkit/vision/barcode/Barcode;->getRawValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/mlkit/vision/barcode/Barcode;->getRawValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/mlkit/vision/barcode/Barcode;->getRawValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/mlkit/vision/barcode/Barcode;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final processBarcodes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    .line 2
    iput v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    if-nez v1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/barcode/Barcode;

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    goto/16 :goto_3

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->containsBarcode(Ljava/util/List;Lcom/google/mlkit/vision/barcode/Barcode;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    if-eqz v0, :cond_b

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/barcode/Barcode;

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    .line 9
    invoke-virtual {v1}, Lcom/google/mlkit/vision/barcode/Barcode;->getRawValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/mlkit/vision/barcode/Barcode;->getRawValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    goto :goto_0

    .line 11
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->containsBarcode(Ljava/util/List;Lcom/google/mlkit/vision/barcode/Barcode;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    goto :goto_3

    .line 13
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/barcode/Barcode;

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    goto :goto_3

    .line 14
    :cond_5
    iget-boolean p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mShouldBackoff:Z

    if-nez p1, :cond_6

    goto :goto_2

    .line 15
    :cond_6
    iget p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    const/4 v0, 0x4

    const/16 v1, 0x8

    if-eq p1, v0, :cond_7

    if-ne p1, v1, :cond_8

    .line 16
    :cond_7
    iget v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    :cond_8
    if-gt p1, v1, :cond_9

    add-int/lit8 p1, p1, 0x1

    .line 17
    iput p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    .line 18
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 19
    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    goto :goto_3

    .line 20
    :cond_a
    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    :cond_b
    :goto_3
    return-void
.end method

.method public setScanAllowed(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mLastCaptureTimeStamp:J

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    return-void
.end method
