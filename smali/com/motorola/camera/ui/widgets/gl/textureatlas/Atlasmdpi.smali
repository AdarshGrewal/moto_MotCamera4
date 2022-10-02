.class public Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasmdpi;
.super Lcom/google/android/play/core/appupdate/zzr;
.source "Atlasmdpi.java"


# direct methods
.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x6

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzr;-><init>(I)V

    .line 2
    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x7c

    const/16 v4, 0x19a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    .line 3
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v11, 0x2

    const/16 v12, 0x12d

    const/16 v3, 0x2a

    const/16 v4, 0x155

    invoke-direct {v5, v11, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/16 v14, 0x28

    invoke-direct {v7, v13, v13, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v14, v14}, Landroid/graphics/Point;-><init>(II)V

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

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v4, 0x15a

    const/16 v5, 0x2a

    const/16 v7, 0x182

    invoke-direct {v6, v11, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v13, v13, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v4, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v10, v4

    check-cast v10, Landroid/graphics/Point;

    const-string v5, "btn_bg_tap"

    const/4 v7, 0x0

    move-object v4, v15

    invoke-direct/range {v4 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v2, v11, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v4, 0xbb

    const/16 v5, 0x3a

    const/16 v7, 0xf3

    invoke-direct {v6, v11, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v4, 0x38

    invoke-direct {v8, v13, v13, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v4, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object v10, v4

    check-cast v10, Landroid/graphics/Point;

    const-string v5, "btn_focus_ring_select"

    const/4 v7, 0x0

    move-object v4, v14

    invoke-direct/range {v4 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v7, 0x75

    invoke-direct {v6, v11, v11, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/16 v9, 0x73

    invoke-direct {v8, v13, v13, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v9

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "focus_10"

    const/16 v17, 0x0

    move-object v14, v5

    move-object/from16 v16, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v10

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v6, 0x4

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v9, 0x7a

    const/16 v10, 0x3e

    const/16 v14, 0xb6

    invoke-direct {v8, v11, v9, v10, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/16 v14, 0x3c

    invoke-direct {v10, v13, v13, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v16, "hold_steady_ring"

    move-object v14, v5

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v8

    move-object/from16 v18, v10

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v8, 0x5

    invoke-virtual {v2, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v10, 0x43

    const/16 v14, 0xb9

    const/16 v15, 0x5d

    const/16 v7, 0xcb

    invoke-direct {v8, v10, v14, v15, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v10, 0x7

    const/16 v14, 0x1d

    const/16 v15, 0x19

    invoke-direct {v7, v4, v10, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    const/16 v14, 0x20

    invoke-direct {v15, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v17, "ic_burst_shot"

    const/16 v18, 0x1

    move-object v14, v5

    move-object/from16 v19, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v8

    move/from16 v17, v18

    move-object/from16 v18, v7

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v7, Landroid/graphics/Rect;

    const/16 v8, 0x32

    const/16 v14, 0x181

    const/16 v15, 0x47

    const/16 v1, 0x197

    invoke-direct {v7, v8, v14, v15, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    const/16 v8, 0x16

    invoke-direct {v1, v3, v13, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    const/16 v14, 0x18

    invoke-direct {v15, v14, v14}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v17, "ic_calendar"

    const/16 v18, 0x1

    const/16 v6, 0x18

    move-object v14, v5

    move-object/from16 v19, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v7

    move/from16 v17, v18

    move-object/from16 v18, v1

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v2, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x4a

    const/16 v14, 0x164

    const/16 v15, 0x5e

    const/16 v10, 0x178

    invoke-direct {v5, v7, v14, v15, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v11, v11, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_call"

    const/16 v17, 0x1

    move-object v14, v2

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v10

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x8

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x2f

    const/16 v10, 0x47

    const/16 v14, 0x144

    invoke-direct {v5, v7, v12, v10, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v13, v3, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_camera_select"

    move-object v14, v2

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v10

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0x9

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x2f

    const/16 v10, 0x166

    const/16 v14, 0x45

    const/16 v15, 0x17c

    invoke-direct {v5, v7, v10, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v10, 0x17

    invoke-direct {v7, v3, v3, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v16, "ic_cancel"

    move-object v14, v2

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x62

    const/16 v14, 0xb9

    const/16 v15, 0xcb

    invoke-direct {v5, v7, v14, v9, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v15, 0x15

    invoke-direct {v7, v13, v4, v6, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v15, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v15

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_contact"

    move-object/from16 v19, v14

    move-object v14, v2

    const/16 v4, 0x15

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v5, 0xb

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x2f

    const/16 v14, 0x149

    const/16 v15, 0x45

    const/16 v3, 0x161

    invoke-direct {v5, v7, v14, v15, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v13, v13, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_copy"

    move-object v14, v2

    move-object/from16 v16, v5

    move-object/from16 v18, v3

    move-object/from16 v19, v7

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x4f

    const/16 v7, 0x102

    const/16 v14, 0x5f

    const/16 v15, 0x116

    invoke-direct {v3, v5, v7, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x14

    const/4 v14, 0x4

    invoke-direct {v5, v14, v11, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v16, "ic_delete"

    move-object v14, v2

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x187

    const/16 v14, 0x197

    invoke-direct {v3, v11, v5, v8, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v14, 0x4

    invoke-direct {v5, v11, v14, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v16, "ic_done"

    move-object v14, v2

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x4c

    const/16 v14, 0x17d

    const/16 v15, 0x60

    const/16 v7, 0x191

    invoke-direct {v3, v5, v14, v15, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v11, v11, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_exit_to_app"

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x5b

    const/16 v7, 0xd0

    const/16 v15, 0x70

    const/16 v14, 0xe5

    invoke-direct {v3, v5, v7, v15, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v13, v13, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v16, "ic_focus_lock"

    const/16 v17, 0x0

    move-object v14, v2

    move v11, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x63

    const/16 v7, 0xea

    const/16 v14, 0xf6

    invoke-direct {v3, v5, v7, v9, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x12

    const/4 v14, 0x6

    invoke-direct {v5, v13, v14, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v16, "ic_link"

    const/16 v17, 0x1

    move-object v14, v2

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x4c

    const/16 v14, 0x5c

    const/16 v15, 0x143

    invoke-direct {v3, v5, v12, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v12, 0x4

    const/16 v14, 0x14

    const/4 v15, 0x1

    invoke-direct {v5, v12, v15, v14, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_location"

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v12

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x64

    const/16 v12, 0xfb

    const/16 v14, 0x10d

    invoke-direct {v3, v5, v12, v9, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v12, 0x3

    const/4 v14, 0x1

    invoke-direct {v5, v14, v12, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_mail"

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v12

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x13

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x3f

    const/16 v12, 0xd0

    const/16 v14, 0x56

    const/16 v15, 0xe6

    invoke-direct {v3, v5, v12, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v12, 0x1

    invoke-direct {v5, v13, v12, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_message"

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v12

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x14

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v12, 0x6d

    const/16 v14, 0x8a

    invoke-direct {v5, v12, v9, v9, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    const/4 v14, 0x7

    const/4 v15, 0x4

    invoke-direct {v12, v14, v15, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v14, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v14

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_play"

    move-object v14, v2

    move-object/from16 v16, v5

    move-object/from16 v18, v12

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x64

    const/16 v12, 0x112

    const/16 v14, 0x78

    const/16 v15, 0x125

    invoke-direct {v3, v5, v12, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v12, 0x14

    const/4 v14, 0x1

    invoke-direct {v5, v13, v14, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v12, v12}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v12

    check-cast v20, Landroid/graphics/Point;

    const-string v12, "ic_reset"

    move-object v14, v2

    move-object/from16 v19, v15

    move-object v15, v12

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x43

    const/16 v12, 0x68

    const/16 v14, 0xb4

    invoke-direct {v3, v5, v9, v12, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v9, 0x26

    const/16 v12, 0x1b

    const/16 v14, 0x4b

    const/16 v15, 0x55

    invoke-direct {v5, v9, v12, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v12

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_rotate_device"

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0xf8

    const/16 v9, 0x4a

    const/16 v12, 0x128

    const/4 v14, 0x2

    invoke-direct {v3, v14, v5, v9, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v9, 0x5c

    const/16 v12, 0x50

    const/16 v14, 0x14

    const/16 v15, 0x20

    invoke-direct {v5, v14, v15, v9, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v11

    check-cast v20, Landroid/graphics/Point;

    const-string v11, "ic_rotate_device_arrows"

    move-object v14, v2

    move v12, v15

    move-object v15, v11

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x63

    const/16 v9, 0x141

    const/16 v11, 0x77

    const/16 v14, 0x155

    invoke-direct {v3, v5, v9, v11, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v9, 0x2

    invoke-direct {v5, v9, v9, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v11

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_search"

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x19

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x4a

    const/16 v9, 0x149

    const/16 v11, 0x5e

    const/16 v14, 0x15f

    invoke-direct {v3, v5, v9, v11, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v9, 0x1

    const/4 v11, 0x2

    invoke-direct {v5, v11, v9, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v9

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_share"

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x63

    const/16 v8, 0x15a

    const/16 v9, 0x16c

    const/16 v10, 0x75

    invoke-direct {v3, v5, v8, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v13, v13, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v9

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_suggestion_lens"

    const/16 v17, 0x0

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1b

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x4f

    const/16 v8, 0xeb

    const/16 v9, 0x5e

    const/16 v10, 0xfd

    invoke-direct {v3, v5, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x10

    const/4 v9, 0x1

    invoke-direct {v5, v9, v13, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v9

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_suggestion_lowlight"

    const/16 v17, 0x1

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1c

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x65

    const/16 v8, 0x171

    const/16 v9, 0x77

    const/16 v10, 0x183

    invoke-direct {v3, v5, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v13, v13, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v9

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_suggestion_macro"

    const/16 v17, 0x0

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1d

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x1b

    const/16 v8, 0x187

    const/16 v9, 0x2d

    const/16 v10, 0x197

    invoke-direct {v3, v5, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x10

    invoke-direct {v5, v13, v13, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v9

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_suggestion_photo"

    const/16 v17, 0x1

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1e

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x65

    const/16 v8, 0x188

    const/16 v9, 0x198

    const/16 v10, 0x75

    invoke-direct {v3, v5, v8, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x11

    const/16 v9, 0x11

    const/4 v10, 0x1

    invoke-direct {v5, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v7, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v7

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_suggestion_portrait"

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x61

    const/16 v7, 0x12a

    const/16 v8, 0x79

    const/16 v9, 0x13c

    invoke-direct {v3, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x3

    invoke-direct {v5, v13, v7, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/graphics/Point;

    const-string v15, "ic_wifi"

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v1, v12, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
