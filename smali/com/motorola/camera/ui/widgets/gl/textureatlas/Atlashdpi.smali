.class public Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;
.super Lcom/google/android/play/core/appupdate/zzr;
.source "Atlashdpi.java"


# direct methods
.method public constructor <init>()V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x6

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzr;-><init>(I)V

    .line 2
    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x196

    const/16 v4, 0xfd

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    .line 3
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v3, 0x71

    const/16 v11, 0xb3

    const/16 v4, 0xad

    const/16 v6, 0xef

    invoke-direct {v5, v3, v11, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/16 v13, 0x3c

    invoke-direct {v7, v12, v12, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v13, v13}, Landroid/graphics/Point;-><init>(II)V

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

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v4, 0xb2

    const/16 v5, 0xbc

    const/16 v15, 0xee

    const/16 v7, 0xf8

    invoke-direct {v6, v4, v5, v15, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v12, v12, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v4, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v10, v4

    check-cast v10, Landroid/graphics/Point;

    const-string v5, "btn_bg_tap"

    const/4 v7, 0x0

    move-object v4, v14

    invoke-direct/range {v4 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x112

    const/16 v8, 0x166

    const/16 v9, 0x56

    invoke-direct {v6, v7, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x54

    invoke-direct {v7, v12, v12, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v22, v8

    check-cast v22, Landroid/graphics/Point;

    const-string v17, "btn_focus_ring_select"

    const/16 v19, 0x0

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v22}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0xae

    const/16 v9, 0xae

    invoke-direct {v7, v4, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v9, 0xac

    invoke-direct {v8, v12, v12, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v22, v13

    check-cast v22, Landroid/graphics/Point;

    const-string v17, "focus_10"

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v10

    invoke-direct/range {v16 .. v22}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v7, 0x4

    invoke-virtual {v2, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x10d

    const/16 v10, 0x5c

    invoke-direct {v7, v11, v4, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v10, 0x5a

    invoke-direct {v8, v12, v12, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v22, v10

    check-cast v22, Landroid/graphics/Point;

    const-string v17, "hold_steady_ring"

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v13

    invoke-direct/range {v16 .. v22}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v7, 0x5

    invoke-virtual {v2, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v10, 0x16b

    const/16 v13, 0x50

    const/16 v14, 0x191

    const/16 v11, 0x6a

    invoke-direct {v8, v10, v13, v14, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/16 v11, 0xb

    const/16 v13, 0x2b

    const/16 v14, 0x25

    invoke-direct {v10, v7, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    const/16 v13, 0x30

    const/16 v14, 0x30

    invoke-direct {v11, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v22, v13

    check-cast v22, Landroid/graphics/Point;

    const-string v17, "ic_burst_shot"

    const/16 v19, 0x1

    move-object/from16 v16, v5

    move-object/from16 v18, v8

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    invoke-direct/range {v16 .. v22}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v10, 0x61

    const/16 v11, 0x10c

    const/16 v13, 0x82

    invoke-direct {v8, v15, v10, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/16 v11, 0x21

    invoke-direct {v10, v6, v12, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    const/16 v14, 0x24

    invoke-direct {v13, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v22, v9

    check-cast v22, Landroid/graphics/Point;

    const-string v17, "ic_calendar"

    move-object/from16 v16, v5

    move-object/from16 v18, v8

    move-object/from16 v20, v10

    move-object/from16 v21, v13

    invoke-direct/range {v16 .. v22}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v8, 0x7

    invoke-virtual {v2, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v9, 0x136

    const/16 v10, 0x7a

    const/16 v13, 0x154

    const/16 v1, 0x98

    invoke-direct {v8, v9, v10, v13, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6, v6, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v22, v13

    check-cast v22, Landroid/graphics/Point;

    const-string v17, "ic_call"

    move-object/from16 v16, v5

    move-object/from16 v18, v8

    move-object/from16 v20, v1

    move-object/from16 v21, v10

    invoke-direct/range {v16 .. v22}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0x8

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x16b

    const/16 v10, 0x2b

    const/16 v13, 0x18d

    const/16 v11, 0x4b

    invoke-direct {v5, v8, v10, v13, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v10, 0x23

    const/16 v11, 0x23

    invoke-direct {v8, v3, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v22, v11

    check-cast v22, Landroid/graphics/Point;

    const-string v17, "ic_camera_select"

    move-object/from16 v16, v2

    move-object/from16 v18, v5

    move-object/from16 v20, v8

    move-object/from16 v21, v10

    invoke-direct/range {v16 .. v22}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x9

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x87

    const/16 v10, 0x10e

    const/16 v11, 0xa7

    invoke-direct {v5, v15, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v10, 0x22

    invoke-direct {v8, v4, v4, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v22, v13

    check-cast v22, Landroid/graphics/Point;

    const-string v17, "ic_cancel"

    move-object/from16 v16, v2

    move-object/from16 v18, v5

    move-object/from16 v20, v8

    move-object/from16 v21, v11

    invoke-direct/range {v16 .. v22}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x112

    const/16 v11, 0x5b

    const/16 v13, 0x75

    invoke-direct {v5, v8, v11, v9, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v11, 0x1f

    invoke-direct {v8, v12, v7, v14, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v15

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_contact"

    const/16 v18, 0x1

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v8

    move-object/from16 v20, v13

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xb

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x16b

    const/16 v13, 0x18b

    const/16 v15, 0x26

    invoke-direct {v5, v8, v4, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v13, 0x21

    invoke-direct {v8, v3, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v15

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_copy"

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v8

    move-object/from16 v20, v13

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xc

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x119

    const/16 v13, 0xc4

    const/16 v15, 0x131

    const/16 v7, 0xe2

    invoke-direct {v5, v8, v13, v15, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x1e

    const/4 v13, 0x6

    const/16 v15, 0x21

    invoke-direct {v7, v13, v6, v8, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v15

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_delete"

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v13

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xd

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x157

    const/16 v13, 0xdf

    const/16 v15, 0x174

    const/16 v11, 0xf6

    invoke-direct {v5, v7, v13, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v11, 0x4

    const/4 v13, 0x7

    const/16 v15, 0x21

    invoke-direct {v7, v11, v13, v15, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v13

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_done"

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v11

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xe

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x159

    const/16 v11, 0x7a

    const/16 v13, 0x177

    const/16 v15, 0x98

    invoke-direct {v5, v7, v11, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v11, 0x21

    invoke-direct {v7, v6, v6, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v13

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_exit_to_app"

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v11

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xf

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0xf3

    const/16 v11, 0x113

    const/16 v13, 0xcc

    const/16 v15, 0xac

    invoke-direct {v5, v7, v15, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v11, 0x20

    invoke-direct {v7, v12, v12, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v15

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_focus_lock"

    const/16 v18, 0x0

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v13

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x10

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x119

    const/16 v13, 0xe7

    const/16 v15, 0x13a

    const/16 v6, 0xf9

    invoke-direct {v5, v7, v13, v15, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x9

    const/16 v13, 0x1b

    invoke-direct {v6, v3, v7, v10, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v15

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_link"

    const/16 v18, 0x1

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x11

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x118

    const/16 v7, 0x9f

    const/16 v15, 0x130

    const/16 v13, 0xbf

    invoke-direct {v5, v6, v7, v15, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x6

    invoke-direct {v6, v7, v4, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v13

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_location"

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x12

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x9d

    const/16 v7, 0x156

    const/16 v13, 0xb7

    invoke-direct {v5, v9, v6, v7, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x1f

    const/4 v13, 0x5

    invoke-direct {v6, v4, v13, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v13

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_mail"

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x13

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0xf3

    const/16 v7, 0xd1

    const/16 v13, 0x114

    const/16 v15, 0xf1

    invoke-direct {v5, v6, v7, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v4, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v13

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_message"

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x14

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x13f

    const/16 v7, 0xe3

    const/16 v13, 0x152

    const/16 v15, 0xfb

    invoke-direct {v5, v6, v7, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0xb

    const/4 v13, 0x6

    invoke-direct {v6, v7, v13, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v13

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_play"

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x15

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0xbc

    const/16 v7, 0x154

    const/16 v13, 0xd8

    invoke-direct {v5, v9, v6, v7, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v12, v4, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v9

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_reset"

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x16

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x61

    const/16 v7, 0xe9

    const/16 v9, 0xb7

    const/16 v13, 0xb3

    invoke-direct {v5, v13, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x39

    const/16 v9, 0x29

    const/16 v13, 0x6f

    const/16 v15, 0x7f

    invoke-direct {v6, v7, v9, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    const/16 v9, 0xa8

    invoke-direct {v7, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v13

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_rotate_device"

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x17

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x6c

    const/16 v7, 0xfb

    const/16 v13, 0xb3

    invoke-direct {v5, v4, v13, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x30

    const/16 v13, 0x89

    const/16 v15, 0x78

    const/16 v8, 0x1f

    invoke-direct {v6, v8, v7, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v8

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_rotate_device_arrows"

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x18

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x159

    const/16 v7, 0xbd

    const/16 v8, 0x176

    const/16 v9, 0xda

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v7, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v8

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_search"

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x19

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x113

    const/16 v7, 0x7a

    const/16 v8, 0x131

    const/16 v9, 0x9a

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x21

    const/4 v8, 0x3

    invoke-direct {v6, v8, v4, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v8

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_share"

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x1a

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x17b

    const/16 v8, 0xa9

    const/16 v9, 0x194

    const/16 v10, 0xc2

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3, v3, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    const/16 v9, 0x1b

    invoke-direct {v8, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v9

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_suggestion_lens"

    move-object v15, v2

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0x1b

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x17c

    const/16 v8, 0x6f

    const/16 v9, 0x191

    const/16 v10, 0x88

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x17

    invoke-direct {v7, v4, v3, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    const/16 v9, 0x1b

    invoke-direct {v8, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v9

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_suggestion_lowlight"

    move-object v15, v2

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0x1c

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x15b

    const/16 v8, 0x9d

    const/16 v9, 0x176

    const/16 v10, 0xb8

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x1b

    invoke-direct {v7, v12, v12, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v8

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_suggestion_macro"

    const/16 v18, 0x0

    move-object v15, v2

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0x1d

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x17b

    const/16 v8, 0xc7

    const/16 v9, 0x194

    const/16 v10, 0xde

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x18

    invoke-direct {v7, v3, v3, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Point;

    const/16 v5, 0x1b

    invoke-direct {v3, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v5, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v5

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_suggestion_photo"

    const/16 v18, 0x1

    move-object v15, v2

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v3

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1e

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x17c

    const/16 v6, 0x8d

    const/16 v7, 0x193

    const/16 v8, 0xa4

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x19

    const/16 v7, 0x19

    invoke-direct {v5, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Point;

    const/16 v6, 0x1b

    invoke-direct {v4, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v6

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_suggestion_portrait"

    move-object v15, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v4, 0x13b

    const/16 v5, 0x5b

    const/16 v7, 0x15f

    const/16 v8, 0x75

    invoke-direct {v6, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/4 v4, 0x5

    invoke-direct {v8, v12, v4, v14, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/graphics/Point;

    const-string v5, "ic_wifi"

    const/4 v7, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
