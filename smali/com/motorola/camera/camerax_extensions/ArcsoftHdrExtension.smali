.class public final Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;
.super Ljava/lang/Object;
.source "ArcsoftHdrExtension.kt"

# interfaces
.implements Lcom/motorola/camera/camerax_extensions/Extension;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArcsoftHdrExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArcsoftHdrExtension.kt\ncom/motorola/camera/camerax_extensions/ArcsoftHdrExtension\n+ 2 JsonUtils.kt\ncom/motorola/camera/camerax_extensions/JsonUtils\n*L\n1#1,415:1\n134#2,10:416\n*S KotlinDebug\n*F\n+ 1 ArcsoftHdrExtension.kt\ncom/motorola/camera/camerax_extensions/ArcsoftHdrExtension\n*L\n353#1:416,10\n*E\n"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public algoConfig:Lorg/json/JSONObject;

.field public captureSize:Landroid/graphics/Point;

.field public final characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public currentInputFrameCount:I

.field public filterConfig:Lorg/json/JSONObject;

.field public jniClientId:J

.field public final jsonConfig:Lorg/json/JSONObject;

.field public final jsonIndex:I

.field public luxAverage:F

.field public final mSensorName:Ljava/lang/String;

.field public maxInputFrameCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const-string v0, "jsonConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    iput-object p2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 4
    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->mSensorName:Ljava/lang/String;

    .line 5
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->captureSize:Landroid/graphics/Point;

    const/high16 p1, -0x40800000    # -1.0f

    .line 6
    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->luxAverage:F

    return-void
.end method


