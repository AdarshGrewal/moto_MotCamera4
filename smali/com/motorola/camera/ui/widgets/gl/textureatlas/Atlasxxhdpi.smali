.class public Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxhdpi;
.super Lcom/google/android/play/core/appupdate/zzr;
.source "Atlasxxhdpi.java"


# direct methods
.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x6

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzr;-><init>(I)V

    .line 2
    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x1d2

    const/16 v4, 0x327

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    .line 3
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v11, 0x2

    const/16 v3, 0x2a6

    const/16 v4, 0x7a

    const/16 v6, 0x31e

    invoke-direct {v5, v11, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/16 v13, 0x78

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

    const/16 v4, 0x147

    const/16 v5, 0x20d

    const/16 v7, 0x1bf

    const/16 v8, 0x285

    invoke-direct {v6, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

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

    invoke-virtual {v2, v11, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v4, 0xba

    const/16 v14, 0x15f

    const/16 v5, 0x163

    const/16 v7, 0x208

    invoke-direct {v6, v4, v14, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v4, 0xa9

    invoke-direct {v8, v12, v12, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

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

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x15a

    const/16 v8, 0x15a

    invoke-direct {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x158

    invoke-direct {v7, v12, v12, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v10

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "focus_10"

    const/16 v18, 0x0

    move-object v15, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v6, 0x4

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v9, 0xb5

    const/16 v10, 0x210

    invoke-direct {v7, v11, v14, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v10, 0xb4

    const/16 v13, 0xb3

    invoke-direct {v9, v3, v11, v10, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v10

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "hold_steady_ring"

    const/16 v18, 0x1

    move-object v15, v5

    move-object/from16 v17, v7

    move-object/from16 v19, v9

    move-object/from16 v20, v13

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v7, 0x5

    invoke-virtual {v2, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v9, Landroid/graphics/Rect;

    const/16 v10, 0xc0

    const/16 v13, 0x2bc

    const/16 v15, 0x10a

    const/16 v3, 0x2ee

    invoke-direct {v9, v10, v13, v15, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/16 v10, 0xb

    const/16 v13, 0x17

    const/16 v15, 0x55

    const/16 v12, 0x49

    invoke-direct {v3, v10, v13, v15, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    const/16 v13, 0x60

    const/16 v15, 0x60

    invoke-direct {v12, v13, v15}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v13

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_burst_shot"

    move-object v15, v5

    move-object/from16 v17, v9

    move-object/from16 v19, v3

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v9, 0x45

    const/16 v12, 0x198

    const/16 v13, 0x83

    invoke-direct {v5, v14, v9, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/4 v12, 0x7

    const/16 v13, 0x40

    invoke-direct {v9, v12, v11, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    const/16 v15, 0x48

    invoke-direct {v12, v15, v15}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v15

    check-cast v21, Landroid/graphics/Point;

    const-string v17, "ic_calendar"

    const/16 v1, 0x48

    move-object v15, v3

    move-object/from16 v16, v17

    move-object/from16 v17, v5

    move-object/from16 v19, v9

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v5, 0x7

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v9, 0xcb

    const/16 v12, 0x197

    const/16 v15, 0x103

    invoke-direct {v5, v14, v9, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v12, 0x8

    invoke-direct {v9, v12, v12, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v8

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_call"

    move-object v8, v15

    move-object v15, v3

    move-object/from16 v17, v5

    move-object/from16 v19, v9

    move-object/from16 v20, v8

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v2, v12, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x18c

    const/16 v9, 0x28a

    const/16 v15, 0x1cf

    const/16 v12, 0x2c7

    invoke-direct {v5, v8, v9, v15, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x7

    const/16 v12, 0x46

    const/16 v15, 0x44

    invoke-direct {v8, v4, v9, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v12

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_camera_select"

    move-object v15, v3

    move-object/from16 v17, v5

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x9

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x19d

    invoke-direct {v5, v14, v11, v8, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v9, 0x43

    invoke-direct {v8, v7, v7, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v15

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_cancel"

    move-object v15, v3

    move-object/from16 v17, v5

    move-object/from16 v19, v8

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xa

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x140

    const/16 v12, 0x2cf

    const/16 v15, 0x184

    const/16 v4, 0x301

    invoke-direct {v5, v8, v12, v15, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v8, 0x46

    const/16 v12, 0x3d

    invoke-direct {v4, v11, v10, v8, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v12

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_contact"

    move-object v15, v3

    move-object/from16 v17, v5

    move-object/from16 v19, v4

    move-object/from16 v20, v8

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v2, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x7f

    const/16 v8, 0x2a6

    const/16 v12, 0xbb

    const/16 v15, 0x2ea

    invoke-direct {v4, v5, v8, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x46

    invoke-direct {v5, v6, v11, v13, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v12

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_copy"

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xc

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x19c

    const/16 v8, 0x88

    const/16 v12, 0x1c8

    const/16 v15, 0xc0

    invoke-direct {v4, v5, v8, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0xe

    const/16 v12, 0x3a

    const/16 v15, 0x8

    invoke-direct {v5, v8, v15, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v11

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_delete"

    move-object v11, v15

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v11

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xd

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x12d

    const/16 v11, 0x197

    const/16 v15, 0x158

    invoke-direct {v4, v14, v5, v11, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v11, 0xf

    const/16 v15, 0x8

    invoke-direct {v5, v15, v11, v13, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v15

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_done"

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v11

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v2, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x168

    const/16 v11, 0x15d

    const/16 v15, 0x1a0

    const/16 v10, 0x195

    invoke-direct {v4, v5, v11, v15, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v10, 0x8

    invoke-direct {v5, v10, v10, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v11

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_exit_to_app"

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v10

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xf

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x147

    const/16 v10, 0x28a

    const/16 v11, 0x187

    const/16 v15, 0x2ca

    invoke-direct {v4, v5, v10, v11, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v5, v10, v10, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v11

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_focus_lock"

    const/16 v18, 0x0

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v10

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x108

    const/16 v10, 0x19e

    const/16 v11, 0x128

    invoke-direct {v4, v14, v5, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v10, 0x14

    const/16 v11, 0x34

    invoke-direct {v5, v6, v10, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v11

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_link"

    const/16 v18, 0x1

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v10

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x11

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x10f

    const/16 v10, 0x2bc

    const/16 v11, 0x13b

    const/16 v15, 0x2fa

    invoke-direct {v4, v5, v10, v11, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v8, v7, v12, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v11

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_location"

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v10

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x12

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x168

    const/16 v10, 0x1d6

    const/16 v11, 0x1a6

    const/16 v15, 0x208

    invoke-direct {v4, v5, v10, v11, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v10, 0x3d

    const/16 v11, 0xb

    invoke-direct {v5, v7, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v11

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_mail"

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v10

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x13

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x189

    const/16 v10, 0x2cf

    const/16 v11, 0x1c8

    const/16 v15, 0x30d

    invoke-direct {v4, v5, v10, v11, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v7, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v10

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_message"

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x1a5

    const/16 v6, 0x15d

    const/16 v10, 0x1c8

    const/16 v11, 0x189

    invoke-direct {v4, v5, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x17

    invoke-direct {v5, v6, v8, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v8

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_play"

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x15

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x7f

    const/16 v6, 0x2ef

    const/16 v8, 0xb9

    const/16 v10, 0x323

    invoke-direct {v4, v5, v6, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x6

    const/4 v8, 0x0

    invoke-direct {v5, v8, v6, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v8, 0x3c

    const/16 v10, 0x3c

    invoke-direct {v6, v8, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v8

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_reset"

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x16

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0xd9

    const/16 v6, 0x20d

    const/16 v8, 0x142

    const/16 v10, 0x2b7

    invoke-direct {v4, v5, v6, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x74

    const/16 v8, 0x53

    const/16 v10, 0xdd

    const/16 v11, 0xfd

    invoke-direct {v5, v6, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    const/16 v8, 0x150

    invoke-direct {v6, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v10

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_rotate_device"

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x17

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x215

    const/16 v6, 0xd4

    const/16 v10, 0x2a1

    const/4 v11, 0x2

    invoke-direct {v4, v11, v5, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x3f

    const/16 v10, 0x62

    const/16 v11, 0x111

    const/16 v12, 0xee

    invoke-direct {v5, v6, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v8

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_rotate_device_arrows"

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x18

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x168

    const/16 v6, 0x19a

    const/16 v8, 0x19f

    const/16 v10, 0x1d1

    invoke-direct {v4, v5, v6, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x3f

    const/16 v8, 0x3f

    const/16 v10, 0x8

    invoke-direct {v5, v10, v10, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v8

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_search"

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x19

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x88

    const/16 v6, 0x197

    const/16 v8, 0xc6

    invoke-direct {v4, v14, v5, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v7, v13, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v8

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_share"

    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x1a

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v10, Landroid/graphics/Rect;

    const/16 v4, 0x19d

    const/16 v5, 0x45

    const/16 v6, 0x1cd

    const/16 v8, 0x75

    invoke-direct {v10, v4, v5, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    const/16 v4, 0x33

    const/4 v5, 0x3

    invoke-direct {v12, v5, v5, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    const/16 v5, 0x36

    invoke-direct {v13, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v14, v6

    check-cast v14, Landroid/graphics/Point;

    const-string v9, "ic_suggestion_lens"

    const/4 v11, 0x1

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0x1b

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v10, Landroid/graphics/Rect;

    const/16 v6, 0x1a2

    const/16 v8, 0x1ca

    const/16 v9, 0x32

    const/4 v11, 0x2

    invoke-direct {v10, v6, v11, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    const/16 v6, 0x2d

    const/4 v8, 0x3

    invoke-direct {v12, v7, v8, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v14, v6

    check-cast v14, Landroid/graphics/Point;

    const-string v9, "ic_suggestion_lowlight"

    const/4 v11, 0x1

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0x1c

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v10, Landroid/graphics/Rect;

    const/16 v6, 0x19c

    const/16 v8, 0xc5

    const/16 v9, 0x1d0

    const/16 v11, 0xf9

    invoke-direct {v10, v6, v8, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    const/16 v6, 0x35

    const/16 v8, 0x35

    const/4 v9, 0x1

    invoke-direct {v12, v9, v9, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v14, v6

    check-cast v14, Landroid/graphics/Point;

    const-string v9, "ic_suggestion_macro"

    const/4 v11, 0x1

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0x1d

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v10, Landroid/graphics/Rect;

    const/16 v6, 0x19c

    const/16 v8, 0x12d

    const/16 v9, 0x1cc

    const/16 v11, 0x158

    invoke-direct {v10, v6, v8, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    const/16 v6, 0x2e

    const/4 v8, 0x3

    invoke-direct {v12, v8, v8, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v4, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v14, v4

    check-cast v14, Landroid/graphics/Point;

    const-string v9, "ic_suggestion_photo"

    const/4 v11, 0x1

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x1e

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v10, Landroid/graphics/Rect;

    const/16 v4, 0x1a4

    const/16 v6, 0x19a

    const/16 v8, 0x1d0

    const/16 v9, 0x1c6

    invoke-direct {v10, v4, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    const/16 v4, 0x31

    const/16 v6, 0x31

    invoke-direct {v12, v7, v7, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v4, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v14, v4

    check-cast v14, Landroid/graphics/Point;

    const-string v9, "ic_suggestion_portrait"

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x1f

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v3, 0xbe

    const/16 v4, 0x2f3

    const/16 v6, 0x103

    const/16 v7, 0x325

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v3, 0x47

    const/16 v4, 0x3d

    const/16 v6, 0xb

    const/4 v8, 0x2

    invoke-direct {v7, v8, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/graphics/Point;

    const-string v4, "ic_wifi"

    const/4 v6, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v0, 0x20

    invoke-virtual {v2, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
