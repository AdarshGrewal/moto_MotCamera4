.class public final Lcom/google/android/play/core/assetpacks/zzcd;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final zzD:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/assetpacks/zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzp;)V
    .locals 33

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v11, Lcom/google/android/play/core/assetpacks/zzu;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/google/android/play/core/assetpacks/zzu;-><init>(Lcom/google/android/play/core/assetpacks/zzp;)V

    new-instance v0, Landroidx/lifecycle/MethodCallsLogger;

    .line 2
    invoke-direct {v0, v11}, Landroidx/lifecycle/MethodCallsLogger;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    .line 3
    sget-object v1, Lcom/google/android/play/core/internal/zzcq;->zza:Ljava/lang/Object;

    .line 4
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_0

    move-object v12, v0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 6
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v12, v1

    .line 7
    :goto_0
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzbi;

    .line 8
    invoke-direct {v0, v11, v12}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 9
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_1

    move-object v15, v0

    goto :goto_1

    .line 10
    :cond_1
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 11
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v15, v1

    .line 12
    :goto_1
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzcp;->zza:Lcom/google/android/play/core/assetpacks/zzcq;

    .line 13
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_2

    move-object v14, v0

    goto :goto_2

    .line 14
    :cond_2
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 15
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v14, v1

    .line 16
    :goto_2
    sget-object v0, Lcom/google/android/play/core/common/zzb;->zza:Lcom/google/android/play/core/common/zzc;

    .line 17
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_3

    move-object v13, v0

    goto :goto_3

    .line 18
    :cond_3
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 19
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v13, v1

    .line 20
    :goto_3
    new-instance v0, Landroidx/viewpager2/widget/FakeDrag;

    .line 21
    invoke-direct {v0, v15, v12, v13}, Landroidx/viewpager2/widget/FakeDrag;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 22
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_4

    move-object v1, v0

    goto :goto_4

    .line 23
    :cond_4
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 24
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    .line 25
    :goto_4
    new-instance v0, Lcom/google/android/play/core/appupdate/zzg;

    const/4 v10, 0x1

    .line 26
    invoke-direct {v0, v11, v14, v1, v10}, Lcom/google/android/play/core/appupdate/zzg;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 27
    instance-of v2, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v2, :cond_5

    goto :goto_5

    .line 28
    :cond_5
    new-instance v2, Lcom/google/android/play/core/internal/zzcq;

    .line 29
    invoke-direct {v2, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v0, v2

    .line 30
    :goto_5
    new-instance v2, Lcom/google/android/play/core/appupdate/zzt;

    .line 31
    invoke-direct {v2, v11, v10}, Lcom/google/android/play/core/appupdate/zzt;-><init>(Lcom/google/android/play/core/internal/zzcs;I)V

    .line 32
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_6

    move-object/from16 v16, v2

    goto :goto_6

    .line 33
    :cond_6
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 34
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v16, v3

    .line 35
    :goto_6
    new-instance v9, Lcom/google/android/play/core/internal/zzcp;

    invoke-direct {v9}, Lcom/google/android/play/core/internal/zzcp;-><init>()V

    .line 36
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzq;->zza:Lcom/google/photos/vision/barhopper/zzd;

    .line 37
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_7

    move-object v8, v2

    goto :goto_7

    .line 38
    :cond_7
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 39
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v8, v3

    .line 40
    :goto_7
    new-instance v2, Lcom/google/android/play/core/assetpacks/zzdf;

    .line 41
    invoke-direct {v2, v15, v9, v14, v8}, Lcom/google/android/play/core/assetpacks/zzdf;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 42
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_8

    move-object/from16 v28, v2

    goto :goto_8

    .line 43
    :cond_8
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 44
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v28, v3

    .line 45
    :goto_8
    new-instance v7, Lcom/google/android/play/core/internal/zzcp;

    invoke-direct {v7}, Lcom/google/android/play/core/internal/zzcp;-><init>()V

    new-instance v6, Lcom/google/android/play/core/assetpacks/zzcg;

    const/16 v17, 0x0

    move-object v2, v6

    move-object v3, v15

    move-object v4, v9

    move-object v5, v7

    move-object v10, v6

    move-object v6, v14

    move-object/from16 v29, v12

    move-object v12, v7

    move-object v7, v1

    move-object/from16 v30, v8

    move/from16 v8, v17

    .line 46
    invoke-direct/range {v2 .. v8}, Lcom/google/android/play/core/assetpacks/zzcg;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 47
    instance-of v2, v10, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v2, :cond_9

    move-object/from16 v20, v10

    goto :goto_9

    .line 48
    :cond_9
    new-instance v2, Lcom/google/android/play/core/internal/zzcq;

    .line 49
    invoke-direct {v2, v10}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v20, v2

    .line 50
    :goto_9
    new-instance v2, Lcom/google/android/play/core/appupdate/zzc;

    const/4 v10, 0x2

    .line 51
    invoke-direct {v2, v15, v10}, Lcom/google/android/play/core/appupdate/zzc;-><init>(Lcom/google/android/play/core/internal/zzcs;I)V

    .line 52
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_a

    move-object/from16 v21, v2

    goto :goto_a

    .line 53
    :cond_a
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 54
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v21, v3

    .line 55
    :goto_a
    new-instance v2, Lcom/google/android/play/core/appupdate/zzy;

    .line 56
    invoke-direct {v2, v15}, Lcom/google/android/play/core/appupdate/zzy;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    .line 57
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_b

    move-object/from16 v22, v2

    goto :goto_b

    .line 58
    :cond_b
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 59
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v22, v3

    .line 60
    :goto_b
    new-instance v8, Lcom/google/android/play/core/assetpacks/zzdp;

    const/16 v17, 0x1

    move-object v2, v8

    move-object v3, v15

    move-object v4, v9

    move-object/from16 v5, v28

    move-object/from16 v6, v30

    move-object v7, v14

    move-object/from16 v31, v8

    move-object v8, v13

    move-object/from16 v32, v12

    move-object v12, v9

    move-object v9, v1

    move-object/from16 p1, v1

    const/4 v1, 0x1

    move/from16 v10, v17

    .line 61
    invoke-direct/range {v2 .. v10}, Lcom/google/android/play/core/assetpacks/zzdp;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    move-object/from16 v2, v31

    .line 62
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_c

    move-object/from16 v23, v2

    goto :goto_c

    .line 63
    :cond_c
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 64
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v23, v3

    .line 65
    :goto_c
    new-instance v2, Lcom/airbnb/lottie/model/MutablePair;

    .line 66
    invoke-direct {v2, v15, v12}, Lcom/airbnb/lottie/model/MutablePair;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 67
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_d

    move-object/from16 v24, v2

    goto :goto_d

    .line 68
    :cond_d
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 69
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v24, v3

    .line 70
    :goto_d
    new-instance v9, Lcom/google/android/play/core/assetpacks/zzcg;

    const/4 v8, 0x1

    move-object v2, v9

    move-object v3, v15

    move-object v4, v12

    move-object/from16 v5, v28

    move-object/from16 v6, v30

    move-object v7, v14

    .line 71
    invoke-direct/range {v2 .. v8}, Lcom/google/android/play/core/assetpacks/zzcg;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 72
    instance-of v2, v9, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v2, :cond_e

    move-object/from16 v25, v9

    goto :goto_e

    .line 73
    :cond_e
    new-instance v2, Lcom/google/android/play/core/internal/zzcq;

    .line 74
    invoke-direct {v2, v9}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v25, v2

    .line 75
    :goto_e
    new-instance v2, Lcom/google/android/play/core/appupdate/zzc;

    .line 76
    invoke-direct {v2, v12, v1}, Lcom/google/android/play/core/appupdate/zzc;-><init>(Lcom/google/android/play/core/internal/zzcs;I)V

    .line 77
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_f

    move-object v5, v2

    goto :goto_f

    .line 78
    :cond_f
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 79
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v5, v3

    .line 80
    :goto_f
    new-instance v8, Lcom/google/android/play/core/assetpacks/zzc;

    const/4 v7, 0x1

    move-object v2, v8

    move-object/from16 v3, v28

    move-object v4, v15

    move-object v6, v13

    .line 81
    invoke-direct/range {v2 .. v7}, Lcom/google/android/play/core/assetpacks/zzc;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 82
    instance-of v2, v8, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v2, :cond_10

    move-object/from16 v26, v8

    goto :goto_10

    .line 83
    :cond_10
    new-instance v2, Lcom/google/android/play/core/internal/zzcq;

    .line 84
    invoke-direct {v2, v8}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v26, v2

    .line 85
    :goto_10
    new-instance v2, Lcom/google/android/play/core/assetpacks/zzbc;

    const/16 v27, 0x1

    move-object/from16 v17, v2

    move-object/from16 v18, v28

    move-object/from16 v19, v12

    .line 86
    invoke-direct/range {v17 .. v27}, Lcom/google/android/play/core/assetpacks/zzbc;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 87
    instance-of v3, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v3, :cond_11

    move-object v3, v2

    goto :goto_11

    .line 88
    :cond_11
    new-instance v3, Lcom/google/android/play/core/internal/zzcq;

    .line 89
    invoke-direct {v3, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    .line 90
    :goto_11
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzby;->zza:Landroidx/versionedparcelable/ParcelUtils;

    .line 91
    instance-of v4, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v4, :cond_12

    move-object/from16 v20, v2

    goto :goto_12

    .line 92
    :cond_12
    new-instance v4, Lcom/google/android/play/core/internal/zzcq;

    .line 93
    invoke-direct {v4, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v20, v4

    .line 94
    :goto_12
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzw;->zza:Lcom/google/photos/vision/barhopper/zzg;

    .line 95
    instance-of v4, v2, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v4, :cond_13

    move-object v8, v2

    goto :goto_13

    .line 96
    :cond_13
    new-instance v4, Lcom/google/android/play/core/internal/zzcq;

    .line 97
    invoke-direct {v4, v2}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v8, v4

    .line 98
    :goto_13
    new-instance v10, Lcom/google/android/play/core/assetpacks/zzbc;

    const/16 v17, 0x0

    move-object v9, v0

    move-object v0, v10

    move-object/from16 v23, p1

    move v7, v1

    move-object v1, v11

    move-object/from16 v2, v28

    move-object v4, v12

    move-object v5, v14

    move-object/from16 v6, v20

    move-object/from16 v7, v30

    move-object/from16 v18, v13

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v19, v15

    move-object v15, v10

    move/from16 v10, v17

    .line 99
    invoke-direct/range {v0 .. v10}, Lcom/google/android/play/core/assetpacks/zzbc;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 100
    instance-of v0, v15, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v0, :cond_14

    move-object v10, v15

    goto :goto_14

    .line 101
    :cond_14
    new-instance v10, Lcom/google/android/play/core/internal/zzcq;

    .line 102
    invoke-direct {v10, v15}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    :goto_14
    move-object/from16 v9, v32

    .line 103
    iget-object v0, v9, Lcom/google/android/play/core/internal/zzcp;->zza:Lcom/google/android/play/core/internal/zzcs;

    if-nez v0, :cond_1d

    iput-object v10, v9, Lcom/google/android/play/core/internal/zzcp;->zza:Lcom/google/android/play/core/internal/zzcs;

    .line 104
    new-instance v10, Lcom/google/android/play/core/assetpacks/zzdp;

    const/4 v8, 0x0

    move-object v0, v10

    move-object/from16 v1, v16

    move-object v2, v9

    move-object v3, v14

    move-object v4, v11

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v23

    .line 105
    invoke-direct/range {v0 .. v8}, Lcom/google/android/play/core/assetpacks/zzdp;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 106
    instance-of v0, v10, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v0, :cond_15

    goto :goto_15

    .line 107
    :cond_15
    new-instance v0, Lcom/google/android/play/core/internal/zzcq;

    .line 108
    invoke-direct {v0, v10}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v10, v0

    .line 109
    :goto_15
    new-instance v0, Lcom/google/android/play/core/appupdate/zzg;

    const/4 v1, 0x2

    .line 110
    invoke-direct {v0, v11, v13, v10, v1}, Lcom/google/android/play/core/appupdate/zzg;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 111
    instance-of v2, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v2, :cond_16

    goto :goto_16

    .line 112
    :cond_16
    new-instance v2, Lcom/google/android/play/core/internal/zzcq;

    .line 113
    invoke-direct {v2, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v0, v2

    .line 114
    :goto_16
    iget-object v2, v12, Lcom/google/android/play/core/internal/zzcp;->zza:Lcom/google/android/play/core/internal/zzcs;

    if-nez v2, :cond_1c

    iput-object v0, v12, Lcom/google/android/play/core/internal/zzcp;->zza:Lcom/google/android/play/core/internal/zzcs;

    .line 115
    new-instance v0, Lcom/google/android/play/core/appupdate/zzt;

    .line 116
    invoke-direct {v0, v11, v1}, Lcom/google/android/play/core/appupdate/zzt;-><init>(Lcom/google/android/play/core/internal/zzcs;I)V

    .line 117
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_17

    move-object/from16 v17, v0

    goto :goto_17

    .line 118
    :cond_17
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 119
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object/from16 v17, v1

    .line 120
    :goto_17
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzm;

    move-object/from16 v1, v18

    move-object v13, v0

    move-object v2, v14

    move-object/from16 v14, v19

    move-object/from16 v3, v19

    move-object v15, v12

    move-object/from16 v16, v9

    move-object/from16 v18, v28

    move-object/from16 v19, v2

    move-object/from16 v21, v30

    move-object/from16 v22, v1

    .line 121
    invoke-direct/range {v13 .. v23}, Lcom/google/android/play/core/assetpacks/zzm;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 122
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_18

    move-object v4, v0

    goto :goto_18

    .line 123
    :cond_18
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 124
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v4, v1

    .line 125
    :goto_18
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    .line 126
    invoke-direct {v0, v4, v11}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 127
    instance-of v0, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v0, :cond_19

    goto :goto_19

    .line 128
    :cond_19
    new-instance v0, Lcom/google/android/play/core/internal/zzcq;

    .line 129
    :goto_19
    new-instance v0, Lcom/google/android/play/core/appupdate/zzi;

    const/4 v1, 0x1

    .line 130
    invoke-direct {v0, v11, v1}, Lcom/google/android/play/core/appupdate/zzi;-><init>(Lcom/google/android/play/core/internal/zzcs;I)V

    .line 131
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v1, :cond_1a

    move-object v5, v0

    goto :goto_1a

    .line 132
    :cond_1a
    new-instance v1, Lcom/google/android/play/core/internal/zzcq;

    .line 133
    invoke-direct {v1, v0}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v5, v1

    .line 134
    :goto_1a
    new-instance v6, Lcom/google/android/play/core/assetpacks/zzc;

    const/4 v7, 0x0

    move-object v0, v6

    move-object v1, v11

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v7

    .line 135
    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/zzc;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V

    .line 136
    instance-of v0, v6, Lcom/google/android/play/core/internal/zzcq;

    if-eqz v0, :cond_1b

    goto :goto_1b

    .line 137
    :cond_1b
    new-instance v0, Lcom/google/android/play/core/internal/zzcq;

    .line 138
    invoke-direct {v0, v6}, Lcom/google/android/play/core/internal/zzcq;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    move-object v6, v0

    :goto_1b
    move-object/from16 v0, p0

    .line 139
    iput-object v6, v0, Lcom/google/android/play/core/assetpacks/zzcd;->zzD:Lcom/google/android/play/core/internal/zzcs;

    return-void

    .line 140
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 141
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