# virtual methods
.method public buildRequest(Ljava/lang/String;I)Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    .line 1
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2
    sget-object v3, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 3
    new-instance v4, Lorg/json/JSONTokener;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const/4 v5, -0x1

    const-string v6, "results"

    .line 4
    invoke-virtual {v3, v6, v4, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_1d

    .line 6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    goto/16 :goto_f

    :cond_1
    const/4 v6, 0x0

    .line 7
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONObject;

    .line 8
    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v6, v8}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getIsoToGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)Lkotlin/Pair;

    move-result-object v8

    .line 9
    iget-object v9, v8, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 10
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    .line 11
    iget-object v8, v8, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 12
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 13
    new-instance v15, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v15}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    .line 14
    new-instance v13, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v13}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    .line 15
    iget-object v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v6, v10, v8, v15, v13}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getExpValueHdr(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 16
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unable to retrieve exposure values"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 17
    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->mSensorName:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getRecentFramesAverageLux(Ljava/lang/String;Lorg/json/JSONArray;)F

    move-result v1

    iput v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->luxAverage:F

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    const-string v8, "filterConfig"

    if-ltz v4, :cond_e

    float-to-double v10, v1

    .line 18
    iget-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_d

    iget v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string v12, "frame-ev-on-lux"

    invoke-virtual {v3, v12, v1, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    if-nez v1, :cond_3

    .line 19
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    const-string v3, "EV Lux table not found in config"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 p2, v2

    goto/16 :goto_5

    .line 20
    :cond_3
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 21
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_c

    const/4 v12, 0x0

    :goto_0
    add-int/lit8 v14, v12, 0x1

    .line 22
    invoke-virtual {v1, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v12, Lorg/json/JSONObject;

    move-object/from16 p1, v7

    .line 23
    sget-object v7, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    move-object/from16 p2, v2

    const-string v2, "lux"

    .line 24
    invoke-virtual {v7, v2, v12, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Double;

    if-nez v2, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    cmpl-double v2, v10, v16

    if-gez v2, :cond_7

    .line 26
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ne v14, v2, :cond_5

    goto :goto_1

    :cond_5
    if-lt v14, v4, :cond_6

    goto/16 :goto_a

    :cond_6
    move-object/from16 v7, p1

    move-object/from16 v2, p2

    move v12, v14

    goto :goto_0

    :cond_7
    :goto_1
    const-string v1, "ev"

    .line 27
    invoke-virtual {v7, v1, v12, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 28
    check-cast v1, Lorg/json/JSONArray;

    if-nez v1, :cond_8

    goto :goto_5

    .line 29
    :cond_8
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    iput v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->currentInputFrameCount:I

    .line 30
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_14

    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v7, v4, 0x1

    .line 31
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    const-wide/16 v16, 0x0

    sub-double v16, v10, v16

    .line 32
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x3f3a36e2eb1c432dL    # 4.0E-4

    cmpg-double v4, v16, v18

    if-gez v4, :cond_9

    const/4 v4, 0x1

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_a

    .line 33
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto :goto_4

    .line 34
    :cond_a
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_4
    if-lt v7, v2, :cond_b

    goto/16 :goto_a

    :cond_b
    move v4, v7

    goto :goto_2

    :cond_c
    move-object/from16 p2, v2

    goto :goto_a

    .line 35
    :cond_d
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_e
    move-object/from16 p2, v2

    .line 36
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 37
    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_1c

    iget v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string v7, "frame-ev-default"

    invoke-virtual {v3, v7, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    if-nez v2, :cond_f

    .line 38
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    const-string v2, "default EV Lux table not found in config"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const/4 v3, 0x0

    goto :goto_a

    .line 39
    :cond_f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_13

    const/4 v4, 0x0

    :goto_6
    add-int/lit8 v7, v4, 0x1

    .line 40
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    const-wide/16 v16, 0x0

    sub-double v16, v10, v16

    .line 41
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x3f3a36e2eb1c432dL    # 4.0E-4

    cmpg-double v4, v16, v18

    if-gez v4, :cond_10

    const/4 v4, 0x1

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_11

    .line 42
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto :goto_8

    .line 43
    :cond_11
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_8
    if-lt v7, v3, :cond_12

    goto :goto_9

    :cond_12
    move v4, v7

    goto :goto_6

    .line 44
    :cond_13
    :goto_9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    iput v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->currentInputFrameCount:I

    move-object v3, v1

    :cond_14
    :goto_a
    if-nez v3, :cond_15

    .line 45
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    const-string v1, "could not calculate exposure values"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_15
    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 47
    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_1b

    iget v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string v7, "exp-curve-anchors"

    .line 48
    invoke-virtual {v1, v7, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v4, "gains"

    .line 49
    invoke-virtual {v1, v4, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v7, "exposures"

    .line 50
    invoke-virtual {v1, v7, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 51
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v2, v5, :cond_16

    .line 52
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    const-string v1, "exp-curve-anchors list sizes don\'t match"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_18

    const/4 v7, 0x0

    :goto_b
    add-int/lit8 v8, v7, 0x1

    .line 55
    new-instance v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "gainList[i]"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v14, "expList[i]"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Number;

    move-object/from16 p1, v13

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>(DD)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lt v8, v5, :cond_17

    goto :goto_c

    :cond_17
    move-object/from16 v13, p1

    move v7, v8

    goto :goto_b

    :cond_18
    move-object/from16 p1, v13

    .line 56
    :goto_c
    iget-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 57
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 58
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, [I

    .line 60
    invoke-static {v6}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getAntibandingStrategy(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    move-result-object v4

    .line 61
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 62
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_1a

    const/4 v7, 0x0

    :goto_d
    add-int/lit8 v8, v7, 0x1

    .line 63
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 64
    new-instance v14, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v14}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    .line 65
    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v10, "exposureValues[i]"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    move-object v10, v2

    move-object v11, v15

    move-object/from16 v12, p1

    move-object/from16 v7, p1

    move-object/from16 p1, v2

    move-object v2, v13

    move-object/from16 v18, v14

    move-wide/from16 v13, v16

    move-object/from16 v22, v15

    move-object v15, v4

    move-object/from16 v16, v18

    invoke-static/range {v10 .. v16}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->calcExposureAtEv(Ljava/util/ArrayList;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;DLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)V

    move-object/from16 v10, v18

    .line 66
    invoke-static {v2, v10, v9}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->constructBracketingRequest(Lorg/json/JSONObject;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;F)Z

    .line 67
    sget-object v10, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v21, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v17, "EDGE_MODE"

    const/4 v11, 0x2

    move-object/from16 v16, v21

    move/from16 v18, v11

    move-object/from16 v19, v10

    move-object/from16 v20, v2

    invoke-static/range {v16 .. v21}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 68
    sget-object v21, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v17, "NOISE_REDUCTION_MODE"

    move-object/from16 v16, v21

    invoke-static/range {v16 .. v21}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 69
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v12, "CONTROL_AWB_LOCK"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v2, v11, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 70
    iget-object v11, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v2, v11}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->setFastCaptureIfAvailable(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 71
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v12, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 73
    invoke-virtual {v10, v2, v11, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-lt v8, v6, :cond_19

    goto :goto_e

    :cond_19
    move-object/from16 v2, p1

    move-object/from16 p1, v7

    move v7, v8

    move-object/from16 v15, v22

    goto/16 :goto_d

    :cond_1a
    :goto_e
    const-string v0, "requests"

    move-object/from16 v1, p2

    .line 75
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1b
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1c
    const/4 v0, 0x0

    .line 78
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1d
    :goto_f
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse input result"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public configureStream(Landroid/view/Surface;I)Landroid/view/Surface;
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    .line 2
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    const-string p1, "client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3
    :cond_1
    sget-object p2, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Companion:Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Companion;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Companion;->fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->getAlignment()I

    move-result v8

    .line 4
    iget-object p2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    const-string v0, "mcfJson"

    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-boolean v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z

    if-eqz v0, :cond_6

    .line 7
    sget-object v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->Companion:Lcom/motorola/camera/camerax_extensions/McfCameraXConfig$Companion;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z

    if-eqz v1, :cond_5

    .line 10
    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    const-string v2, "camerax"

    const/4 v3, -0x1

    .line 11
    invoke-virtual {v1, v2, p2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    .line 12
    check-cast p2, Lorg/json/JSONObject;

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    const-string v4, "align-512"

    .line 13
    invoke-virtual {v1, v4, p2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Ljava/lang/Boolean;

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 15
    :goto_0
    sput-boolean v4, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->align512:Z

    const-string/jumbo v4, "swap-chroma"

    .line 16
    invoke-virtual {v1, v4, p2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/Boolean;

    if-nez p2, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 18
    :goto_1
    sput-boolean p2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    .line 19
    :cond_4
    sput-boolean v2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_5
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 21
    :cond_6
    :goto_2
    sget-boolean v9, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    .line 22
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    .line 23
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->captureSize:Landroid/graphics/Point;

    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->maxInputFrameCount:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x30

    move-object v5, p1

    .line 24
    invoke-static/range {v0 .. v10}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;->configureCaptureStreamNative$default(Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;JLandroid/graphics/Point;ILandroid/view/Surface;IZIZI)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public deinitialize(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    .line 3
    invoke-static {v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->deinitializeNative(J)Z

    .line 4
    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    return-void
.end method

.method public getExtensionConfig()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "previewResultCount"

    const/4 v3, 0x1

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->maxInputFrameCount:I

    const-string v5, "captureRequestCount"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 7
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 8
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, [I

    .line 10
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 11
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 12
    sget-object v13, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v8, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 14
    invoke-virtual {v13, v6, v7, v0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "requests"

    .line 16
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "previewCaptureRequests"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 19
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "SENSOR_EXPOSURE_TIME"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v0, v2, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 20
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v6, "SENSOR_FRAME_DURATION"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v0, v2, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 21
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v6, "CONTROL_POST_RAW_SENSITIVITY_BOOST"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v0, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 22
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v12, "SENSOR_SENSITIVITY"

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v0, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 23
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v7, "CONTROL_AE_ANTIBANDING_MODE"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v0, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 24
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v7, "STATISTICS_SCENE_FLICKER"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v0, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 25
    sget-object v2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v7, "ANTIBANDING_SUBMODE_KEY"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 27
    invoke-virtual {v13, v0, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 28
    sget-object v2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v8, "ISO100_GAIN_KEY"

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v7, v2

    move v9, v3

    move-object v10, v13

    move-object v11, v0

    move-object v14, v12

    move-object v12, v2

    invoke-static/range {v7 .. v12}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline1;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;FLcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;)V

    .line 29
    sget-object v2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v15, "LUX_STD_KEY"

    move-object v7, v2

    move-object v8, v15

    move-object v12, v2

    invoke-static/range {v7 .. v12}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline1;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;FLcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;)V

    .line 30
    sget-object v16, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v17, "LUX_IDX_KEY"

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v12, v16

    invoke-static/range {v7 .. v12}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline1;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;FLcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;)V

    .line 31
    sget-object v12, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MOT_ADRC_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v8, "MOT_ADRC_GAIN_KEY"

    move-object v7, v12

    invoke-static/range {v7 .. v12}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline1;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;FLcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;)V

    const-string v7, "previewResultsOfInterest"

    .line 32
    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 34
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v8, "STATISTICS_FACES"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "Face["

    invoke-virtual {v13, v0, v7, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 35
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v8, "SCALER_CROP_REGION"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "Rect"

    invoke-virtual {v13, v0, v7, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 36
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v0, v7, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 37
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v0, v7, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 38
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v7, "CONTROL_AE_EXPOSURE_COMPENSATION"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v0, v6, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 39
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v0, v4, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 40
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v13, v0, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object v11, v0

    move-object/from16 v12, v16

    .line 41
    invoke-static/range {v7 .. v12}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline1;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;FLcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;)V

    const-string v2, "captureResultsOfInterest"

    .line 42
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initialize(I)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->deinitialize(I)V

    .line 2
    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    const-string p1, "as-hdr"

    .line 3
    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v1

    .line 4
    iput-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public isSupported()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    const-string v4, "arcsoft-hdr"

    .line 3
    invoke-virtual {v0, v4, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_6

    .line 5
    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    .line 6
    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string v5, "enable"

    invoke-virtual {v0, v5, v3, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 7
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    const-string/jumbo v4, "state-machine"

    .line 9
    invoke-virtual {v0, v4, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "hdr"

    .line 11
    invoke-virtual {v0, v4, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 13
    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->filterConfig:Lorg/json/JSONObject;

    .line 14
    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string v5, "frame-ev-on-lux"

    invoke-virtual {v0, v5, v3, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    move v4, v2

    :goto_0
    add-int/lit8 v5, v2, 0x1

    .line 16
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    .line 17
    sget-object v6, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    const-string v7, "ev"

    .line 18
    invoke-virtual {v6, v7, v2, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    .line 19
    check-cast v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 21
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v4, v2

    :cond_2
    if-lt v5, v3, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_0

    .line 22
    :cond_4
    :goto_1
    iput v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->maxInputFrameCount:I

    const/4 p0, 0x1

    return p0

    .line 23
    :cond_5
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    const-string v0, "SM config missing for algo"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 24
    :cond_6
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    const-string v0, "Config missing for algo"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public processStream(Ljava/lang/String;I)Z
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    return v1

    .line 1
    :cond_0
    iget-wide v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    const-string v1, "client id is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3
    :cond_1
    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 4
    new-instance v3, Lorg/json/JSONTokener;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "results"

    const/4 v5, -0x1

    .line 5
    invoke-virtual {v1, v4, v3, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Lorg/json/JSONArray;

    if-nez v3, :cond_2

    .line 7
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    const-string v1, "Unable to parse input results"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 8
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    iget v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->currentInputFrameCount:I

    if-eq v4, v6, :cond_3

    .line 9
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    const-string v4, "Input count("

    invoke-static {v4}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not matching requested count "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v0, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->currentInputFrameCount:I

    .line 11
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 12
    :cond_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 13
    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    const-string v7, "algoConfig"

    const/4 v8, 0x0

    if-eqz v6, :cond_1e

    iget v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string v10, "enable"

    invoke-virtual {v1, v10, v6, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    .line 14
    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v6, :cond_1d

    iget v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string v10, "camera-type"

    invoke-virtual {v1, v10, v6, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    .line 16
    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v6, :cond_1c

    iget v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string v10, "deviceId"

    invoke-virtual {v1, v10, v6, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    .line 18
    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v6, :cond_1b

    iget v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string/jumbo v10, "tone-length"

    invoke-virtual {v1, v10, v6, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    .line 20
    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v6, :cond_1a

    iget v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string v10, "brightness"

    invoke-virtual {v1, v10, v6, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    .line 22
    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v6, :cond_19

    iget v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string v10, "saturation"

    invoke-virtual {v1, v10, v6, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    .line 24
    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v6, :cond_18

    iget v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string v10, "contrast"

    invoke-virtual {v1, v10, v6, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    .line 26
    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v6, :cond_17

    iget v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string v10, "llhdr-special-sequence"

    .line 28
    invoke-virtual {v1, v10, v6, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 29
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v9, "llhdrSpecialSequence"

    .line 30
    invoke-virtual {v4, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 31
    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v6, :cond_16

    iget v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string v10, "mfnrev0-4-evplus-thres"

    invoke-virtual {v1, v10, v6, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :cond_4
    const-string v9, "luxThres"

    .line 32
    invoke-virtual {v4, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v6, :cond_15

    iget v7, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const-string v9, "mfnrev0-4-evplus-flag"

    invoke-virtual {v1, v9, v6, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    const-string v6, "mfnrev0forevplus-flag"

    .line 34
    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    iget v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->luxAverage:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v6, "luxAvg"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Rational;

    if-nez v1, :cond_6

    goto :goto_0

    .line 37
    :cond_6
    invoke-virtual {v1}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    invoke-virtual {v1}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    div-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_0
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v6, "evStep"

    .line 38
    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 40
    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 41
    iget-object v7, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 42
    invoke-static {v1, v6, v7, v2}, Lcom/motorola/camera/shared/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result v1

    const-string v6, "orientation"

    .line 43
    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 45
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 46
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 47
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 48
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_14

    move v10, v5

    move v5, v2

    :goto_1
    add-int/lit8 v11, v2, 0x1

    .line 49
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    .line 50
    sget-object v13, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v14, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v14}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "CONTROL_AE_EXPOSURE_COMPENSATION.name"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v13, v14, v12, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "No exp found"

    if-nez v14, :cond_7

    .line 52
    sget-object v14, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 54
    :cond_7
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 p1, v3

    const-string v3, "SENSOR_EXPOSURE_TIME.name"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v13, v5, v12, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    .line 56
    sget-object v3, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    invoke-static {v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 58
    :cond_8
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v15, "SENSOR_SENSITIVITY.name"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v13, v5, v12, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v5

    .line 60
    check-cast v5, Ljava/lang/Integer;

    const/16 v10, 0x64

    if-nez v5, :cond_9

    .line 61
    sget-object v5, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    const-string v15, "No iso found"

    invoke-static {v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_9
    if-nez v2, :cond_a

    .line 63
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v15, "ISO"

    invoke-virtual {v4, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    :cond_a
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v15, "CONTROL_POST_RAW_SENSITIVITY_BOOST.name"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, -0x1

    .line 65
    invoke-virtual {v13, v2, v12, v15}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_b

    .line 67
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v2, v5

    div-int/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 68
    :cond_b
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v10, "SCALER_CROP_REGION.name"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, -0x1

    .line 69
    invoke-virtual {v13, v2, v12, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    .line 70
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_c

    const-string v2, ""

    :cond_c
    invoke-virtual {v13, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    .line 71
    iget-object v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Landroid/graphics/Rect;

    .line 72
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v15}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p2, v4

    const-string v4, "STATISTICS_FACES.name"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move/from16 v16, v9

    const/4 v9, -0x1

    .line 74
    invoke-virtual {v13, v15, v12, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONArray;

    if-nez v9, :cond_d

    goto :goto_3

    .line 75
    :cond_d
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_10

    const/4 v15, 0x0

    :goto_2
    move/from16 v17, v11

    add-int/lit8 v11, v15, 0x1

    .line 76
    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v18, v9

    .line 77
    instance-of v9, v15, Lorg/json/JSONObject;

    if-eqz v9, :cond_e

    check-cast v15, Lorg/json/JSONObject;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-lt v11, v12, :cond_f

    goto :goto_4

    :cond_f
    move v15, v11

    move/from16 v11, v17

    move-object/from16 v9, v18

    goto :goto_2

    :cond_10
    :goto_3
    move/from16 v17, v11

    .line 78
    :goto_4
    new-instance v9, Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->captureSize:Landroid/graphics/Point;

    iget v12, v11, Landroid/graphics/Point;->x:I

    iget v11, v11, Landroid/graphics/Point;->y:I

    const/4 v15, 0x0

    invoke-direct {v9, v15, v15, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    invoke-virtual {v13, v4, v10, v2, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getScaledFaceRects(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object v2

    .line 80
    array-length v4, v2

    if-nez v4, :cond_11

    const/4 v4, 0x1

    goto :goto_5

    :cond_11
    move v4, v15

    :goto_5
    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_12

    .line 81
    array-length v4, v2

    move v9, v15

    :goto_6
    if-ge v9, v4, :cond_12

    aget-object v10, v2, v9

    add-int/lit8 v9, v9, 0x1

    .line 82
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 83
    iget v12, v10, Landroid/graphics/Rect;->left:I

    const-string v13, "left"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    iget v12, v10, Landroid/graphics/Rect;->top:I

    const-string/jumbo v13, "top"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    iget v12, v10, Landroid/graphics/Rect;->right:I

    iget v13, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    const-string/jumbo v13, "width"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v10

    const-string v10, "height"

    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    .line 88
    :cond_12
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 89
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 90
    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move/from16 v2, v16

    move/from16 v3, v17

    if-lt v3, v2, :cond_13

    goto :goto_7

    :cond_13
    const/4 v10, -0x1

    move-object/from16 v4, p2

    move v9, v2

    move v2, v3

    move v5, v15

    move-object/from16 v3, p1

    goto/16 :goto_1

    :cond_14
    move-object/from16 p1, v3

    move-object/from16 p2, v4

    :goto_7
    const-string v2, "bracketIso"

    move-object/from16 v3, p2

    .line 91
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bracketExp"

    .line 92
    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "frameEv"

    .line 93
    invoke-virtual {v3, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "faces"

    .line 94
    invoke-virtual {v3, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "in-params"

    .line 96
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    sget-object v2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    iget-wide v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v4, 0x1

    .line 99
    invoke-static {v2, v3, v0, v4, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->processNative(JLjava/lang/String;ZI)Z

    move-result v0

    return v0

    .line 100
    :cond_15
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 101
    :cond_16
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 102
    :cond_17
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 103
    :cond_18
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 104
    :cond_19
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 105
    :cond_1a
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 106
    :cond_1b
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 107
    :cond_1c
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 108
    :cond_1d
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 109
    :cond_1e
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8
.end method
