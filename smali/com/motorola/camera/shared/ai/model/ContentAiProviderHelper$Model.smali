.class public enum Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
.super Ljava/lang/Enum;
.source "ContentAiProviderHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Model"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_PREVIEW_MODEL;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_MODEL;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_WIDESCREEN_MODEL;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_FULL_MODEL;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum CUD_PREVIEW_FULL_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum CUD_PREVIEW_STANDARD_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum CUD_PREVIEW_WIDESCREEN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum DOC_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum EYE_CONTOUR_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum EYE_CONTOUR_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum EYE_GLASSES_RECOGNIZER_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum GESTURE_AUTO_CAPTURE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum GESTURE_AUTO_CAPTURE_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum HDR_PLUS:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum IMAGE_STABILIZATION_4PATCH_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum IMAGE_STABILIZATION_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum LOW_LIGHT_SELFIE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum LOW_LIGHT_SELFIE_PREVIEW_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum SCENE_DETECTION_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum SCENE_DETECTION_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum SLIDE_AUTO_CAPTURE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum SLIDE_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum SMILE_DETECTION_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum SMILE_DETECTION_QUANT_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum SMILE_DETECTION_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;


# instance fields
.field public final modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public final modelName:Ljava/lang/String;

.field public final modelVersion:I

.field public final versioning:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;


