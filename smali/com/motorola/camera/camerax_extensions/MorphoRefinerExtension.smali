.class public final Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;
.super Ljava/lang/Object;
.source "MorphoRefinerExtension.kt"

# interfaces
.implements Lcom/motorola/camera/camerax_extensions/Extension;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMorphoRefinerExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MorphoRefinerExtension.kt\ncom/motorola/camera/camerax_extensions/MorphoRefinerExtension\n+ 2 JsonUtils.kt\ncom/motorola/camera/camerax_extensions/JsonUtils\n*L\n1#1,407:1\n134#2,10:408\n*S KotlinDebug\n*F\n+ 1 MorphoRefinerExtension.kt\ncom/motorola/camera/camerax_extensions/MorphoRefinerExtension\n*L\n387#1:408,10\n*E\n"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public algoConfig:Lorg/json/JSONObject;

.field public captureSize:Landroid/graphics/Point;

.field public final characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public filterConfig:Lorg/json/JSONObject;

.field public jniClientId:J

.field public final jsonConfig:Lorg/json/JSONObject;

.field public final jsonIndex:I

.field public final mSensorName:Ljava/lang/String;

.field public maxInputFrameCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const-string v0, "jsonConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonIndex:I

    iput-object p2, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonConfig:Lorg/json/JSONObject;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 4
    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->mSensorName:Ljava/lang/String;

    .line 5
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->captureSize:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public buildRequest(Ljava/lang/String;I)Ljava/lang/String;
    .locals 25

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

    const-string v5, "results"

    const/4 v6, 0x0

    .line 4
    invoke-virtual {v3, v5, v4, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    if-nez v4, :cond_1

    .line 5
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse input result"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 6
    :cond_1
    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v4, v5}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getIsoToGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)Lkotlin/Pair;

    move-result-object v5

    .line 7
    iget-object v7, v5, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 8
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 9
    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 10
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .line 11
    new-instance v15, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v15}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    .line 12
    new-instance v14, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v14}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    .line 13
    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v4, v8, v5, v15, v14}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getExpValueHdr(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 14
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unable to retrieve exposure values"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 15
    :cond_2
    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->mSensorName:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getLux(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v5

    .line 16
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 17
    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v9, "filterConfig"

    if-eqz v8, :cond_14

    iget v10, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonIndex:I

    const-string v11, "frame-ev-on-lux"

    invoke-virtual {v3, v11, v8, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    if-nez v3, :cond_3

    .line 18
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    const-string v2, "EV Lux table not found in config"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 19
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v8, -0x1

    if-lez v1, :cond_c

    :goto_0
    add-int/lit8 v10, v6, 0x1

    .line 20
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v11, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v6, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONObject;

    .line 21
    sget-object v11, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    const-string v12, "lux"

    .line 22
    invoke-virtual {v11, v12, v6, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    .line 23
    check-cast v8, Ljava/lang/Double;

    if-nez v8, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-object/from16 p1, v9

    float-to-double v8, v5

    cmpl-double v8, v8, v16

    if-gez v8, :cond_7

    .line 24
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v10, v8, :cond_5

    goto :goto_1

    :cond_5
    if-lt v10, v1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v8, -0x1

    move-object/from16 v9, p1

    move v6, v10

    goto :goto_0

    :cond_7
    :goto_1
    const-string v1, "ev"

    const/4 v3, -0x1

    .line 25
    invoke-virtual {v11, v1, v6, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 26
    check-cast v1, Lorg/json/JSONArray;

    if-nez v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_8
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_d

    const/4 v5, 0x0

    :goto_2
    add-int/lit8 v6, v5, 0x1

    .line 28
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    sub-double v10, v8, v10

    .line 29
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v16, 0x3f3a36e2eb1c432dL    # 4.0E-4

    cmpg-double v5, v10, v16

    if-gez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_a

    .line 30
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto :goto_4

    .line 31
    :cond_a
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_4
    if-lt v6, v3, :cond_b

    goto :goto_5

    :cond_b
    move v5, v6

    goto :goto_2

    :cond_c
    move-object/from16 p1, v9

    .line 32
    :cond_d
    :goto_5
    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 33
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v3, :cond_13

    iget v5, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonIndex:I

    const-string v6, "exp-curve-anchors"

    .line 34
    invoke-virtual {v1, v6, v3, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v5, "gains"

    const/4 v6, -0x1

    .line 35
    invoke-virtual {v1, v5, v3, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v5

    const-string v8, "exposures"

    .line 36
    invoke-virtual {v1, v8, v3, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 37
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v3, v6, :cond_e

    .line 38
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    const-string v1, "exp-curve-anchors list sizes don\'t match"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_10

    const/4 v8, 0x0

    :goto_6
    add-int/lit8 v9, v8, 0x1

    .line 41
    new-instance v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "gainList[i]"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 p1, v1

    const-string v1, "expList[i]"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Number;

    move-object/from16 p2, v2

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v10, v11, v12, v1, v2}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>(DD)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lt v9, v6, :cond_f

    goto :goto_7

    :cond_f
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v8, v9

    goto :goto_6

    :cond_10
    move-object/from16 p2, v2

    .line 42
    :goto_7
    iget-object v1, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 43
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 44
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, [I

    .line 46
    invoke-static {v4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getAntibandingStrategy(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    move-result-object v2

    .line 47
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 48
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_12

    const/4 v6, 0x0

    :goto_8
    add-int/lit8 v11, v6, 0x1

    .line 49
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 50
    new-instance v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v10}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    .line 51
    invoke-virtual {v13, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v8, "exposureValues[i]"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    move-object v8, v3

    move-object v9, v15

    move-object v6, v10

    move-object v10, v14

    move-object/from16 p1, v3

    move v3, v11

    move-object/from16 v22, v15

    move-object v15, v12

    move-wide/from16 v11, v16

    move-object/from16 v23, v13

    move-object v13, v2

    move-object/from16 v24, v14

    move-object v14, v6

    invoke-static/range {v8 .. v14}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->calcExposureAtEv(Ljava/util/ArrayList;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;DLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)V

    .line 52
    invoke-static {v15, v6, v7}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->constructBracketingRequest(Lorg/json/JSONObject;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;F)Z

    .line 53
    sget-object v6, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v21, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v17, "EDGE_MODE"

    const/4 v8, 0x2

    move-object/from16 v16, v21

    move/from16 v18, v8

    move-object/from16 v19, v6

    move-object/from16 v20, v15

    invoke-static/range {v16 .. v21}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 54
    sget-object v21, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v17, "NOISE_REDUCTION_MODE"

    move-object/from16 v16, v21

    invoke-static/range {v16 .. v21}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 55
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "CONTROL_AWB_LOCK"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v15, v8, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 56
    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v15, v8}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->setFastCaptureIfAvailable(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 57
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 59
    invoke-virtual {v6, v15, v8, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v4, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-lt v3, v5, :cond_11

    goto :goto_9

    :cond_11
    move v6, v3

    move-object/from16 v15, v22

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v3, p1

    goto/16 :goto_8

    :cond_12
    :goto_9
    const-string v0, "requests"

    move-object/from16 v1, p2

    .line 61
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_13
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_14
    move-object/from16 p1, v9

    .line 64
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public configureStream(Landroid/view/Surface;I)Landroid/view/Surface;
    .locals 12

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    .line 2
    sget-object p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    const-string p1, "client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonConfig:Lorg/json/JSONObject;

    const-string v0, "mcfJson"

    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-boolean v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z

    if-eqz v0, :cond_6

    .line 6
    sget-object v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->Companion:Lcom/motorola/camera/camerax_extensions/McfCameraXConfig$Companion;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z

    if-eqz v1, :cond_5

    .line 9
    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    const-string v2, "camerax"

    const/4 v3, -0x1

    .line 10
    invoke-virtual {v1, v2, p2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    .line 11
    check-cast p2, Lorg/json/JSONObject;

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    const-string v4, "align-512"

    .line 12
    invoke-virtual {v1, v4, p2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    .line 13
    check-cast v4, Ljava/lang/Boolean;

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 14
    :goto_0
    sput-boolean v4, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->align512:Z

    const-string/jumbo v4, "swap-chroma"

    .line 15
    invoke-virtual {v1, v4, p2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    .line 16
    check-cast p2, Ljava/lang/Boolean;

    if-nez p2, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 17
    :goto_1
    sput-boolean p2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    .line 18
    :cond_4
    sput-boolean v2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_5
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 20
    :cond_6
    :goto_2
    sget-boolean v10, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    .line 21
    sget-object p2, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Companion:Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Companion;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Companion;->fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->getAlignment()I

    move-result v9

    .line 22
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    .line 23
    iget-wide v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jniClientId:J

    iget-object v4, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->captureSize:Landroid/graphics/Point;

    iget v5, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->maxInputFrameCount:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x30

    move-object v6, p1

    .line 24
    invoke-static/range {v1 .. v11}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;->configureCaptureStreamNative$default(Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;JLandroid/graphics/Point;ILandroid/view/Surface;IZIZI)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public deinitialize(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jniClientId:J

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
    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jniClientId:J

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
    iget v2, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->maxInputFrameCount:I

    const-string v5, "captureRequestCount"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

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
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v0, v4, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 39
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v13, v0, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object v11, v0

    move-object/from16 v12, v16

    .line 40
    invoke-static/range {v7 .. v12}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline1;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;FLcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;)V

    const-string v2, "captureResultsOfInterest"

    .line 41
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
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
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->deinitialize(I)V

    .line 2
    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    const-string p1, "morpho-refiner"

    .line 3
    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v1

    .line 4
    iput-wide v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jniClientId:J

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
    iget v0, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonConfig:Lorg/json/JSONObject;

    const-string v4, "morpho-image-refiner-hdr"

    .line 3
    invoke-virtual {v0, v4, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_6

    .line 5
    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->algoConfig:Lorg/json/JSONObject;

    .line 6
    iget v4, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonIndex:I

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
    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonConfig:Lorg/json/JSONObject;

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
    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->filterConfig:Lorg/json/JSONObject;

    .line 14
    iget v4, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonIndex:I

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
    iput v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->maxInputFrameCount:I

    const/4 p0, 0x1

    return p0

    .line 23
    :cond_5
    sget-object p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    const-string v0, "SM config missing for algo"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 24
    :cond_6
    sget-object p0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    const-string v0, "Config missing for algo"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public processStream(Ljava/lang/String;I)Z
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    return v1

    .line 1
    :cond_0
    iget-wide v2, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jniClientId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 2
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    const-string v1, "client id is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3
    :cond_1
    sget-object v2, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 4
    new-instance v4, Lorg/json/JSONTokener;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "results"

    const/4 v6, -0x1

    .line 5
    invoke-virtual {v2, v5, v4, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Lorg/json/JSONArray;

    if-nez v4, :cond_2

    .line 7
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    const-string v1, "Unable to parse input results"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 8
    :cond_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 9
    iget-object v7, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->algoConfig:Lorg/json/JSONObject;

    const-string v8, "algoConfig"

    const/4 v9, 0x0

    if-eqz v7, :cond_20

    const-string v10, "config-database"

    .line 10
    invoke-virtual {v2, v10, v7, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v7

    .line 11
    check-cast v7, Lorg/json/JSONObject;

    const-string v11, "Failed to find "

    if-nez v7, :cond_3

    .line 12
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 13
    :cond_3
    iget-object v10, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v10, :cond_1f

    iget v12, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonIndex:I

    const-string v13, "config-table"

    invoke-virtual {v2, v13, v10, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    if-nez v10, :cond_4

    .line 14
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    const-string v12, "init-param"

    .line 15
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1e

    const-string v13, "control-params"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    goto/16 :goto_9

    .line 16
    :cond_5
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 17
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v15, "initParamValue"

    .line 18
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, v14, v7, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v14

    .line 20
    check-cast v14, Lorg/json/JSONObject;

    if-nez v14, :cond_6

    .line 21
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    const-string v12, "mInitParam"

    .line 22
    invoke-virtual {v5, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_1d

    iget v14, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonIndex:I

    const-string v15, "num_cores"

    invoke-virtual {v2, v15, v12, v14}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v12

    const-string v14, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v12, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v14, "mNumCores"

    .line 24
    invoke-virtual {v5, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_1c

    iget v14, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonIndex:I

    const-string v15, "cpu_mask"

    invoke-virtual {v2, v15, v12, v14}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v12

    const-string v14, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v12, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    const/4 v14, 0x4

    const-string v15, ""

    const-string v1, "0x"

    .line 26
    invoke-static {v12, v1, v15, v3, v14}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0x10

    invoke-static {v12}, Lkotlin/text/CharsKt__CharKt;->checkRadix(I)I

    move-object/from16 p1, v4

    invoke-static {v1, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    const-string v1, "mCpuMask"

    invoke-virtual {v5, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "controlParamValue"

    .line 27
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2, v10, v7, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Lorg/json/JSONObject;

    if-nez v1, :cond_7

    .line 30
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_7
    const/4 v3, 0x0

    const-string v4, "mControlParam"

    .line 31
    invoke-virtual {v5, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    sget-object v1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "LUX_STD_KEY.name"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 33
    invoke-virtual {v2, v1, v7, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Double;

    if-nez v1, :cond_8

    .line 35
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    const-string v1, "Lux value not found in results for processStream"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 36
    :cond_8
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v3, :cond_1b

    iget v7, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jsonIndex:I

    const-string/jumbo v10, "tuning-table"

    invoke-virtual {v2, v10, v3, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-nez v2, :cond_9

    move-object v3, v9

    goto :goto_0

    .line 37
    :cond_9
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_a

    sget-object v3, Lkotlin/collections/EmptyIterator;->INSTANCE:Lkotlin/collections/EmptyIterator;

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v10, "key"

    .line 38
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_a

    .line 39
    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 40
    invoke-virtual {v1, v7, v2, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_b

    const-string v2, "not_found"

    .line 42
    :cond_b
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v3, :cond_c

    const-string/jumbo v7, "tuning-database"

    .line 43
    invoke-virtual {v1, v7, v3, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 44
    check-cast v3, Lorg/json/JSONObject;

    .line 45
    invoke-virtual {v1, v2, v3, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 46
    move-object v9, v1

    check-cast v9, Lorg/json/JSONObject;

    goto :goto_1

    .line 47
    :cond_c
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_d
    :goto_1
    if-nez v9, :cond_e

    .line 48
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    const-string v1, "Failed to find runtime params"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 49
    :cond_e
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 50
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 51
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 52
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_1a

    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v10, v8, 0x1

    .line 53
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 54
    sget-object v11, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v12, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v12}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "SENSOR_EXPOSURE_TIME.name"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v11, v12, v8, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_f

    .line 56
    sget-object v12, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    const-string v13, "No exp found"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    .line 57
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v12, v13

    .line 58
    :cond_f
    sget-object v13, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v13}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "SENSOR_SENSITIVITY.name"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v11, v13, v8, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v13

    .line 60
    check-cast v13, Ljava/lang/Integer;

    const/16 v14, 0x64

    if-nez v13, :cond_10

    .line 61
    sget-object v13, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    const-string v6, "No iso found"

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 63
    :cond_10
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v14, "CONTROL_POST_RAW_SENSITIVITY_BOOST.name"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, -0x1

    .line 64
    invoke-virtual {v11, v6, v8, v14}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    .line 65
    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_11

    .line 66
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/2addr v6, v13

    const/16 v13, 0x64

    div-int/2addr v6, v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 67
    :cond_11
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 68
    sget-object v14, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v14}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v15

    const-string v15, "SCALER_CROP_REGION.name"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, -0x1

    .line 69
    invoke-virtual {v11, v14, v8, v15}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v14

    .line 70
    check-cast v14, Ljava/lang/String;

    if-nez v14, :cond_12

    move-object/from16 v14, v17

    :cond_12
    invoke-virtual {v11, v14}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v14

    .line 71
    iget-object v15, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v18, v4

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v15, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroid/graphics/Rect;

    .line 72
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v15}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v5

    const-string v5, "STATISTICS_FACES.name"

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v9

    const/4 v9, -0x1

    .line 74
    invoke-virtual {v11, v15, v8, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONArray;

    if-nez v8, :cond_13

    goto :goto_4

    .line 75
    :cond_13
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_16

    const/4 v9, 0x0

    :goto_3
    move/from16 v21, v7

    add-int/lit8 v7, v9, 0x1

    .line 76
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v22, v8

    .line 77
    instance-of v8, v9, Lorg/json/JSONObject;

    if-eqz v8, :cond_14

    check-cast v9, Lorg/json/JSONObject;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    if-lt v7, v15, :cond_15

    goto :goto_5

    :cond_15
    move v9, v7

    move/from16 v7, v21

    move-object/from16 v8, v22

    goto :goto_3

    :cond_16
    :goto_4
    move/from16 v21, v7

    .line 78
    :goto_5
    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->captureSize:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v15, 0x0

    invoke-direct {v7, v15, v15, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    invoke-virtual {v11, v5, v4, v14, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getScaledFaceRects(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object v4

    .line 80
    array-length v5, v4

    if-nez v5, :cond_17

    const/4 v5, 0x1

    const/16 v16, 0x1

    goto :goto_6

    :cond_17
    const/4 v5, 0x1

    const/16 v16, 0x0

    :goto_6
    xor-int/lit8 v7, v16, 0x1

    if-eqz v7, :cond_18

    .line 81
    array-length v5, v4

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v5, :cond_18

    aget-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    .line 82
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 83
    iget v11, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 84
    iget v11, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 85
    iget v11, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 86
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 87
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    .line 88
    :cond_18
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 89
    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 90
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move/from16 v4, v21

    if-lt v10, v4, :cond_19

    goto :goto_8

    :cond_19
    move v7, v4

    move v8, v10

    move-object/from16 v15, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v9, v20

    const/4 v6, -0x1

    goto/16 :goto_2

    :cond_1a
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v9

    :goto_8
    const-string v4, "iso"

    move-object/from16 v9, v20

    .line 91
    invoke-virtual {v9, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "exp"

    .line 92
    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "faces"

    .line 93
    invoke-virtual {v9, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mRuntimeParam"

    move-object/from16 v2, v19

    .line 94
    invoke-virtual {v2, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "in-params"

    .line 96
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    sget-object v2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    iget-wide v2, v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->jniClientId:J

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v4, 0x1

    .line 99
    invoke-static {v2, v3, v0, v4, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->processNative(JLjava/lang/String;ZI)Z

    move-result v0

    return v0

    .line 100
    :cond_1b
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    .line 101
    :cond_1c
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    .line 102
    :cond_1d
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    .line 103
    :cond_1e
    :goto_9
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoRefinerExtension;->TAG:Ljava/lang/String;

    const-string v1, "Failed to find init-param or control-params in config-table"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 104
    :cond_1f
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    .line 105
    :cond_20
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9
.end method
