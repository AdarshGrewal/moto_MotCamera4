.class public Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxxhdpi;
.super Lcom/google/android/play/core/appupdate/zzr;
.source "Atlasxxxhdpi.java"


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x6

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzr;-><init>(I)V

    .line 2
    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x527

    const/16 v4, 0x1e8

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    .line 3
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v3, 0x2ec

    const/16 v4, 0xe8

    const/16 v6, 0x38c

    const/16 v7, 0x188

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/16 v12, 0xa0

    invoke-direct {v7, v11, v11, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v12, v12}, Landroid/graphics/Point;-><init>(II)V

    iget-object v3, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Landroid/graphics/Point;

    const-string v4, "btn_bg_standard"

    const/4 v6, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v3, 0x391

    const/16 v4, 0xe8

    const/16 v6, 0x431

    const/16 v7, 0x188

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v11, v11, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v12, v12}, Landroid/graphics/Point;-><init>(II)V

    iget-object v3, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Landroid/graphics/Point;

    const-string v4, "btn_bg_tap"

    const/4 v6, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v4, 0x2c3

    const/16 v5, 0x3a4

    const/16 v7, 0xe3

    invoke-direct {v6, v4, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v4, 0xe1

    invoke-direct {v8, v11, v11, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v4, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v10, v4

    check-cast v10, Landroid/graphics/Point;

    const-string v5, "btn_focus_ring_select"

    const/4 v7, 0x0

    move-object v4, v13

    invoke-direct/range {v4 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v6, 0x1cc

    const/16 v7, 0x1cc

    invoke-direct {v15, v3, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x1ca

    invoke-direct {v6, v11, v11, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v7

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "focus_10"

    const/16 v16, 0x0

    move-object v13, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v6, 0x4

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v6, 0x1d1

    const/16 v7, 0x2be

    const/16 v8, 0xec

    invoke-direct {v15, v6, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x4

    const/16 v8, 0xef

    const/16 v9, 0xee

    invoke-direct {v6, v3, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    const/16 v8, 0xf0

    const/16 v9, 0xf0

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v8

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "hold_steady_ring"

    const/16 v16, 0x1

    move-object v13, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v6, 0x5

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v7, 0x436

    const/16 v8, 0x146

    const/16 v9, 0x498

    const/16 v10, 0x188

    invoke-direct {v15, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0xf

    const/16 v9, 0x1f

    const/16 v10, 0x71

    const/16 v13, 0x61

    invoke-direct {v7, v8, v9, v10, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    const/16 v10, 0x80

    const/16 v13, 0x80

    invoke-direct {v9, v10, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v10

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_burst_shot"

    move-object v13, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v7, 0x45d

    const/16 v9, 0x18d

    const/16 v10, 0x4a8

    const/16 v13, 0x1df

    invoke-direct {v15, v7, v9, v10, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v10, 0xa

    const/16 v14, 0x55

    invoke-direct {v7, v10, v4, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    const/16 v13, 0x60

    invoke-direct {v10, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v17, "ic_calendar"

    const/16 v18, 0x1

    const/16 v6, 0x60

    move-object v13, v5

    move v11, v14

    move-object/from16 v14, v17

    move/from16 v16, v18

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v7, 0x7

    invoke-virtual {v2, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v10, 0x439

    const/16 v13, 0x483

    const/16 v14, 0x4c

    invoke-direct {v15, v10, v3, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/16 v14, 0xb

    invoke-direct {v10, v14, v14, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v14

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_call"

    const/16 v17, 0x1

    move-object/from16 v18, v13

    move-object v13, v5

    const/16 v3, 0xb

    move/from16 v16, v17

    move-object/from16 v17, v10

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v10, 0x8

    invoke-virtual {v2, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v10, 0x351

    const/16 v13, 0x3a9

    const/16 v14, 0x1de

    invoke-direct {v15, v10, v9, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v13, 0x4

    const/16 v14, 0xa

    const/16 v1, 0x5c

    const/16 v11, 0x5b

    invoke-direct {v10, v13, v14, v1, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v11

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_camera_select"

    const/16 v16, 0x1

    move-object v13, v5

    move-object/from16 v17, v10

    move-object/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0x9

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x406

    const/16 v10, 0x458

    const/16 v11, 0x1df

    invoke-direct {v15, v5, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v10, 0x59

    invoke-direct {v5, v7, v7, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_cancel"

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x439

    const/16 v11, 0x493

    const/16 v13, 0xe2

    invoke-direct {v15, v5, v12, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v11, 0x5d

    const/16 v12, 0x51

    invoke-direct {v5, v4, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_contact"

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x436

    const/16 v11, 0xe7

    const/16 v13, 0x485

    const/16 v14, 0x141

    invoke-direct {v15, v5, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v11, 0x5d

    const/4 v13, 0x6

    const/16 v14, 0x55

    invoke-direct {v5, v13, v4, v14, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_copy"

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xc

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x4e8

    const/16 v11, 0x4f

    const/16 v13, 0x522

    const/16 v14, 0x99

    invoke-direct {v15, v5, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v11, 0x13

    const/16 v14, 0x4d

    const/16 v13, 0x55

    invoke-direct {v5, v11, v3, v14, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v14

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_delete"

    const/16 v17, 0x1

    move-object/from16 v18, v13

    move-object v13, v2

    const/16 v4, 0x4d

    move/from16 v16, v17

    move-object/from16 v17, v5

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xd

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x1d1

    const/16 v14, 0x1ae

    const/16 v13, 0x21a

    const/16 v7, 0x1e6

    invoke-direct {v15, v5, v14, v13, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0xc

    const/16 v13, 0x15

    const/16 v14, 0x55

    invoke-direct {v5, v7, v13, v14, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_done"

    const/16 v17, 0x1

    move-object v13, v2

    const/16 v4, 0x1ae

    move/from16 v16, v17

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xe

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x439

    const/16 v7, 0x483

    const/16 v13, 0x9b

    invoke-direct {v15, v5, v12, v7, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x55

    invoke-direct {v5, v3, v3, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_exit_to_app"

    const/16 v16, 0x1

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x2f7

    const/16 v7, 0x34c

    const/16 v13, 0x1e2

    invoke-direct {v15, v5, v9, v7, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/16 v13, 0x55

    invoke-direct {v5, v7, v7, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_focus_lock"

    const/16 v16, 0x0

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x10

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x21f

    const/16 v7, 0x272

    const/16 v13, 0x1d8

    invoke-direct {v15, v5, v4, v7, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x1b

    const/16 v13, 0x45

    const/4 v14, 0x6

    invoke-direct {v5, v14, v7, v10, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_link"

    const/16 v16, 0x1

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x11

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x4ad

    const/16 v7, 0x177

    const/16 v13, 0x4e7

    const/16 v14, 0x1c9

    invoke-direct {v15, v5, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x4d

    const/4 v13, 0x7

    invoke-direct {v5, v11, v13, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_location"

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x12

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x48a

    const/16 v7, 0xe7

    const/16 v13, 0x4dc

    const/16 v14, 0x129

    invoke-direct {v15, v5, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x7

    invoke-direct {v5, v7, v8, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v8

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_mail"

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x3ae

    const/16 v7, 0x401

    const/16 v8, 0x1df

    invoke-direct {v15, v5, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x6

    const/4 v8, 0x7

    invoke-direct {v5, v7, v8, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v8

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_message"

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x14

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x4ef

    const/16 v7, 0x12b

    const/16 v8, 0x51d

    const/16 v9, 0x165

    invoke-direct {v15, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x1f

    const/16 v8, 0x4d

    invoke-direct {v5, v7, v11, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v8

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_play"

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x15

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x49d

    const/16 v7, 0x12e

    const/16 v8, 0x4ea

    const/16 v9, 0x172

    invoke-direct {v15, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x9

    const/16 v8, 0x4d

    const/4 v9, 0x0

    invoke-direct {v5, v9, v7, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    const/16 v8, 0x50

    const/16 v9, 0x50

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v8

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_reset"

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x16

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x3a9

    const/16 v7, 0x434

    const/16 v8, 0xe2

    const/4 v9, 0x2

    invoke-direct {v15, v5, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x9b

    const/16 v8, 0x70

    const/16 v9, 0x126

    const/16 v11, 0x150

    invoke-direct {v5, v7, v8, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    const/16 v8, 0x1c0

    invoke-direct {v7, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v9

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_rotate_device"

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x17

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x1d1

    const/16 v7, 0xf1

    const/16 v9, 0x2e7

    const/16 v11, 0x1a9

    invoke-direct {v15, v5, v7, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x84

    const/16 v9, 0x16b

    const/16 v11, 0x13c

    const/16 v13, 0x55

    invoke-direct {v5, v13, v7, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v8

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_rotate_device_arrows"

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x18

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x4d9

    const/16 v7, 0x521

    const/16 v8, 0x4a

    const/4 v9, 0x2

    invoke-direct {v15, v5, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x53

    const/16 v8, 0x53

    invoke-direct {v5, v3, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v8

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_search"

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x19

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x48a

    const/16 v7, 0x4d4

    const/16 v8, 0x54

    const/4 v9, 0x2

    invoke-direct {v15, v5, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x7

    const/16 v8, 0x55

    invoke-direct {v5, v3, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v7

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_share"

    move-object v13, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v3

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v3, 0x498

    const/16 v5, 0x9f

    const/16 v7, 0x4d6

    const/16 v8, 0xdd

    invoke-direct {v15, v3, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x43

    const/4 v7, 0x5

    invoke-direct {v3, v7, v7, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    const/16 v8, 0x48

    invoke-direct {v7, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v9

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_suggestion_lens"

    move-object v13, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1b

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v3, 0x4db

    const/16 v7, 0x9f

    const/16 v9, 0x50f

    const/16 v11, 0xdd

    invoke-direct {v15, v3, v7, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/16 v7, 0x3b

    const/4 v9, 0x5

    const/4 v11, 0x7

    invoke-direct {v3, v11, v9, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v9

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_suggestion_lowlight"

    move-object v13, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1c

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v3, 0x4e1

    const/16 v7, 0xe2

    const/16 v9, 0x525

    const/16 v11, 0x126

    invoke-direct {v15, v3, v7, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/16 v7, 0x46

    const/16 v9, 0x46

    const/4 v11, 0x2

    invoke-direct {v3, v11, v11, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v9

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_suggestion_macro"

    move-object v13, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1d

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v3, 0x277

    const/16 v7, 0x2b5

    const/16 v9, 0x1e6

    invoke-direct {v15, v3, v4, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/16 v7, 0x3d

    const/4 v9, 0x5

    invoke-direct {v3, v9, v9, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v7

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_suggestion_photo"

    move-object v13, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1e

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v3, 0x2ba

    const/16 v5, 0x2f2

    const/16 v7, 0x1e6

    invoke-direct {v15, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v7, 0x40

    const/16 v9, 0x40

    invoke-direct {v3, v4, v5, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v5, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v5

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_suggestion_portrait"

    move-object v13, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v3, 0x488

    const/16 v4, 0x4e3

    const/16 v5, 0x9a

    invoke-direct {v15, v3, v10, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x10

    const/16 v5, 0x5e

    const/4 v7, 0x3

    invoke-direct {v3, v7, v4, v5, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_wifi"

    move-object v13, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v0, 0x20

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
