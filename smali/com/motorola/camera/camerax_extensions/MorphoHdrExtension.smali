.class public final Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;
.super Ljava/lang/Object;
.source "MorphoHdrExtension.kt"

# interfaces
.implements Lcom/motorola/camera/camerax_extensions/Extension;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public algoConfig:Lorg/json/JSONObject;

.field public final characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public filterConfig:Lorg/json/JSONObject;

.field public inputFrameCount:I

.field public jniClientId:J

.field public final jsonConfig:Lorg/json/JSONObject;

.field public final jsonIndex:I

.field public final mSensorName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const-string v0, "jsonConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    iput-object p2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 4
    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->mSensorName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildRequest(Ljava/lang/String;I)Ljava/lang/String;
    .locals 24

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
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse input result"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 6
    :cond_1
    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

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
    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v4, v8, v5, v15, v14}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getExpValueHdr(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 14
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unable to retrieve exposure values"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 15
    :cond_2
    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->mSensorName:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getLux(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v5

    .line 16
    new-instance v13, Ljava/util/ArrayList;

    iget v8, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->inputFrameCount:I

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v9, "filterConfig"

    if-eqz v8, :cond_12

    iget v10, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    const-string v11, "frame-ev-on-lux"

    .line 18
    invoke-virtual {v3, v11, v8, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    if-nez v3, :cond_3

    .line 19
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    const-string v2, "EV Lux table not found in config"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 20
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v8, -0x1

    if-lez v1, :cond_a

    :goto_0
    add-int/lit8 v10, v6, 0x1

    .line 21
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v11, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v6, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONObject;

    .line 22
    sget-object v11, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    const-string v12, "lux"

    .line 23
    invoke-virtual {v11, v12, v6, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    .line 24
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

    .line 25
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v10, v8, :cond_5

    goto :goto_1

    :cond_5
    if-lt v10, v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v8, -0x1

    move-object/from16 v9, p1

    move v6, v10

    goto :goto_0

    :cond_7
    :goto_1
    const-string v1, "ev"

    const/4 v3, -0x1

    .line 26
    invoke-virtual {v11, v1, v6, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 27
    check-cast v1, Lorg/json/JSONArray;

    if-nez v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_8
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_b

    const/4 v5, 0x0

    :goto_2
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lt v6, v3, :cond_9

    goto :goto_3

    :cond_9
    move v5, v6

    goto :goto_2

    :cond_a
    move-object/from16 p1, v9

    .line 29
    :cond_b
    :goto_3
    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 30
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v3, :cond_11

    iget v5, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    const-string v6, "exp-curve-anchors"

    .line 31
    invoke-virtual {v1, v6, v3, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v5, "gains"

    const/4 v6, -0x1

    .line 32
    invoke-virtual {v1, v5, v3, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v5

    const-string v8, "exposures"

    .line 33
    invoke-virtual {v1, v8, v3, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 34
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v3, v6, :cond_c

    .line 35
    sget-object v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    const-string v1, "exp-curve-anchors list sizes don\'t match"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_e

    const/4 v8, 0x0

    :goto_4
    add-int/lit8 v9, v8, 0x1

    .line 38
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

    if-lt v9, v6, :cond_d

    goto :goto_5

    :cond_d
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v8, v9

    goto :goto_4

    :cond_e
    move-object/from16 p2, v2

    .line 39
    :goto_5
    invoke-static {v4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getAntibandingStrategy(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    move-result-object v1

    .line 40
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 41
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_10

    const/4 v5, 0x0

    :goto_6
    add-int/lit8 v6, v5, 0x1

    .line 42
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 43
    new-instance v12, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v12}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    .line 44
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v8, "exposureValues[i]"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    move-object v8, v3

    move-object v9, v15

    move-object v10, v14

    move-object v5, v11

    move-object/from16 p1, v12

    move-wide/from16 v11, v16

    move-object/from16 v22, v13

    move-object v13, v1

    move-object/from16 v23, v14

    move-object/from16 v14, p1

    invoke-static/range {v8 .. v14}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->calcExposureAtEv(Ljava/util/ArrayList;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;DLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)V

    move-object/from16 v8, p1

    .line 45
    invoke-static {v5, v8, v7}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->constructBracketingRequest(Lorg/json/JSONObject;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;F)Z

    .line 46
    sget-object v8, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v21, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v17, "EDGE_MODE"

    const/4 v9, 0x2

    move-object/from16 v16, v21

    move/from16 v18, v9

    move-object/from16 v19, v8

    move-object/from16 v20, v5

    invoke-static/range {v16 .. v21}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 47
    sget-object v21, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v17, "NOISE_REDUCTION_MODE"

    move-object/from16 v16, v21

    invoke-static/range {v16 .. v21}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 48
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v10, "CONTROL_AWB_LOCK"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v5, v9, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 49
    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v5, v8}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->setFastCaptureIfAvailable(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 50
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-lt v6, v4, :cond_f

    goto :goto_7

    :cond_f
    move v5, v6

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    goto :goto_6

    :cond_10
    :goto_7
    const-string v0, "requests"

    move-object/from16 v1, p2

    .line 51
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_11
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_12
    move-object/from16 p1, v9

    .line 54
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
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    .line 2
    sget-object p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    const-string p1, "client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonConfig:Lorg/json/JSONObject;

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

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Companion;->fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->getAlignment()I

    move-result v9

    .line 22
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    .line 23
    iget-wide v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

    iget v5, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->inputFrameCount:I

    const/4 v4, 0x0

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
    iget-wide v0, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

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
    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

    return-void
.end method

.method public getExtensionConfig()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "previewResultCount"

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->inputFrameCount:I

    const-string v4, "captureRequestCount"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 6
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 7
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 10
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    sget-object v6, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 12
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v8, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 14
    invoke-virtual {v6, v5, v7, p0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 15
    :goto_0
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p0, "requests"

    .line 16
    invoke-virtual {v1, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "previewCaptureRequests"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 19
    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "SENSOR_EXPOSURE_TIME"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, p0, v4, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 20
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v7, "SENSOR_FRAME_DURATION"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, p0, v4, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 21
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "CONTROL_POST_RAW_SENSITIVITY_BOOST"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v4, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 22
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "SENSOR_SENSITIVITY"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v4, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 23
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "CONTROL_AE_ANTIBANDING_MODE"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v4, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 24
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "STATISTICS_SCENE_FLICKER"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v4, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 25
    sget-object v3, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v4, "ANTIBANDING_SUBMODE_KEY"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, p0, v3, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 26
    sget-object v9, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "ISO100_GAIN_KEY"

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v4, v9

    move v6, v2

    move-object v7, v1

    move-object v8, p0

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline1;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;FLcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;)V

    .line 27
    sget-object v9, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "LUX_STD_KEY"

    move-object v4, v9

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline1;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;FLcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;)V

    .line 28
    sget-object v9, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "LUX_IDX_KEY"

    move-object v4, v9

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline1;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;FLcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;)V

    const-string v1, "previewResultsOfInterest"

    .line 29
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "json.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public initialize(I)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->deinitialize(I)V

    .line 2
    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    const-string p1, "morpho-hdr"

    .line 3
    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v1

    .line 4
    iput-wide v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

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
    iget v0, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    const-string v4, "VNR0-hdr"

    .line 3
    invoke-virtual {v0, v4, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_6

    .line 5
    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    .line 6
    iget v4, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

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
    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonConfig:Lorg/json/JSONObject;

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
    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->filterConfig:Lorg/json/JSONObject;

    .line 14
    iget v4, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

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
    iput v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->inputFrameCount:I

    const/4 p0, 0x1

    return p0

    .line 23
    :cond_5
    sget-object p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    const-string v0, "SM config missing for algo"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 24
    :cond_6
    sget-object p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    const-string v0, "Config missing for algo"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public processStream(Ljava/lang/String;I)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 2
    sget-object p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    const-string p1, "client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_1
    sget-object p2, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 4
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const/4 v2, -0x1

    const-string v3, "results"

    .line 5
    invoke-virtual {p2, v3, p1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lorg/json/JSONArray;

    if-nez p1, :cond_2

    .line 7
    sget-object p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    const-string p1, "Unable to parse input results"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    iget v3, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->inputFrameCount:I

    if-eq v2, v3, :cond_3

    .line 9
    sget-object p2, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    const-string v0, "Input count("

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not matching requested count "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget p0, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->inputFrameCount:I

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 12
    :cond_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    const-string v3, "algoConfig"

    const/4 v4, 0x0

    if-eqz v2, :cond_b

    iget v5, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    const-string v6, "ghostSenLel"

    invoke-virtual {p2, v6, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "ghost_det_sen_level"

    .line 14
    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_a

    iget v5, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    const-string v6, "ghostRate_threadhold"

    invoke-virtual {p2, v6, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "ghost_rate_thres"

    .line 16
    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_9

    iget v5, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    const-string v6, "contract_level"

    invoke-virtual {p2, v6, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "contrast_level"

    .line 18
    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dr_check_params"

    .line 19
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    iget v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    const-string v5, "saturation_level"

    invoke-virtual {p2, v5, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 21
    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_7

    iget v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    const-string v5, "ghost_rem_strength_level"

    invoke-virtual {p2, v5, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    iget v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    const-string v5, "rel_rect_rate_thres"

    invoke-virtual {p2, v5, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 25
    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    const-string v5, "shrink_ratio"

    invoke-virtual {p2, v5, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 27
    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    const-string v3, "frame_dump"

    invoke-virtual {p2, v3, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "frameDump"

    .line 29
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "in-params"

    .line 31
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "json.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget p0, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->inputFrameCount:I

    .line 34
    invoke-static {v1, v2, p1, v0, p0}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->processNative(JLjava/lang/String;ZI)Z

    move-result p0

    return p0

    .line 35
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 36
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 37
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 38
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 39
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 40
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 41
    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 42
    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method
