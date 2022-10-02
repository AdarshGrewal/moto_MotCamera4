.class public final synthetic Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/google/mlkit/vision/common/InputImage;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;JILcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    iput-wide p2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$1:J

    iput p4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$2:I

    iput-object p5, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$3:Lcom/google/mlkit/vision/common/InputImage;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    iget-wide v2, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$1:J

    iget v4, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$2:I

    iget-object v0, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$3:Lcom/google/mlkit/vision/common/InputImage;

    move-object/from16 v5, p1

    check-cast v5, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2c

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 3
    invoke-virtual {v1, v5}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->processBarcodes(Ljava/util/List;)V

    .line 4
    iget-object v2, v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    if-eqz v2, :cond_2c

    .line 5
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    .line 6
    iget-object v3, v3, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 7
    invoke-interface {v3}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzc()Landroid/graphics/Rect;

    move-result-object v3

    .line 8
    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 9
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    neg-int v5, v4

    int-to-float v5, v5

    .line 10
    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    const/16 v5, 0x5a

    const/4 v8, 0x0

    if-eq v4, v5, :cond_2

    const/16 v5, 0xb4

    if-eq v4, v5, :cond_1

    const/16 v5, 0x10e

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget v0, v0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    int-to-float v0, v0

    .line 12
    invoke-virtual {v3, v0, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 13
    :cond_1
    iget v4, v0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    int-to-float v4, v4

    .line 14
    iget v0, v0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    int-to-float v0, v0

    .line 15
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 16
    :cond_2
    iget v0, v0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    int-to-float v0, v0

    .line 17
    invoke-virtual {v3, v8, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 18
    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 19
    iget-object v0, v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBarcodeListener:Lcom/motorola/camera/detector/MLKitBarcodeDetector$IMLKitBarcodeListener;

    iget-object v1, v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/Barcode;

    check-cast v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;

    iget-object v0, v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/detector/ScanningEngine;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v3, Lcom/motorola/camera/detector/results/ZxingResultParser;->sMlKitToZxingFormats:Ljava/util/Map;

    .line 21
    iget-object v4, v1, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 22
    invoke-interface {v4}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza()I

    move-result v4

    const/4 v5, -0x1

    const/16 v9, 0x1000

    if-gt v4, v9, :cond_3

    if-nez v4, :cond_4

    goto :goto_1

    :cond_3
    move v4, v5

    :cond_4
    move v5, v4

    .line 23
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/BarcodeFormat;

    const/4 v4, 0x0

    if-nez v3, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_1a

    :cond_5
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    .line 24
    new-instance v9, Lcom/google/zxing/ResultPoint;

    iget v10, v2, Landroid/graphics/RectF;->left:F

    iget v11, v2, Landroid/graphics/RectF;->top:F

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v5, v4

    .line 25
    new-instance v9, Lcom/google/zxing/ResultPoint;

    iget v12, v2, Landroid/graphics/RectF;->right:F

    invoke-direct {v9, v12, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x1

    aput-object v9, v5, v11

    .line 26
    new-instance v9, Lcom/google/zxing/ResultPoint;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v9, v12, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x2

    aput-object v9, v5, v11

    .line 27
    new-instance v9, Lcom/google/zxing/ResultPoint;

    invoke-direct {v9, v10, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v9, v5, v2

    .line 28
    new-instance v2, Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/mlkit/vision/barcode/Barcode;->getRawValue()Ljava/lang/String;

    move-result-object v9

    .line 29
    iget-object v10, v1, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 30
    invoke-interface {v10}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzo()[B

    move-result-object v10

    if-eqz v10, :cond_6

    array-length v12, v10

    .line 31
    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    .line 32
    :goto_2
    invoke-direct {v2, v9, v10, v5, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 33
    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    .line 34
    :try_start_0
    iget-object v5, v2, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 35
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    int-to-long v9, v5

    .line 36
    iget-object v5, v2, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    .line 37
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v9, v12

    goto :goto_3

    .line 38
    :catch_0
    iget-object v5, v2, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 39
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    .line 40
    iget-object v9, v2, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    .line 41
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v5

    int-to-long v9, v9

    .line 42
    :goto_3
    invoke-direct {v3, v9, v10}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;-><init>(J)V

    .line 43
    sget-object v5, Lcom/motorola/camera/detector/results/ZxingResultParser;->FORMATS_2D:Ljava/util/Set;

    .line 44
    iget-object v9, v2, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 45
    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 46
    iput v11, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mSource:I

    goto :goto_4

    .line 47
    :cond_7
    iput v4, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mSource:I

    .line 48
    :goto_4
    iget-object v5, v2, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    .line 49
    array-length v9, v5

    move v10, v8

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_5
    if-ge v4, v9, :cond_10

    aget-object v14, v5, v4

    .line 50
    iget v15, v14, Lcom/google/zxing/ResultPoint;->x:F

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v17, v15, v16

    if-eqz v17, :cond_f

    .line 51
    iget v14, v14, Lcom/google/zxing/ResultPoint;->y:F

    cmpl-float v16, v14, v16

    if-eqz v16, :cond_f

    cmpl-float v16, v10, v8

    if-eqz v16, :cond_8

    cmpl-float v16, v10, v15

    if-lez v16, :cond_9

    :cond_8
    move v10, v15

    :cond_9
    cmpl-float v16, v12, v8

    if-eqz v16, :cond_a

    cmpg-float v16, v12, v15

    if-gez v16, :cond_b

    :cond_a
    move v12, v15

    :cond_b
    cmpl-float v15, v11, v8

    if-eqz v15, :cond_c

    cmpl-float v15, v11, v14

    if-lez v15, :cond_d

    :cond_c
    move v11, v14

    :cond_d
    cmpl-float v15, v13, v8

    if-eqz v15, :cond_e

    cmpg-float v15, v13, v14

    if-gez v15, :cond_f

    :cond_e
    move v13, v14

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 52
    :cond_10
    new-instance v4, Landroid/graphics/Rect;

    float-to-int v5, v10

    float-to-int v8, v11

    float-to-int v9, v12

    float-to-int v10, v13

    invoke-direct {v4, v5, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    iput-object v4, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mImageRect:Landroid/graphics/Rect;

    .line 54
    iget-object v4, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mAlwaysAwareData:Lcom/motorola/camera/analytics/AlwaysAwareData;

    iput-wide v6, v4, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanTime:J

    .line 55
    sget-object v4, Lcom/motorola/camera/detector/results/ZxingResultParser;->sSourceAnalytics:Ljava/util/Map;

    .line 56
    iget-object v5, v2, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 57
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const/16 v5, 0x9

    .line 58
    sget-object v6, Lcom/google/zxing/client/result/ResultParser;->PARSERS:[Lcom/google/zxing/client/result/ResultParser;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_12

    aget-object v9, v6, v8

    .line 59
    invoke-virtual {v9, v2}, Lcom/google/zxing/client/result/ResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v9

    if-eqz v9, :cond_11

    const/4 v6, 0x0

    goto :goto_7

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 60
    :cond_12
    new-instance v9, Lcom/google/zxing/client/result/TextParsedResult;

    .line 61
    iget-object v6, v2, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    const/4 v7, 0x0

    .line 62
    invoke-direct {v9, v6, v7}, Lcom/google/zxing/client/result/TextParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 63
    :goto_7
    iget-object v7, v9, Lcom/google/zxing/client/result/ParsedResult;->type:Ljava/lang/Object;

    check-cast v7, Lcom/google/zxing/client/result/ParsedResultType;

    .line 64
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x8

    const/4 v12, 0x5

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_19

    .line 65
    :pswitch_0
    check-cast v9, Lcom/google/zxing/client/result/VINParsedResult;

    .line 66
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Product;

    invoke-direct {v2}, Lcom/motorola/camera/detector/results/tidbit/Product;-><init>()V

    .line 67
    iget-object v5, v9, Lcom/google/zxing/client/result/VINParsedResult;->vin:Ljava/lang/String;

    .line 68
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Product;->productId:Ljava/lang/String;

    .line 69
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    move v5, v8

    goto/16 :goto_19

    .line 70
    :pswitch_1
    check-cast v9, Lcom/google/zxing/client/result/ISBNParsedResult;

    .line 71
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Product;

    invoke-direct {v2}, Lcom/motorola/camera/detector/results/tidbit/Product;-><init>()V

    .line 72
    iget-object v5, v9, Lcom/google/zxing/client/result/ISBNParsedResult;->isbn:Ljava/lang/String;

    .line 73
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Product;->productId:Ljava/lang/String;

    .line 74
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    const/4 v5, 0x3

    goto/16 :goto_19

    .line 75
    :pswitch_2
    check-cast v9, Lcom/google/zxing/client/result/WifiParsedResult;

    .line 76
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/WifiAp;

    invoke-direct {v2}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;-><init>()V

    .line 77
    iget-object v5, v9, Lcom/google/zxing/client/result/WifiParsedResult;->ssid:Ljava/lang/String;

    .line 78
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    .line 79
    iget-object v5, v9, Lcom/google/zxing/client/result/WifiParsedResult;->networkEncryption:Ljava/lang/String;

    .line 80
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    .line 81
    iget-object v5, v9, Lcom/google/zxing/client/result/WifiParsedResult;->password:Ljava/lang/String;

    .line 82
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    .line 83
    iget-boolean v5, v9, Lcom/google/zxing/client/result/WifiParsedResult;->hidden:Z

    .line 84
    iput-boolean v5, v2, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    .line 85
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    const/16 v5, 0xc

    goto/16 :goto_19

    .line 86
    :pswitch_3
    check-cast v9, Lcom/google/zxing/client/result/CalendarParsedResult;

    .line 87
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Event;

    invoke-direct {v2}, Lcom/motorola/camera/detector/results/tidbit/Event;-><init>()V

    .line 88
    iget-object v5, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    .line 89
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Event;->summary:Ljava/lang/String;

    .line 90
    new-instance v5, Ljava/util/Date;

    iget-wide v7, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 91
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Event;->start:Ljava/util/Date;

    .line 92
    iget-boolean v5, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    .line 93
    iput-boolean v5, v2, Lcom/motorola/camera/detector/results/tidbit/Event;->startAllDay:Z

    .line 94
    iget-wide v7, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    const-wide/16 v12, 0x0

    cmp-long v5, v7, v12

    if-gez v5, :cond_13

    goto :goto_8

    :cond_13
    new-instance v6, Ljava/util/Date;

    iget-wide v7, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 95
    :goto_8
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Event;->end:Ljava/util/Date;

    .line 96
    iget-boolean v5, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    .line 97
    iput-boolean v5, v2, Lcom/motorola/camera/detector/results/tidbit/Event;->endAllDay:Z

    .line 98
    iget-object v5, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    .line 99
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Event;->location:Ljava/lang/String;

    .line 100
    iget-object v5, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    .line 101
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Event;->organizer:Ljava/lang/String;

    .line 102
    iget-object v5, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    .line 103
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Event;->attendees:[Ljava/lang/String;

    .line 104
    iget-object v5, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    .line 105
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Event;->description:Ljava/lang/String;

    .line 106
    iget-wide v5, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    .line 107
    iput-wide v5, v2, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    .line 108
    iget-wide v7, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    .line 109
    iput-wide v7, v2, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    .line 110
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    const-wide v6, -0x3f70bf3333333333L    # -1000.1

    if-eqz v5, :cond_14

    iput-wide v6, v2, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    .line 111
    :cond_14
    iget-wide v8, v2, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_15

    iput-wide v6, v2, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    .line 112
    :cond_15
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    const/4 v5, 0x1

    goto/16 :goto_19

    .line 113
    :pswitch_4
    check-cast v9, Lcom/google/zxing/client/result/SMSParsedResult;

    .line 114
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Message;

    invoke-direct {v2}, Lcom/motorola/camera/detector/results/tidbit/Message;-><init>()V

    .line 115
    iget-object v5, v9, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 116
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Message;->numbers:[Ljava/lang/String;

    .line 117
    iget-object v5, v9, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 118
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Message;->vias:[Ljava/lang/String;

    .line 119
    iget-object v5, v9, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 120
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Message;->subject:Ljava/lang/String;

    .line 121
    iget-object v5, v9, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    .line 122
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Message;->body:Ljava/lang/String;

    .line 123
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    goto/16 :goto_18

    .line 124
    :pswitch_5
    check-cast v9, Lcom/google/zxing/client/result/TelParsedResult;

    .line 125
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Contact;

    invoke-direct {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;-><init>()V

    .line 126
    iget-object v5, v9, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    .line 127
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string/jumbo v5, "\u200e"

    .line 128
    invoke-static {v5}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 129
    iget-object v7, v9, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    .line 130
    invoke-static {v6, v7, v5}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 131
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    goto :goto_9

    :cond_16
    const/4 v5, 0x1

    const/4 v6, 0x0

    new-array v5, v5, [Ljava/lang/String;

    .line 132
    iget-object v7, v9, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 133
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    .line 134
    :goto_9
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    .line 135
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    const/4 v5, 0x6

    goto/16 :goto_19

    .line 136
    :pswitch_6
    check-cast v9, Lcom/google/zxing/client/result/GeoParsedResult;

    .line 137
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Geo;

    invoke-direct {v2}, Lcom/motorola/camera/detector/results/tidbit/Geo;-><init>()V

    .line 138
    iget-wide v5, v9, Lcom/google/zxing/client/result/GeoParsedResult;->latitude:D

    .line 139
    iput-wide v5, v2, Lcom/motorola/camera/detector/results/tidbit/Geo;->latitude:D

    .line 140
    iget-wide v5, v9, Lcom/google/zxing/client/result/GeoParsedResult;->longitude:D

    .line 141
    iput-wide v5, v2, Lcom/motorola/camera/detector/results/tidbit/Geo;->longitude:D

    .line 142
    iget-wide v5, v9, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    .line 143
    iput-wide v5, v2, Lcom/motorola/camera/detector/results/tidbit/Geo;->altitude:D

    .line 144
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    const/4 v5, 0x4

    goto/16 :goto_19

    .line 145
    :pswitch_7
    iget-object v2, v2, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 146
    check-cast v9, Lcom/google/zxing/client/result/TextParsedResult;

    .line 147
    iget-object v5, v9, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    .line 148
    sget-object v6, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->QR_PATTERNS:Ljava/util/List;

    .line 149
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 150
    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 151
    new-instance v7, Landroid/content/ComponentName;

    const-string v13, "com.motorola.ccc.notification"

    const-string v14, "com.motorola.ccc.notification.ExternalMonopolyLauncher"

    invoke-direct {v7, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_17

    move v6, v7

    goto :goto_a

    :cond_17
    const/4 v6, 0x0

    :goto_a
    if-nez v6, :cond_18

    goto/16 :goto_f

    .line 152
    :cond_18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 153
    sget-object v13, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->QR_PATTERNS:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 154
    invoke-virtual {v6, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    or-int/2addr v14, v15

    goto :goto_b

    :cond_19
    const-string v6, "Banco24Horas"

    .line 155
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1a

    const-string v6, "SaqueDigital"

    .line 156
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v13, 0xd

    if-ne v6, v13, :cond_1a

    move v6, v7

    goto :goto_c

    :cond_1a
    const/4 v6, 0x0

    :goto_c
    if-eqz v6, :cond_1b

    const/4 v5, 0x2

    goto :goto_11

    :cond_1b
    if-nez v14, :cond_1f

    const-string v6, "[^0-9]"

    const-string v13, ""

    .line 157
    invoke-virtual {v5, v6, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v13, 0x2c

    if-eq v6, v13, :cond_1c

    const/4 v5, 0x0

    goto :goto_e

    :cond_1c
    const-string v6, "8"

    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    .line 161
    invoke-static {v5, v8, v12}, Lcom/google/android/gms/common/R$string;->barcodeVDCalculation(Ljava/lang/String;II)I

    move-result v13

    .line 162
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v12, v8, v14, v13}, Landroidx/room/RoomDatabase$$ExternalSyntheticOutline1;->m(Ljava/lang/String;IILjava/lang/StringBuilder;I)V

    const/4 v6, 0x4

    invoke-static {v5, v6, v14}, Landroidx/room/RoomDatabase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :cond_1d
    const/4 v6, 0x4

    const/4 v13, 0x0

    .line 163
    invoke-static {v5, v6, v8}, Lcom/google/android/gms/common/R$string;->barcodeVDCalculation(Ljava/lang/String;II)I

    move-result v8

    .line 164
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v13, v6, v14, v8}, Landroidx/room/RoomDatabase$$ExternalSyntheticOutline1;->m(Ljava/lang/String;IILjava/lang/StringBuilder;I)V

    invoke-static {v5, v12, v14}, Landroidx/room/RoomDatabase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    .line 165
    :goto_d
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_e
    if-eqz v5, :cond_1e

    goto :goto_10

    :cond_1e
    :goto_f
    const/4 v5, 0x0

    goto :goto_11

    :cond_1f
    :goto_10
    move v5, v7

    .line 166
    :goto_11
    sget-object v6, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-ne v6, v2, :cond_21

    .line 167
    iget-object v2, v9, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    if-eqz v2, :cond_20

    .line 168
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v10, :cond_20

    sget-object v6, Lcom/motorola/camera/detector/results/ZxingResultParser;->CODE_128_PREFIXES:Ljava/util/List;

    const/4 v8, 0x2

    const/4 v10, 0x0

    .line 169
    invoke-virtual {v2, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move v2, v7

    goto :goto_12

    :cond_20
    const/4 v2, 0x0

    :goto_12
    if-eqz v2, :cond_21

    .line 170
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Product;

    invoke-direct {v2}, Lcom/motorola/camera/detector/results/tidbit/Product;-><init>()V

    .line 171
    iget-object v5, v9, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    .line 172
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Product;->productId:Ljava/lang/String;

    .line 173
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    goto/16 :goto_16

    .line 174
    :cond_21
    iget-object v2, v9, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    .line 175
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_23

    const-string v6, "motorolardpconnection"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "motorolareadyformiracast"

    .line 176
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    move v2, v7

    goto :goto_13

    :cond_23
    const/4 v2, 0x0

    .line 177
    :goto_13
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v8, "com.motorola.permission.mobiledesktop.rdp"

    .line 178
    invoke-virtual {v6, v8}, Landroid/app/Application;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_24

    goto :goto_14

    :cond_24
    const/4 v7, 0x0

    :goto_14
    and-int/2addr v2, v7

    const-string v6, "com.motorola.mobiledesktop"

    .line 179
    invoke-static {v6}, Lcom/motorola/camera/shared/PackageUtility;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    if-eqz v2, :cond_25

    .line 180
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/MotoRdpConnection;

    .line 181
    iget-object v5, v9, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    .line 182
    invoke-direct {v2, v5}, Lcom/motorola/camera/detector/results/tidbit/MotoRdpConnection;-><init>(Ljava/lang/String;)V

    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    goto :goto_15

    :cond_25
    if-eqz v5, :cond_26

    .line 183
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;

    .line 184
    iget-object v6, v9, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    .line 185
    invoke-direct {v2, v6, v5}, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;-><init>(Ljava/lang/String;I)V

    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    goto :goto_15

    .line 186
    :cond_26
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Text;

    invoke-direct {v2}, Lcom/motorola/camera/detector/results/tidbit/Text;-><init>()V

    .line 187
    iget-object v5, v9, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    .line 188
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Text;->text:Ljava/lang/String;

    .line 189
    iget-object v5, v9, Lcom/google/zxing/client/result/TextParsedResult;->language:Ljava/lang/String;

    if-eqz v5, :cond_27

    .line 190
    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Text;->locale:Ljava/util/Locale;

    .line 191
    :cond_27
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    :goto_15
    move v5, v11

    goto/16 :goto_19

    .line 192
    :pswitch_8
    check-cast v9, Lcom/google/zxing/client/result/URIParsedResult;

    .line 193
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Url;

    invoke-direct {v2}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>()V

    .line 194
    iget-object v5, v9, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    .line 195
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/String;

    .line 196
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    move v5, v10

    goto/16 :goto_19

    .line 197
    :pswitch_9
    instance-of v2, v9, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    if-eqz v2, :cond_28

    .line 198
    check-cast v9, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    .line 199
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Product;

    invoke-direct {v2}, Lcom/motorola/camera/detector/results/tidbit/Product;-><init>()V

    .line 200
    iget-object v5, v9, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    .line 201
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Product;->productId:Ljava/lang/String;

    .line 202
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    goto :goto_16

    .line 203
    :cond_28
    check-cast v9, Lcom/google/zxing/client/result/ProductParsedResult;

    .line 204
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Product;

    invoke-direct {v2}, Lcom/motorola/camera/detector/results/tidbit/Product;-><init>()V

    .line 205
    iget-object v5, v9, Lcom/google/zxing/client/result/ProductParsedResult;->normalizedProductID:Ljava/lang/String;

    .line 206
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Product;->productId:Ljava/lang/String;

    .line 207
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    :goto_16
    const/4 v5, 0x7

    goto :goto_19

    .line 208
    :pswitch_a
    check-cast v9, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    .line 209
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Message;

    invoke-direct {v2}, Lcom/motorola/camera/detector/results/tidbit/Message;-><init>()V

    .line 210
    iget-object v5, v9, Lcom/google/zxing/client/result/EmailAddressParsedResult;->tos:[Ljava/lang/String;

    if-eqz v5, :cond_2a

    array-length v7, v5

    if-nez v7, :cond_29

    goto :goto_17

    :cond_29
    const/4 v6, 0x0

    aget-object v6, v5, v6

    .line 211
    :cond_2a
    :goto_17
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Message;->email:Ljava/lang/String;

    .line 212
    iget-object v5, v9, Lcom/google/zxing/client/result/EmailAddressParsedResult;->subject:Ljava/lang/String;

    .line 213
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Message;->subject:Ljava/lang/String;

    .line 214
    iget-object v5, v9, Lcom/google/zxing/client/result/EmailAddressParsedResult;->body:Ljava/lang/String;

    .line 215
    iput-object v5, v2, Lcom/motorola/camera/detector/results/tidbit/Message;->body:Ljava/lang/String;

    .line 216
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    :goto_18
    move v5, v12

    goto :goto_19

    :pswitch_b
    const/4 v5, 0x2

    .line 217
    check-cast v9, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .line 218
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Contact;

    invoke-direct {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;-><init>()V

    .line 219
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    .line 220
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    .line 221
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;

    .line 222
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    .line 223
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    .line 224
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->pronunciation:Ljava/lang/String;

    .line 225
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    .line 226
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    .line 227
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneTypes:[Ljava/lang/String;

    .line 228
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    .line 229
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    .line 230
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    .line 231
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->emailTypes:[Ljava/lang/String;

    .line 232
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    .line 233
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    .line 234
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    .line 235
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    .line 236
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    .line 237
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    .line 238
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    .line 239
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->addressTypes:[Ljava/lang/String;

    .line 240
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    .line 241
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    .line 242
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    .line 243
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    .line 244
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    .line 245
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;

    .line 246
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    .line 247
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    .line 248
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    .line 249
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;

    .line 250
    iput-object v6, v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    .line 251
    iput-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    .line 252
    :goto_19
    iget-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mAlwaysAwareData:Lcom/motorola/camera/analytics/AlwaysAwareData;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget v4, v4, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->mCheckInData:I

    shl-int/2addr v4, v11

    invoke-static {v5}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getmCheckInData$$com$motorola$camera$analytics$AlwaysAwareData$OBJECT_CONTENT(I)I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v2, Lcom/motorola/camera/analytics/AlwaysAwareData;->mType:I

    move-object v2, v3

    :goto_1a
    if-eqz v2, :cond_2b

    .line 254
    iget-object v0, v0, Lcom/motorola/camera/detector/ScanningEngine;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1b

    :cond_2b
    const-string v0, "Unrecognized barcode: "

    .line 255
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/mlkit/vision/barcode/Barcode;->getRawValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanningEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_1b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
