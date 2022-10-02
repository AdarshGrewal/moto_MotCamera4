.class public Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxhdpi;
.super Lcom/google/android/play/core/appupdate/zzr;
.source "Atlasxhdpi.java"


# direct methods
.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x6

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzr;-><init>(I)V

    .line 2
    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1e3

    const/16 v3, 0x165

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v2, 0x17d

    const/4 v10, 0x2

    const/16 v3, 0x1cd

    const/16 v5, 0x52

    invoke-direct {v4, v2, v10, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/16 v12, 0x50

    invoke-direct {v6, v11, v11, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v12, v12}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Landroid/graphics/Point;

    const-string v3, "btn_bg_standard"

    const/4 v5, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v3, 0xcb

    const/16 v14, 0xec

    const/16 v4, 0x11b

    const/16 v6, 0x13c

    invoke-direct {v5, v3, v14, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v11, v11, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v12, v12}, Landroid/graphics/Point;-><init>(II)V

    iget-object v3, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Landroid/graphics/Point;

    const-string v4, "btn_bg_tap"

    const/4 v6, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v10, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v3, 0x65

    const/16 v4, 0x15d

    const/16 v6, 0xd6

    invoke-direct {v5, v14, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v3, 0x71

    invoke-direct {v7, v11, v11, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v3, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Landroid/graphics/Point;

    const-string v4, "btn_focus_ring_select"

    const/4 v6, 0x0

    move-object v3, v12

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0xe7

    const/16 v7, 0xe7

    invoke-direct {v5, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0xe5

    invoke-direct {v6, v11, v11, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v7

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "focus_10"

    const/16 v18, 0x0

    move-object v15, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x7a

    const/16 v8, 0x163

    invoke-direct {v6, v10, v14, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v9, 0x78

    invoke-direct {v7, v11, v2, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v9

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "hold_steady_ring"

    const/16 v18, 0x1

    move-object v15, v4

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v6, 0x5

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v9, 0xcb

    const/16 v12, 0x141

    const/16 v13, 0xfd

    invoke-direct {v7, v9, v12, v13, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/4 v12, 0x7

    const/16 v13, 0xf

    const/16 v15, 0x39

    const/16 v14, 0x31

    invoke-direct {v9, v12, v13, v15, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Point;

    const/16 v14, 0x40

    const/16 v15, 0x40

    invoke-direct {v13, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v21, v14

    check-cast v21, Landroid/graphics/Point;

    const-string v16, "ic_burst_shot"

    move-object v15, v4

    move-object/from16 v17, v7

    move-object/from16 v19, v9

    move-object/from16 v20, v13

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v7, 0x6

    invoke-virtual {v1, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v7, 0x192

    const/16 v9, 0x86

    const/16 v13, 0x1b9

    const/16 v14, 0xb0

    invoke-direct {v15, v7, v9, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v9, 0x2b

    invoke-direct {v7, v5, v2, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Point;

    const/16 v13, 0x30

    invoke-direct {v14, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v17, "ic_calendar"

    const/16 v11, 0x30

    move-object v13, v4

    move-object/from16 v21, v14

    move-object/from16 v14, v17

    move/from16 v16, v18

    move-object/from16 v17, v7

    move-object/from16 v18, v21

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v12, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v7, 0x136

    const/16 v13, 0x13d

    const/16 v14, 0x15c

    invoke-direct {v15, v7, v13, v14, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v6, v6, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v16, "ic_call"

    const/16 v17, 0x1

    move-object v13, v4

    move-object/from16 v18, v14

    move-object/from16 v14, v16

    move/from16 v16, v17

    move-object/from16 v17, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v7, 0x8

    invoke-virtual {v1, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v7, 0x120

    const/16 v13, 0xdb

    const/16 v14, 0x14e

    const/16 v6, 0x105

    invoke-direct {v15, v7, v13, v14, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x2f

    const/16 v13, 0x2e

    invoke-direct {v6, v2, v5, v7, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_camera_select"

    const/16 v16, 0x1

    move-object v13, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v6, 0x9

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v7, 0x192

    const/16 v13, 0x57

    const/16 v14, 0x1bc

    const/16 v5, 0x81

    invoke-direct {v15, v7, v13, v14, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x2d

    invoke-direct {v5, v3, v3, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v16, "ic_cancel"

    const/16 v17, 0x1

    move-object v13, v4

    move-object/from16 v18, v14

    move-object/from16 v14, v16

    move/from16 v16, v17

    move-object/from16 v17, v5

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x162

    const/16 v13, 0xc4

    const/16 v14, 0x190

    const/16 v3, 0xe6

    invoke-direct {v15, v5, v13, v14, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x2f

    const/16 v13, 0x29

    invoke-direct {v3, v2, v12, v5, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_contact"

    const/16 v16, 0x1

    move-object v13, v4

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x120

    const/16 v5, 0x10a

    const/16 v13, 0x149

    const/16 v14, 0x138

    invoke-direct {v15, v4, v5, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x2f

    invoke-direct {v4, v10, v2, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v16, "ic_copy"

    const/16 v17, 0x1

    move-object v13, v3

    move v2, v14

    move-object/from16 v14, v16

    move/from16 v16, v17

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xc

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x161

    const/16 v5, 0x13d

    const/16 v13, 0x17f

    invoke-direct {v15, v4, v5, v13, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x27

    const/4 v13, 0x5

    invoke-direct {v4, v6, v13, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v16, "ic_delete"

    const/16 v17, 0x1

    move-object v13, v3

    move-object/from16 v18, v14

    move-object/from16 v14, v16

    move/from16 v16, v17

    move-object/from16 v17, v4

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x1ae

    const/16 v13, 0xf0

    const/16 v14, 0x1d4

    const/16 v8, 0x10d

    invoke-direct {v15, v4, v13, v14, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v8, 0xa

    const/4 v13, 0x5

    invoke-direct {v4, v13, v8, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_done"

    const/16 v16, 0x1

    move-object v13, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xe

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x14e

    const/16 v8, 0x112

    const/16 v13, 0x174

    invoke-direct {v15, v4, v8, v13, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v8, 0x5

    invoke-direct {v4, v8, v8, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_exit_to_app"

    move-object v13, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x162

    const/16 v8, 0x65

    const/16 v13, 0x18d

    const/16 v14, 0x90

    invoke-direct {v15, v4, v8, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-direct {v4, v8, v8, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_focus_lock"

    const/16 v16, 0x0

    move-object v13, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x10

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x1ad

    const/16 v8, 0x1d8

    const/16 v13, 0x14e

    invoke-direct {v15, v4, v2, v8, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v8, 0xd

    const/16 v13, 0x23

    invoke-direct {v4, v10, v8, v7, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_link"

    const/16 v16, 0x1

    move-object v13, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x11

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x1c0

    const/16 v8, 0x9e

    const/16 v13, 0x1de

    const/16 v14, 0xc8

    invoke-direct {v15, v4, v8, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v8, 0x3

    invoke-direct {v4, v6, v8, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_location"

    move-object v13, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x12

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x153

    const/16 v8, 0xeb

    const/16 v13, 0x17d

    const/16 v14, 0x10d

    invoke-direct {v15, v4, v8, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v8, 0x29

    const/4 v13, 0x3

    invoke-direct {v4, v13, v12, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_mail"

    move-object v13, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x13

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x162

    const/16 v8, 0x95

    const/16 v13, 0x18d

    const/16 v14, 0xbf

    invoke-direct {v15, v4, v8, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v8, 0x3

    invoke-direct {v4, v10, v8, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v13

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_message"

    move-object v13, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x14

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x1c3

    const/16 v8, 0x112

    const/16 v13, 0x1db

    const/16 v14, 0x130

    invoke-direct {v15, v4, v8, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v8, 0xf

    invoke-direct {v4, v8, v6, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v8

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_play"

    move-object v13, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x15

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x182

    const/16 v6, 0xeb

    const/16 v8, 0x1a9

    const/16 v13, 0x10e

    invoke-direct {v15, v4, v6, v8, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v6, 0x4

    const/4 v8, 0x0

    invoke-direct {v4, v8, v6, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v6, 0x28

    const/16 v8, 0x28

    invoke-direct {v5, v6, v8}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v6

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_reset"

    move-object v13, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x16

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x7f

    const/16 v5, 0xc6

    const/16 v6, 0x15e

    const/16 v8, 0xec

    invoke-direct {v15, v4, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x4d

    const/16 v6, 0x37

    const/16 v8, 0x94

    const/16 v13, 0xa9

    invoke-direct {v4, v5, v6, v8, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v6, 0xe0

    invoke-direct {v5, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v8

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_rotate_device"

    move-object v13, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x17

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x178

    const/16 v5, 0x60

    const/16 v8, 0xec

    invoke-direct {v15, v8, v10, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x2a

    const/16 v8, 0x41

    const/16 v13, 0xb6

    const/16 v14, 0x9f

    invoke-direct {v4, v5, v8, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v6

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_rotate_device_arrows"

    move-object v13, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v4, 0x18

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v4, 0x179

    const/16 v5, 0x113

    const/16 v6, 0x19e

    invoke-direct {v15, v4, v5, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    const/16 v4, 0x2a

    const/16 v5, 0x2a

    const/4 v6, 0x5

    invoke-direct {v2, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v5, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v5

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_search"

    move-object v13, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v3, 0x195

    const/16 v4, 0xb5

    const/16 v5, 0x1bb

    const/16 v6, 0xdf

    invoke-direct {v15, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x5

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v5, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v19, v5

    check-cast v19, Landroid/graphics/Point;

    const-string v14, "ic_share"

    move-object v13, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v2, 0x1c1

    const/16 v3, 0x57

    const/16 v5, 0x1e1

    const/16 v6, 0x77

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v13, 0x22

    invoke-direct {v6, v10, v10, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    const/16 v14, 0x24

    invoke-direct {v7, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Landroid/graphics/Point;

    const-string v3, "ic_suggestion_lens"

    const/4 v5, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v2, 0x1a3

    const/16 v3, 0x113

    const/16 v5, 0x1be

    const/16 v6, 0x133

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v2, 0x1e

    const/4 v3, 0x3

    invoke-direct {v6, v3, v10, v2, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Landroid/graphics/Point;

    const-string v3, "ic_suggestion_lowlight"

    const/4 v5, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v2, 0x184

    const/16 v3, 0x13d

    const/16 v5, 0x1a8

    const/16 v6, 0x161

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v6, v2, v2, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Landroid/graphics/Point;

    const-string v3, "ic_suggestion_macro"

    const/4 v5, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v2, 0x1d

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v2, 0x1c1

    const/16 v3, 0x7c

    const/16 v5, 0x1e1

    const/16 v6, 0x99

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v2, 0x1f

    invoke-direct {v6, v10, v10, v13, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Landroid/graphics/Point;

    const-string v3, "ic_suggestion_photo"

    const/4 v5, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v2, 0x1c0

    const/16 v3, 0xcd

    const/16 v5, 0x1de

    const/16 v6, 0xeb

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v2, 0x21

    const/16 v3, 0x21

    const/4 v5, 0x3

    invoke-direct {v6, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Landroid/graphics/Point;

    const-string v3, "ic_suggestion_portrait"

    const/4 v5, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v2, 0x102

    const/16 v3, 0x141

    const/16 v5, 0x131

    const/16 v6, 0x163

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/16 v2, 0x29

    const/4 v3, 0x1

    invoke-direct {v6, v3, v12, v11, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/graphics/Point;

    const-string v3, "ic_wifi"

    const/4 v5, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v0, 0x20

    invoke-virtual {v1, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