# direct methods
.method public static constructor <clinit>()V
    .locals 35

    .line 1
    new-instance v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 2
    sget-object v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->GESTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    const-string v1, "GESTURE_AUTO_CAPTURE_MODEL"

    const/4 v2, 0x0

    const-string v4, "gesture_auto_capture_model"

    const/16 v5, 0xc9

    move-object v0, v7

    move-object v3, v8

    move-object v6, v9

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->GESTURE_AUTO_CAPTURE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 4
    new-instance v10, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v1, "GESTURE_AUTO_CAPTURE_TFLITE_MODEL"

    const/4 v2, 0x1

    const-string v4, "gesture_auto_capture_tflite_model"

    const/16 v5, 0xca

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v10, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->GESTURE_AUTO_CAPTURE_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 5
    new-instance v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->HDR_PLUS:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 6
    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->CONTENT_BACKWARD_COMPATIBLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    const-string v12, "HDR_PLUS"

    const/4 v13, 0x2

    const-string v15, "mot_ev_plus"

    const/16 v16, 0x65

    move-object v11, v0

    move-object/from16 v17, v1

    .line 7
    invoke-direct/range {v11 .. v17}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->HDR_PLUS:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 8
    new-instance v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 9
    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    const-string v18, "SCENE_DETECTION_MODEL"

    const/16 v19, 0x3

    const-string v21, "scene_detection_model"

    const/16 v22, 0x125

    move-object/from16 v17, v2

    move-object/from16 v20, v14

    move-object/from16 v23, v3

    .line 10
    invoke-direct/range {v17 .. v23}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SCENE_DETECTION_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 11
    new-instance v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v12, "SCENE_DETECTION_TFLITE_MODEL"

    const/4 v13, 0x4

    const-string v15, "scene_detection_tflite_model"

    const/16 v16, 0x125

    move-object v11, v4

    move-object/from16 v17, v3

    invoke-direct/range {v11 .. v17}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SCENE_DETECTION_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 12
    new-instance v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 13
    sget-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    const-string v18, "SMILE_DETECTION_MODEL"

    const/16 v19, 0x5

    const-string/jumbo v21, "smile_detection_model"

    const/16 v22, 0x66

    move-object/from16 v17, v3

    move-object/from16 v20, v14

    move-object/from16 v23, v5

    .line 14
    invoke-direct/range {v17 .. v23}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SMILE_DETECTION_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 15
    new-instance v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v12, "SMILE_DETECTION_TFLITE_MODEL"

    const/4 v13, 0x6

    const-string/jumbo v15, "smile_detection_tflite_model"

    const/16 v16, 0x66

    move-object v11, v6

    move-object/from16 v17, v5

    invoke-direct/range {v11 .. v17}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SMILE_DETECTION_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 16
    new-instance v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v18, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION_QUANT:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v16, "SMILE_DETECTION_QUANT_MODEL"

    const/16 v17, 0x7

    const-string/jumbo v19, "smile_detection_quant_model"

    const/16 v20, 0x65

    move-object v15, v8

    move-object/from16 v21, v5

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SMILE_DETECTION_QUANT_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 17
    new-instance v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;

    const-string v9, "LOW_LIGHT_SELFIE_MODEL"

    const/16 v11, 0x8

    invoke-direct {v5, v9, v11}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->LOW_LIGHT_SELFIE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 18
    new-instance v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v12, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v16, "EYE_CONTOUR_MODEL"

    const/16 v17, 0x9

    const-string v19, "eye_contour_model"

    const/16 v20, 0x67

    move-object v15, v9

    move-object/from16 v18, v12

    move-object/from16 v21, v1

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->EYE_CONTOUR_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 19
    new-instance v13, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v16, "EYE_CONTOUR_TFLITE_MODEL"

    const/16 v17, 0xa

    const-string v19, "eye_contour_tflite_model"

    move-object v15, v13

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v13, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->EYE_CONTOUR_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 20
    new-instance v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v24, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->EYE_GLASSES_RECOGNIZER:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 21
    sget-object v27, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->EYEGLASSES_REFLECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    const-string v22, "EYE_GLASSES_RECOGNIZER_TFLITE_MODEL"

    const/16 v23, 0xb

    const-string v25, "eye_glasses_recognizer_tflite_model"

    const/16 v26, 0x64

    move-object/from16 v21, v1

    .line 22
    invoke-direct/range {v21 .. v27}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->EYE_GLASSES_RECOGNIZER_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 23
    new-instance v12, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v17, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 24
    sget-object v20, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    const-string v15, "DOC_SCAN_MODEL"

    const/16 v16, 0xc

    const-string v18, "doc_scan_model"

    const/16 v19, 0x66

    move-object v14, v12

    .line 25
    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v12, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->DOC_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 26
    new-instance v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_PREVIEW_MODEL;

    const-string v15, "LOW_LIGHT_SELFIE_PREVIEW_MODEL"

    const/16 v11, 0xd

    invoke-direct {v14, v15, v11}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_PREVIEW_MODEL;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->LOW_LIGHT_SELFIE_PREVIEW_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 27
    new-instance v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_MODEL;

    const-string v11, "IMAGE_STABILIZATION_MODEL"

    move-object/from16 v18, v14

    const/16 v14, 0xe

    invoke-direct {v15, v11, v14}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_MODEL;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->IMAGE_STABILIZATION_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 28
    new-instance v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;

    const-string v14, "IMAGE_STABILIZATION_4PATCH_MODEL"

    move-object/from16 v20, v15

    const/16 v15, 0xf

    invoke-direct {v11, v14, v15}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->IMAGE_STABILIZATION_4PATCH_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 29
    new-instance v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v24, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v27, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    const-string v22, "SLIDE_SCAN_MODEL"

    const/16 v23, 0x10

    const-string/jumbo v25, "slide_scan_model"

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v27}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SLIDE_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 30
    new-instance v21, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v31, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 31
    sget-object v34, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    const-string v29, "SLIDE_AUTO_CAPTURE_MODEL"

    const/16 v30, 0x11

    const-string/jumbo v32, "slide_auto_capture_model"

    const/16 v33, 0x64

    move-object/from16 v28, v21

    .line 32
    invoke-direct/range {v28 .. v34}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v21, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SLIDE_AUTO_CAPTURE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 33
    new-instance v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;

    move-object/from16 v23, v14

    const-string v14, "CUD_PREVIEW_STANDARD_MODEL"

    move-object/from16 v24, v11

    const/16 v11, 0x12

    invoke-direct {v15, v14, v11}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_STANDARD_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 34
    new-instance v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_WIDESCREEN_MODEL;

    const-string v11, "CUD_PREVIEW_WIDESCREEN_MODEL"

    move-object/from16 v26, v15

    const/16 v15, 0x13

    invoke-direct {v14, v11, v15}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_WIDESCREEN_MODEL;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_WIDESCREEN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 35
    new-instance v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_FULL_MODEL;

    const-string v15, "CUD_PREVIEW_FULL_MODEL"

    move-object/from16 v28, v14

    const/16 v14, 0x14

    invoke-direct {v11, v15, v14}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_FULL_MODEL;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_FULL_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 36
    new-instance v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;

    const-string v14, "CUD"

    move-object/from16 v30, v11

    const/16 v11, 0x15

    invoke-direct {v15, v14, v11}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const/16 v14, 0x16

    new-array v14, v14, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const/16 v31, 0x0

    aput-object v7, v14, v31

    const/4 v7, 0x1

    aput-object v10, v14, v7

    const/4 v7, 0x2

    aput-object v0, v14, v7

    const/4 v0, 0x3

    aput-object v2, v14, v0

    const/4 v0, 0x4

    aput-object v4, v14, v0

    const/4 v0, 0x5

    aput-object v3, v14, v0

    const/4 v0, 0x6

    aput-object v6, v14, v0

    const/4 v0, 0x7

    aput-object v8, v14, v0

    const/16 v0, 0x8

    aput-object v5, v14, v0

    const/16 v0, 0x9

    aput-object v9, v14, v0

    const/16 v0, 0xa

    aput-object v13, v14, v0

    const/16 v0, 0xb

    aput-object v1, v14, v0

    const/16 v0, 0xc

    aput-object v12, v14, v0

    const/16 v0, 0xd

    aput-object v18, v14, v0

    const/16 v0, 0xe

    aput-object v20, v14, v0

    const/16 v0, 0xf

    aput-object v24, v14, v0

    const/16 v0, 0x10

    aput-object v23, v14, v0

    const/16 v0, 0x11

    aput-object v21, v14, v0

    const/16 v0, 0x12

    aput-object v26, v14, v0

    const/16 v0, 0x13

    aput-object v28, v14, v0

    const/16 v0, 0x14

    aput-object v30, v14, v0

    aput-object v15, v14, v11

    sput-object v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;",
            "Ljava/lang/String;",
            "I",
            "Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 3
    iput-object p4, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelName:Ljava/lang/String;

    .line 4
    iput p5, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion:I

    .line 5
    iput-object p6, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->versioning:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    iput-object p3, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 8
    iput-object p4, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelName:Ljava/lang/String;

    .line 9
    iput p5, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion:I

    .line 10
    iput-object p6, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->versioning:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    return-object v0
.end method


# virtual methods
.method public buildUri()Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->makeUriBuilder()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const-string v0, "makeUriBuilder().build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final makeUriBuilder()Landroid/net/Uri$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 2
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/shared/PackageUtility;->getContentAiPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "Builder()\n              \u2026   .appendPath(modelName)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public modelVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion:I

    return p0
.end method
