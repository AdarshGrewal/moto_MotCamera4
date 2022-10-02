.class public final enum Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcz;"
    }
.end annotation


# static fields
.field public static final synthetic zzbD:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

.field public static final enum zzba:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

.field public static final enum zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

.field public static final enum zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

.field public static final enum zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;


# instance fields
.field public final zzbE:I


# direct methods
.method public static constructor <clinit>()V
    .locals 136

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v1, "UNKNOWN_EVENT"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v2, "ON_DEVICE_FACE_DETECT"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v3, "ON_DEVICE_FACE_CREATE"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v4, "ON_DEVICE_FACE_CLOSE"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v5, "ON_DEVICE_FACE_LOAD"

    const/4 v6, 0x4

    .line 5
    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v6, "ON_DEVICE_TEXT_DETECT"

    const/4 v7, 0x5

    const/16 v8, 0xb

    .line 6
    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v7, "ON_DEVICE_TEXT_CREATE"

    const/4 v9, 0x6

    const/16 v10, 0xc

    .line 7
    invoke-direct {v6, v7, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v9, "ON_DEVICE_TEXT_CLOSE"

    const/4 v11, 0x7

    const/16 v12, 0xd

    .line 8
    invoke-direct {v7, v9, v11, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v11, "ON_DEVICE_BARCODE_DETECT"

    const/16 v13, 0x8

    const/16 v14, 0x15

    .line 9
    invoke-direct {v9, v11, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v13, "ON_DEVICE_BARCODE_CREATE"

    const/16 v15, 0x9

    const/16 v14, 0x16

    .line 10
    invoke-direct {v11, v13, v15, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    new-instance v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v15, "ON_DEVICE_BARCODE_CLOSE"

    const/16 v14, 0xa

    const/16 v12, 0x17

    .line 11
    invoke-direct {v13, v15, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v15, "ON_DEVICE_BARCODE_LOAD"

    const/16 v12, 0x18

    .line 12
    invoke-direct {v14, v15, v8, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v15, "ON_DEVICE_IMAGE_LABEL_DETECT"

    const/16 v12, 0x8d

    .line 13
    invoke-direct {v8, v15, v10, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_IMAGE_LABEL_CREATE"

    const/16 v15, 0x8e

    move-object/from16 v16, v8

    const/16 v8, 0xd

    .line 14
    invoke-direct {v10, v12, v8, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_IMAGE_LABEL_CLOSE"

    const/16 v15, 0xe

    move-object/from16 v17, v10

    const/16 v10, 0x8f

    .line 15
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_IMAGE_LABEL_LOAD"

    const/16 v15, 0xf

    move-object/from16 v18, v8

    const/16 v8, 0x90

    .line 16
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_SMART_REPLY_DETECT"

    const/16 v15, 0x10

    move-object/from16 v19, v10

    const/16 v10, 0x97

    .line 17
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_SMART_REPLY_CREATE"

    const/16 v15, 0x11

    move-object/from16 v20, v8

    const/16 v8, 0x98

    .line 18
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_SMART_REPLY_CLOSE"

    const/16 v15, 0x12

    move-object/from16 v21, v10

    const/16 v10, 0x99

    .line 19
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_SMART_REPLY_BLACKLIST_UPDATE"

    const/16 v15, 0x13

    move-object/from16 v22, v8

    const/16 v8, 0x9a

    .line 20
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_LANGUAGE_IDENTIFICATION_DETECT"

    const/16 v15, 0x14

    move-object/from16 v23, v10

    const/16 v10, 0xa1

    .line 21
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_LANGUAGE_IDENTIFICATION_CREATE"

    const/16 v15, 0xa2

    move-object/from16 v24, v8

    const/16 v8, 0x15

    .line 22
    invoke-direct {v10, v12, v8, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_LANGUAGE_IDENTIFICATION_LOAD"

    const/16 v15, 0xa4

    move-object/from16 v25, v10

    const/16 v10, 0x16

    .line 23
    invoke-direct {v8, v12, v10, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_LANGUAGE_IDENTIFICATION_CLOSE"

    const/16 v15, 0xa3

    move-object/from16 v26, v8

    const/16 v8, 0x17

    .line 24
    invoke-direct {v10, v12, v8, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_TRANSLATOR_TRANSLATE"

    const/16 v15, 0xab

    move-object/from16 v27, v10

    const/16 v10, 0x18

    .line 25
    invoke-direct {v8, v12, v10, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_TRANSLATOR_CREATE"

    const/16 v15, 0x19

    move-object/from16 v28, v8

    const/16 v8, 0xac

    .line 26
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_TRANSLATOR_LOAD"

    const/16 v15, 0x1a

    move-object/from16 v29, v10

    const/16 v10, 0xad

    .line 27
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_TRANSLATOR_CLOSE"

    const/16 v15, 0x1b

    move-object/from16 v30, v8

    const/16 v8, 0xae

    .line 28
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_TRANSLATOR_DOWNLOAD"

    const/16 v15, 0x1c

    move-object/from16 v31, v10

    const/16 v10, 0xaf

    .line 29
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_ENTITY_EXTRACTION_ANNOTATE"

    const/16 v15, 0x1d

    move-object/from16 v32, v8

    const/16 v8, 0xf1

    .line 30
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_ENTITY_EXTRACTION_CREATE"

    const/16 v15, 0x1e

    move-object/from16 v33, v10

    const/16 v10, 0xf2

    .line 31
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_ENTITY_EXTRACTION_LOAD"

    const/16 v15, 0x1f

    move-object/from16 v34, v8

    const/16 v8, 0xf3

    .line 32
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_ENTITY_EXTRACTION_CLOSE"

    const/16 v15, 0x20

    move-object/from16 v35, v10

    const/16 v10, 0xf4

    .line 33
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_ENTITY_EXTRACTION_DOWNLOAD"

    const/16 v15, 0x21

    move-object/from16 v36, v8

    const/16 v8, 0xf5

    .line 34
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_OBJECT_CREATE"

    const/16 v15, 0x22

    move-object/from16 v37, v10

    const/16 v10, 0xbf

    .line 35
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_OBJECT_LOAD"

    const/16 v15, 0x23

    move-object/from16 v38, v8

    const/16 v8, 0xc0

    .line 36
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_OBJECT_INFERENCE"

    const/16 v15, 0x24

    move-object/from16 v39, v10

    const/16 v10, 0xc1

    .line 37
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_OBJECT_CLOSE"

    const/16 v15, 0x25

    move-object/from16 v40, v8

    const/16 v8, 0xc2

    .line 38
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_DI_CREATE"

    const/16 v15, 0x26

    move-object/from16 v41, v10

    const/16 v10, 0x137

    .line 39
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_DI_LOAD"

    const/16 v15, 0x27

    move-object/from16 v42, v8

    const/16 v8, 0x138

    .line 40
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_DI_DOWNLOAD"

    const/16 v15, 0x28

    move-object/from16 v43, v10

    const/16 v10, 0x139

    .line 41
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_DI_RECOGNIZE"

    const/16 v15, 0x29

    move-object/from16 v44, v8

    const/16 v8, 0x13a

    .line 42
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_DI_CLOSE"

    const/16 v15, 0x2a

    move-object/from16 v45, v10

    const/16 v10, 0x13b

    .line 43
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_POSE_CREATE"

    const/16 v15, 0x2b

    move-object/from16 v46, v8

    const/16 v8, 0x141

    .line 44
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_POSE_LOAD"

    const/16 v15, 0x2c

    move-object/from16 v47, v10

    const/16 v10, 0x142

    .line 45
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_POSE_INFERENCE"

    const/16 v15, 0x2d

    move-object/from16 v48, v8

    const/16 v8, 0x143

    .line 46
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_POSE_CLOSE"

    const/16 v15, 0x2e

    move-object/from16 v49, v10

    const/16 v10, 0x144

    .line 47
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_SEGMENTATION_CREATE"

    const/16 v15, 0x2f

    move-object/from16 v50, v8

    const/16 v8, 0x14b

    .line 48
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_SEGMENTATION_LOAD"

    const/16 v15, 0x30

    move-object/from16 v51, v10

    const/16 v10, 0x14c

    .line 49
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_SEGMENTATION_INFERENCE"

    const/16 v15, 0x31

    move-object/from16 v52, v8

    const/16 v8, 0x14d

    .line 50
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ON_DEVICE_SEGMENTATION_CLOSE"

    const/16 v15, 0x32

    move-object/from16 v53, v10

    const/16 v10, 0x14e

    .line 51
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CUSTOM_OBJECT_CREATE"

    const/16 v15, 0x33

    move-object/from16 v54, v8

    const/16 v8, 0x155

    .line 52
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CUSTOM_OBJECT_LOAD"

    const/16 v15, 0x34

    move-object/from16 v55, v10

    const/16 v10, 0x156

    .line 53
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CUSTOM_OBJECT_INFERENCE"

    const/16 v15, 0x35

    move-object/from16 v56, v8

    const/16 v8, 0x157

    .line 54
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CUSTOM_OBJECT_CLOSE"

    const/16 v15, 0x36

    move-object/from16 v57, v10

    const/16 v10, 0x158

    .line 55
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CUSTOM_IMAGE_LABEL_CREATE"

    const/16 v15, 0x37

    move-object/from16 v58, v8

    const/16 v8, 0x15f

    .line 56
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CUSTOM_IMAGE_LABEL_LOAD"

    const/16 v15, 0x38

    move-object/from16 v59, v10

    const/16 v10, 0x160

    .line 57
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CUSTOM_IMAGE_LABEL_DETECT"

    const/16 v15, 0x39

    move-object/from16 v60, v8

    const/16 v8, 0x161

    .line 58
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CUSTOM_IMAGE_LABEL_CLOSE"

    const/16 v15, 0x3a

    move-object/from16 v61, v10

    const/16 v10, 0x162

    .line 59
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_FACE_DETECT"

    const/16 v15, 0x3b

    move-object/from16 v62, v8

    const/16 v8, 0x1f

    .line 60
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_FACE_CREATE"

    const/16 v15, 0x3c

    move-object/from16 v63, v10

    const/16 v10, 0x20

    .line 61
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_FACE_CLOSE"

    const/16 v15, 0x3d

    move-object/from16 v64, v8

    const/16 v8, 0x21

    .line 62
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_CROP_HINTS_CREATE"

    const/16 v15, 0x3e

    move-object/from16 v65, v10

    const/16 v10, 0x29

    .line 63
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_CROP_HINTS_DETECT"

    const/16 v15, 0x3f

    move-object/from16 v66, v8

    const/16 v8, 0x2a

    .line 64
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_CROP_HINTS_CLOSE"

    const/16 v15, 0x40

    move-object/from16 v67, v10

    const/16 v10, 0x2b

    .line 65
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_DOCUMENT_TEXT_CREATE"

    const/16 v15, 0x41

    move-object/from16 v68, v8

    const/16 v8, 0x33

    .line 66
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_DOCUMENT_TEXT_DETECT"

    const/16 v15, 0x42

    move-object/from16 v69, v10

    const/16 v10, 0x34

    .line 67
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_DOCUMENT_TEXT_CLOSE"

    const/16 v15, 0x43

    move-object/from16 v70, v8

    const/16 v8, 0x35

    .line 68
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_IMAGE_PROPERTIES_CREATE"

    const/16 v15, 0x44

    move-object/from16 v71, v10

    const/16 v10, 0x3d

    .line 69
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_IMAGE_PROPERTIES_DETECT"

    const/16 v15, 0x45

    move-object/from16 v72, v8

    const/16 v8, 0x3e

    .line 70
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_IMAGE_PROPERTIES_CLOSE"

    const/16 v15, 0x46

    move-object/from16 v73, v10

    const/16 v10, 0x3f

    .line 71
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_IMAGE_LABEL_CREATE"

    const/16 v15, 0x47

    .line 72
    invoke-direct {v10, v12, v15, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v15, "CLOUD_IMAGE_LABEL_DETECT"

    move-object/from16 v74, v10

    const/16 v10, 0x48

    .line 73
    invoke-direct {v12, v15, v10, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v10, "CLOUD_IMAGE_LABEL_CLOSE"

    move-object/from16 v75, v12

    const/16 v12, 0x49

    .line 74
    invoke-direct {v15, v10, v12, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_LANDMARK_CREATE"

    move-object/from16 v76, v15

    const/16 v15, 0x4a

    move-object/from16 v77, v8

    const/16 v8, 0x51

    .line 75
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v15, "CLOUD_LANDMARK_DETECT"

    const/16 v8, 0x4b

    move-object/from16 v78, v10

    const/16 v10, 0x52

    .line 76
    invoke-direct {v12, v15, v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v15, "CLOUD_LANDMARK_CLOSE"

    const/16 v10, 0x4c

    move-object/from16 v79, v12

    const/16 v12, 0x53

    .line 77
    invoke-direct {v8, v15, v10, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_LOGO_CREATE"

    const/16 v15, 0x4d

    move-object/from16 v80, v8

    const/16 v8, 0x5b

    .line 78
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_LOGO_DETECT"

    const/16 v15, 0x4e

    move-object/from16 v81, v10

    const/16 v10, 0x5c

    .line 79
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_LOGO_CLOSE"

    const/16 v15, 0x4f

    move-object/from16 v82, v8

    const/16 v8, 0x5d

    .line 80
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_SAFE_SEARCH_CREATE"

    const/16 v15, 0x50

    move-object/from16 v83, v10

    const/16 v10, 0x6f

    .line 81
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_SAFE_SEARCH_DETECT"

    const/16 v15, 0x70

    move-object/from16 v84, v8

    const/16 v8, 0x51

    .line 82
    invoke-direct {v10, v12, v8, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_SAFE_SEARCH_CLOSE"

    const/16 v15, 0x71

    move-object/from16 v85, v10

    const/16 v10, 0x52

    .line 83
    invoke-direct {v8, v12, v10, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_TEXT_CREATE"

    const/16 v15, 0x53

    move-object/from16 v86, v8

    const/16 v8, 0x79

    .line 84
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_TEXT_DETECT"

    const/16 v15, 0x54

    move-object/from16 v87, v10

    const/16 v10, 0x7a

    .line 85
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_TEXT_CLOSE"

    const/16 v15, 0x55

    move-object/from16 v88, v8

    const/16 v8, 0x7b

    .line 86
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_WEB_SEARCH_CREATE"

    const/16 v15, 0x56

    move-object/from16 v89, v10

    const/16 v10, 0x83

    .line 87
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_WEB_SEARCH_DETECT"

    const/16 v15, 0x57

    move-object/from16 v90, v8

    const/16 v8, 0x84

    .line 88
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CLOUD_WEB_SEARCH_CLOSE"

    const/16 v15, 0x58

    move-object/from16 v91, v10

    const/16 v10, 0x85

    .line 89
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CUSTOM_MODEL_RUN"

    const/16 v15, 0x59

    move-object/from16 v92, v8

    const/16 v8, 0x66

    .line 90
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CUSTOM_MODEL_CREATE"

    const/16 v15, 0x5a

    move-object/from16 v93, v10

    const/16 v10, 0x67

    .line 91
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CUSTOM_MODEL_CLOSE"

    const/16 v15, 0x5b

    move-object/from16 v94, v8

    const/16 v8, 0x68

    .line 92
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CUSTOM_MODEL_LOAD"

    const/16 v15, 0x5c

    move-object/from16 v95, v10

    const/16 v10, 0x69

    .line 93
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AUTOML_IMAGE_LABELING_RUN"

    const/16 v15, 0x5d

    move-object/from16 v96, v8

    const/16 v8, 0xb5

    .line 94
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AUTOML_IMAGE_LABELING_CREATE"

    const/16 v15, 0x5e

    move-object/from16 v97, v10

    const/16 v10, 0xb6

    .line 95
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AUTOML_IMAGE_LABELING_CLOSE"

    const/16 v15, 0x5f

    move-object/from16 v98, v8

    const/16 v8, 0xb7

    .line 96
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AUTOML_IMAGE_LABELING_LOAD"

    const/16 v15, 0x60

    move-object/from16 v99, v10

    const/16 v10, 0xb8

    .line 97
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "MODEL_DOWNLOAD"

    const/16 v15, 0x61

    move-object/from16 v100, v8

    const/16 v8, 0x64

    .line 98
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "MODEL_UPDATE"

    const/16 v15, 0x62

    move-object/from16 v101, v10

    const/16 v10, 0x65

    .line 99
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "REMOTE_MODEL_IS_DOWNLOADED"

    const/16 v15, 0x63

    move-object/from16 v102, v8

    const/16 v8, 0xfb

    .line 100
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "REMOTE_MODEL_DELETE_ON_DEVICE"

    const/16 v15, 0x64

    move-object/from16 v103, v10

    const/16 v10, 0xfc

    .line 101
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ACCELERATION_ANALYTICS"

    const/16 v15, 0x65

    move-object/from16 v104, v8

    const/16 v8, 0x104

    .line 102
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AGGREGATED_AUTO_ML_IMAGE_LABELING_INFERENCE"

    const/16 v15, 0x66

    move-object/from16 v105, v10

    const/16 v10, 0xc8

    .line 103
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AGGREGATED_CUSTOM_MODEL_INFERENCE"

    const/16 v15, 0x67

    move-object/from16 v106, v8

    const/16 v8, 0xc9

    .line 104
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AGGREGATED_ON_DEVICE_BARCODE_DETECTION"

    const/16 v15, 0x68

    move-object/from16 v107, v10

    const/16 v10, 0xca

    .line 105
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->zzba:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AGGREGATED_ON_DEVICE_FACE_DETECTION"

    const/16 v15, 0x69

    move-object/from16 v108, v8

    const/16 v8, 0xcb

    .line 106
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION"

    const/16 v15, 0x6a

    move-object/from16 v109, v10

    const/16 v10, 0xcc

    .line 107
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AGGREGATED_ON_DEVICE_OBJECT_INFERENCE"

    const/16 v15, 0x6b

    move-object/from16 v110, v8

    const/16 v8, 0xcd

    .line 108
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AGGREGATED_ON_DEVICE_TEXT_DETECTION"

    const/16 v15, 0x6c

    move-object/from16 v111, v10

    const/16 v10, 0xce

    .line 109
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AGGREGATED_ON_DEVICE_POSE_DETECTION"

    const/16 v15, 0x6d

    move-object/from16 v112, v8

    const/16 v8, 0xcf

    .line 110
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AGGREGATED_ON_DEVICE_SEGMENTATION"

    const/16 v15, 0x6e

    move-object/from16 v113, v10

    const/16 v10, 0xd0

    .line 111
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AGGREGATED_CUSTOM_OBJECT_INFERENCE"

    const/16 v15, 0x6f

    move-object/from16 v114, v8

    const/16 v8, 0xd1

    .line 112
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "AGGREGATED_CUSTOM_IMAGE_LABEL_DETECTION"

    const/16 v15, 0x70

    move-object/from16 v115, v10

    const/16 v10, 0xd2

    .line 113
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "REMOTE_CONFIG_FETCH"

    const/16 v15, 0x71

    move-object/from16 v116, v8

    const/16 v8, 0x10f

    .line 114
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "REMOTE_CONFIG_ACTIVATE"

    const/16 v15, 0x72

    move-object/from16 v117, v10

    const/16 v10, 0x110

    .line 115
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "REMOTE_CONFIG_LOAD"

    const/16 v15, 0x73

    move-object/from16 v118, v8

    const/16 v8, 0x111

    .line 116
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "REMOTE_CONFIG_FRC_FETCH"

    const/16 v15, 0x74

    move-object/from16 v119, v10

    const/16 v10, 0x119

    .line 117
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "INSTALLATION_ID_INIT"

    const/16 v15, 0x75

    move-object/from16 v120, v8

    const/16 v8, 0x123

    .line 118
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "INSTALLATION_ID_REGISTER_NEW_ID"

    const/16 v15, 0x76

    move-object/from16 v121, v10

    const/16 v10, 0x124

    .line 119
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "INSTALLATION_ID_REFRESH_TEMPORARY_TOKEN"

    const/16 v15, 0x77

    move-object/from16 v122, v8

    const/16 v8, 0x125

    .line 120
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "INSTALLATION_ID_FIS_CREATE_INSTALLATION"

    const/16 v15, 0x78

    move-object/from16 v123, v10

    const/16 v10, 0x12d

    .line 121
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN"

    const/16 v15, 0x79

    move-object/from16 v124, v8

    const/16 v8, 0x12e

    .line 122
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "INPUT_IMAGE_CONSTRUCTION"

    const/16 v15, 0x7a

    move-object/from16 v125, v10

    const/16 v10, 0x169

    .line 123
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "HANDLE_LEAKED"

    const/16 v15, 0x7b

    move-object/from16 v126, v8

    const/16 v8, 0x173

    .line 124
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "CAMERA_SOURCE"

    const/16 v15, 0x7c

    move-object/from16 v127, v10

    const/16 v10, 0x17d

    .line 125
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "OPTIONAL_MODULE_IMAGE_LABELING"

    const/16 v15, 0x7d

    move-object/from16 v128, v8

    const/16 v8, 0x187

    .line 126
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "OPTIONAL_MODULE_LANGUAGE_ID"

    const/16 v15, 0x7e

    move-object/from16 v129, v10

    const/16 v10, 0x191

    .line 127
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "OPTIONAL_MODULE_NLCLASSIFIER"

    const/16 v15, 0x7f

    move-object/from16 v130, v8

    const/16 v8, 0x19b

    .line 128
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "NLCLASSIFIER_CLIENT_LIBRARY"

    const/16 v15, 0x80

    move-object/from16 v131, v10

    const/16 v10, 0x1a5

    .line 129
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "OPTIONAL_MODULE_FACE_DETECTION"

    const/16 v15, 0x81

    move-object/from16 v132, v8

    const/16 v8, 0x1b9

    .line 130
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ACCELERATION_ALLOWLIST_GET"

    const/16 v15, 0x82

    move-object/from16 v133, v10

    const/16 v10, 0x1af

    .line 131
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ACCELERATION_ALLOWLIST_FETCH"

    const/16 v15, 0x83

    move-object/from16 v134, v8

    const/16 v8, 0x1b0

    .line 132
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const-string v12, "ODML_IMAGE"

    const/16 v15, 0x84

    move-object/from16 v135, v10

    const/16 v10, 0x1ba

    .line 133
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x85

    new-array v10, v10, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    const/4 v12, 0x0

    aput-object v0, v10, v12

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v9, v10, v0

    const/16 v0, 0x9

    aput-object v11, v10, v0

    const/16 v0, 0xa

    aput-object v13, v10, v0

    const/16 v0, 0xb

    aput-object v14, v10, v0

    const/16 v0, 0xc

    aput-object v16, v10, v0

    const/16 v0, 0xd

    aput-object v17, v10, v0

    const/16 v0, 0xe

    aput-object v18, v10, v0

    const/16 v0, 0xf

    aput-object v19, v10, v0

    const/16 v0, 0x10

    aput-object v20, v10, v0

    const/16 v0, 0x11

    aput-object v21, v10, v0

    const/16 v0, 0x12

    aput-object v22, v10, v0

    const/16 v0, 0x13

    aput-object v23, v10, v0

    const/16 v0, 0x14

    aput-object v24, v10, v0

    const/16 v0, 0x15

    aput-object v25, v10, v0

    const/16 v0, 0x16

    aput-object v26, v10, v0

    const/16 v0, 0x17

    aput-object v27, v10, v0

    const/16 v0, 0x18

    aput-object v28, v10, v0

    const/16 v0, 0x19

    aput-object v29, v10, v0

    const/16 v0, 0x1a

    aput-object v30, v10, v0

    const/16 v0, 0x1b

    aput-object v31, v10, v0

    const/16 v0, 0x1c

    aput-object v32, v10, v0

    const/16 v0, 0x1d

    aput-object v33, v10, v0

    const/16 v0, 0x1e

    aput-object v34, v10, v0

    const/16 v0, 0x1f

    aput-object v35, v10, v0

    const/16 v0, 0x20

    aput-object v36, v10, v0

    const/16 v0, 0x21

    aput-object v37, v10, v0

    const/16 v0, 0x22

    aput-object v38, v10, v0

    const/16 v0, 0x23

    aput-object v39, v10, v0

    const/16 v0, 0x24

    aput-object v40, v10, v0

    const/16 v0, 0x25

    aput-object v41, v10, v0

    const/16 v0, 0x26

    aput-object v42, v10, v0

    const/16 v0, 0x27

    aput-object v43, v10, v0

    const/16 v0, 0x28

    aput-object v44, v10, v0

    const/16 v0, 0x29

    aput-object v45, v10, v0

    const/16 v0, 0x2a

    aput-object v46, v10, v0

    const/16 v0, 0x2b

    aput-object v47, v10, v0

    const/16 v0, 0x2c

    aput-object v48, v10, v0

    const/16 v0, 0x2d

    aput-object v49, v10, v0

    const/16 v0, 0x2e

    aput-object v50, v10, v0

    const/16 v0, 0x2f

    aput-object v51, v10, v0

    const/16 v0, 0x30

    aput-object v52, v10, v0

    const/16 v0, 0x31

    aput-object v53, v10, v0

    const/16 v0, 0x32

    aput-object v54, v10, v0

    const/16 v0, 0x33

    aput-object v55, v10, v0

    const/16 v0, 0x34

    aput-object v56, v10, v0

    const/16 v0, 0x35

    aput-object v57, v10, v0

    const/16 v0, 0x36

    aput-object v58, v10, v0

    const/16 v0, 0x37

    aput-object v59, v10, v0

    const/16 v0, 0x38

    aput-object v60, v10, v0

    const/16 v0, 0x39

    aput-object v61, v10, v0

    const/16 v0, 0x3a

    aput-object v62, v10, v0

    const/16 v0, 0x3b

    aput-object v63, v10, v0

    const/16 v0, 0x3c

    aput-object v64, v10, v0

    const/16 v0, 0x3d

    aput-object v65, v10, v0

    const/16 v0, 0x3e

    aput-object v66, v10, v0

    const/16 v0, 0x3f

    aput-object v67, v10, v0

    const/16 v0, 0x40

    aput-object v68, v10, v0

    const/16 v0, 0x41

    aput-object v69, v10, v0

    const/16 v0, 0x42

    aput-object v70, v10, v0

    const/16 v0, 0x43

    aput-object v71, v10, v0

    const/16 v0, 0x44

    aput-object v72, v10, v0

    const/16 v0, 0x45

    aput-object v73, v10, v0

    const/16 v0, 0x46

    aput-object v77, v10, v0

    const/16 v0, 0x47

    aput-object v74, v10, v0

    const/16 v0, 0x48

    aput-object v75, v10, v0

    const/16 v0, 0x49

    aput-object v76, v10, v0

    const/16 v0, 0x4a

    aput-object v78, v10, v0

    const/16 v0, 0x4b

    aput-object v79, v10, v0

    const/16 v0, 0x4c

    aput-object v80, v10, v0

    const/16 v0, 0x4d

    aput-object v81, v10, v0

    const/16 v0, 0x4e

    aput-object v82, v10, v0

    const/16 v0, 0x4f

    aput-object v83, v10, v0

    const/16 v0, 0x50

    aput-object v84, v10, v0

    const/16 v0, 0x51

    aput-object v85, v10, v0

    const/16 v0, 0x52

    aput-object v86, v10, v0

    const/16 v0, 0x53

    aput-object v87, v10, v0

    const/16 v0, 0x54

    aput-object v88, v10, v0

    const/16 v0, 0x55

    aput-object v89, v10, v0

    const/16 v0, 0x56

    aput-object v90, v10, v0

    const/16 v0, 0x57

    aput-object v91, v10, v0

    const/16 v0, 0x58

    aput-object v92, v10, v0

    const/16 v0, 0x59

    aput-object v93, v10, v0

    const/16 v0, 0x5a

    aput-object v94, v10, v0

    const/16 v0, 0x5b

    aput-object v95, v10, v0

    const/16 v0, 0x5c

    aput-object v96, v10, v0

    const/16 v0, 0x5d

    aput-object v97, v10, v0

    const/16 v0, 0x5e

    aput-object v98, v10, v0

    const/16 v0, 0x5f

    aput-object v99, v10, v0

    const/16 v0, 0x60

    aput-object v100, v10, v0

    const/16 v0, 0x61

    aput-object v101, v10, v0

    const/16 v0, 0x62

    aput-object v102, v10, v0

    const/16 v0, 0x63

    aput-object v103, v10, v0

    const/16 v0, 0x64

    aput-object v104, v10, v0

    const/16 v0, 0x65

    aput-object v105, v10, v0

    const/16 v0, 0x66

    aput-object v106, v10, v0

    const/16 v0, 0x67

    aput-object v107, v10, v0

    const/16 v0, 0x68

    aput-object v108, v10, v0

    const/16 v0, 0x69

    aput-object v109, v10, v0

    const/16 v0, 0x6a

    aput-object v110, v10, v0

    const/16 v0, 0x6b

    aput-object v111, v10, v0

    const/16 v0, 0x6c

    aput-object v112, v10, v0

    const/16 v0, 0x6d

    aput-object v113, v10, v0

    const/16 v0, 0x6e

    aput-object v114, v10, v0

    const/16 v0, 0x6f

    aput-object v115, v10, v0

    const/16 v0, 0x70

    aput-object v116, v10, v0

    const/16 v0, 0x71

    aput-object v117, v10, v0

    const/16 v0, 0x72

    aput-object v118, v10, v0

    const/16 v0, 0x73

    aput-object v119, v10, v0

    const/16 v0, 0x74

    aput-object v120, v10, v0

    const/16 v0, 0x75

    aput-object v121, v10, v0

    const/16 v0, 0x76

    aput-object v122, v10, v0

    const/16 v0, 0x77

    aput-object v123, v10, v0

    const/16 v0, 0x78

    aput-object v124, v10, v0

    const/16 v0, 0x79

    aput-object v125, v10, v0

    const/16 v0, 0x7a

    aput-object v126, v10, v0

    const/16 v0, 0x7b

    aput-object v127, v10, v0

    const/16 v0, 0x7c

    aput-object v128, v10, v0

    const/16 v0, 0x7d

    aput-object v129, v10, v0

    const/16 v0, 0x7e

    aput-object v130, v10, v0

    const/16 v0, 0x7f

    aput-object v131, v10, v0

    const/16 v0, 0x80

    aput-object v132, v10, v0

    const/16 v0, 0x81

    aput-object v133, v10, v0

    const/16 v0, 0x82

    aput-object v134, v10, v0

    const/16 v0, 0x83

    aput-object v135, v10, v0

    const/16 v0, 0x84

    aput-object v8, v10, v0

    sput-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->zzbD:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->zzbE:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->zzbD:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->zzbE:I

    return p0
.end method
