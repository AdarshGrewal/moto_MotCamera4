.class public final enum Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;
.super Ljava/lang/Enum;
.source "ScreenConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenConfig.kt\ncom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,269:1\n1#2:270\n*E\n"
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig$Companion;

.field public static final enum SCREEN_CONTINUE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_FIRST_USE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_AUTO_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_AUTO_MACRO_INCH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_CUTOUT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_FIXED_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_FIXED_MACRO_INCH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_HIGH_MP_REMOSAIC:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_PHOTO_DEPTH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SELFIE_PORTRAIT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SINGLE_BOKEH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SPOT_COLOR_PHOTO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SPOT_COLOR_VIDEO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SUPER_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;


# instance fields
.field public mBackgroudRes:I

.field public mContentRes:I

.field public mDescriptionRes:I

.field public mHeaderRes:I

.field public mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

.field public mIsAnimation:Z

.field public mLeftButtonTextRes:I

.field public mRightButtonTextRes:I

.field public mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mTitleIconRes:I

.field public mTitleTextRes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 40

    .line 1
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const-string v1, "SCREEN_FIRST_USE"

    const/4 v2, 0x0

    const v3, 0x7f080252

    const v4, 0x7f1101ba

    const v5, 0x7f1101a6

    const v6, 0x7f11019e

    const v7, 0x7f11019f

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v8, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_FIRST_USE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const-string v10, "SCREEN_CONTINUE"

    const/4 v11, 0x1

    const v12, 0x7f080252

    const v13, 0x7f1101b5

    const v14, 0x7f1101a3

    const v15, 0x7f11019d

    const v16, 0x7f11019c

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_CONTINUE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 4
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SINGLE_BOKEH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "FIRST_TIME_USE_SINGLE_BOKEH_TUTORIAL"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v18, "SCREEN_MODE_SINGLE_BOKEH"

    const/16 v19, 0x2

    const v20, 0x7f0801c7

    const v21, 0x7f110361

    const v22, 0x7f08024c

    const v23, 0x7f1101b6

    const v24, 0x7f1101a9

    const v25, 0x7f1101af

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    .line 5
    invoke-direct/range {v17 .. v26}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SINGLE_BOKEH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 6
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 7
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PHOTO_DEPTH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v4, "FIRST_TIME_USE_PHOTO_DEPTH_TUTORIAL"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v27, "SCREEN_MODE_PHOTO_DEPTH"

    const/16 v28, 0x3

    const v29, 0x7f0801c7

    const v30, 0x7f110361

    const v31, 0x7f08024c

    const v32, 0x7f1101b6

    const v33, 0x7f1101a9

    const v34, 0x7f1101af

    move-object/from16 v26, v2

    move-object/from16 v35, v3

    .line 8
    invoke-direct/range {v26 .. v35}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_PHOTO_DEPTH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 9
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 10
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELFIE_PORTRAIT_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "FIRST_TIME_USE_SELFIE_PORTRAIT_TUTORIAL"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "SCREEN_MODE_SELFIE_PORTRAIT"

    const/4 v11, 0x4

    const v12, 0x7f0801c7

    const v13, 0x7f110361

    const v14, 0x7f08024d

    const v15, 0x7f1101b6

    const v16, 0x7f1101a9

    const v17, 0x7f1101af

    move-object v9, v3

    move-object/from16 v18, v4

    .line 11
    invoke-direct/range {v9 .. v18}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SELFIE_PORTRAIT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 12
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 13
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v6, "FIRST_TIME_USE_CINEMAGRAPH_TUTORIAL"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v19, "SCREEN_MODE_CINEMAGRAPH"

    const/16 v20, 0x5

    const v21, 0x7f0801bb

    const v22, 0x7f110351

    const v23, 0x7f080246

    const v24, 0x7f0802dc

    const v25, 0x7f1101b0

    const v26, 0x7f1101a2

    const v27, 0x7f1101af

    const/16 v28, 0x1

    move-object/from16 v18, v4

    move-object/from16 v29, v5

    .line 14
    invoke-direct/range {v18 .. v29}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 15
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 16
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v7, "FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "SCREEN_MODE_SPOT_COLOR_PHOTO"

    const/4 v11, 0x6

    const v12, 0x7f0801d0

    const v13, 0x7f110366

    const v14, 0x7f080250

    const v15, 0x7f1101b8

    const v16, 0x7f1101ab

    move-object v9, v5

    move-object/from16 v18, v6

    .line 17
    invoke-direct/range {v9 .. v18}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SPOT_COLOR_PHOTO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 18
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 19
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v9, "FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v19, "SCREEN_MODE_SPOT_COLOR_VIDEO"

    const/16 v20, 0x7

    const v21, 0x7f0801d0

    const v22, 0x7f110367

    const v23, 0x7f080250

    const v24, 0x7f1101b8

    const v25, 0x7f1101ac

    const v26, 0x7f1101af

    move-object/from16 v18, v6

    move-object/from16 v27, v7

    .line 20
    invoke-direct/range {v18 .. v27}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SPOT_COLOR_VIDEO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 21
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 22
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SEGMENTATION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v10, "FIRST_TIME_USE_SEGMENTATION_TUTORIAL"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v28, "SCREEN_MODE_CUTOUT"

    const/16 v29, 0x8

    const v30, 0x7f0801bc

    const v31, 0x7f110352

    const v32, 0x7f0802dd

    const v33, 0x7f1101b3

    const v34, 0x7f1101a5

    const v35, 0x7f1101af

    const/16 v36, 0x1

    move-object/from16 v27, v7

    move-object/from16 v37, v9

    .line 23
    invoke-direct/range {v27 .. v37}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v7, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_CUTOUT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 24
    new-instance v9, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 25
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_HIGH_MP_REMOSAIC_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v10, "FIRST_TIME_USE_HIGH_MP_REMOSAIC_TUTORIAL"

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "SCREEN_MODE_HIGH_MP_REMOSAIC"

    const/16 v12, 0x9

    const v13, 0x7f0801cd

    const v14, 0x7f110359

    const v16, 0x7f080251

    const v17, 0x7f110266

    const v18, 0x7f110265

    const v19, 0x7f1101af

    move-object v10, v9

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    .line 26
    invoke-direct/range {v10 .. v19}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v9, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_HIGH_MP_REMOSAIC:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 27
    new-instance v10, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 28
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MACRO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v14, "FIRST_TIME_USE_MACRO_TUTORIAL"

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v22, "SCREEN_MODE_AUTO_MACRO"

    const/16 v23, 0xa

    const v24, 0x7f0801c1

    const v25, 0x7f11035c

    const v26, 0x7f080241

    const v27, 0x7f1101b4

    const v28, 0x7f1101a0

    const v29, 0x7f1101af

    move-object/from16 v21, v10

    move-object/from16 v30, v15

    .line 29
    invoke-direct/range {v21 .. v30}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v10, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_AUTO_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 30
    new-instance v21, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 31
    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "SCREEN_MODE_AUTO_MACRO_INCH"

    const/16 v13, 0xb

    const v16, 0x7f0801c1

    const v17, 0x7f11035c

    const v18, 0x7f080241

    const v19, 0x7f1101b4

    const v20, 0x7f1101a1

    const v22, 0x7f1101af

    move-object/from16 v11, v21

    move-object/from16 v38, v14

    move/from16 v14, v16

    move-object/from16 v23, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v22

    move-object/from16 v20, v23

    .line 32
    invoke-direct/range {v11 .. v20}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v21, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_AUTO_MACRO_INCH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 33
    new-instance v22, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 34
    sget-object v11, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_USE_PAGINATED:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 35
    sget-object v35, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLOW_MOTION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v25, "SCREEN_MODE_SLOW_MOTION"

    const/16 v26, 0xc

    const v27, 0x7f0801cf

    const v28, 0x7f110365

    const v29, 0x7f08024e

    const v30, 0x7f1101b7

    const v31, 0x7f1101aa

    const v32, 0x7f1101bb

    move-object/from16 v24, v22

    move-object/from16 v33, v11

    move-object/from16 v34, v35

    .line 36
    invoke-direct/range {v24 .. v34}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v22, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 37
    new-instance v36, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const-string v25, "SCREEN_MODE_SUPER_SLOW_MOTION"

    const/16 v26, 0xd

    const v29, 0x7f08024f

    const v30, 0x7f1101b9

    const v31, 0x7f1101ad

    const v32, 0x7f11019b

    const v33, 0x7f1101af

    move-object/from16 v24, v36

    move-object/from16 v34, v11

    invoke-direct/range {v24 .. v35}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v36, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SUPER_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 38
    new-instance v24, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v15, v23

    move-object/from16 v14, v38

    .line 39
    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "SCREEN_MODE_FIXED_MACRO_INCH"

    const/16 v13, 0xe

    const v16, 0x7f0801c1

    const v17, 0x7f11035c

    const v18, 0x7f080241

    const v19, 0x7f1101b4

    const v20, 0x7f1101a8

    const v23, 0x7f1101af

    move-object/from16 v11, v24

    move-object/from16 v39, v14

    move/from16 v14, v16

    move-object/from16 v25, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v23

    move-object/from16 v20, v25

    .line 40
    invoke-direct/range {v11 .. v20}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v24, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_FIXED_MACRO_INCH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 41
    new-instance v23, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v15, v25

    move-object/from16 v11, v39

    .line 42
    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "SCREEN_MODE_FIXED_MACRO"

    const/16 v13, 0xf

    const v14, 0x7f0801c1

    const v16, 0x7f11035c

    const v17, 0x7f080241

    const v18, 0x7f1101b4

    const v19, 0x7f1101a7

    const v20, 0x7f1101af

    move-object/from16 v11, v23

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v25

    .line 43
    invoke-direct/range {v11 .. v20}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v23, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_FIXED_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const/16 v11, 0x10

    new-array v11, v11, [Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v8, 0x1

    aput-object v0, v11, v8

    const/4 v0, 0x2

    aput-object v1, v11, v0

    const/4 v0, 0x3

    aput-object v2, v11, v0

    const/4 v0, 0x4

    aput-object v3, v11, v0

    const/4 v0, 0x5

    aput-object v4, v11, v0

    const/4 v0, 0x6

    aput-object v5, v11, v0

    const/4 v0, 0x7

    aput-object v6, v11, v0

    const/16 v0, 0x8

    aput-object v7, v11, v0

    const/16 v0, 0x9

    aput-object v9, v11, v0

    const/16 v0, 0xa

    aput-object v10, v11, v0

    const/16 v0, 0xb

    aput-object v21, v11, v0

    const/16 v0, 0xc

    aput-object v22, v11, v0

    const/16 v0, 0xd

    aput-object v36, v11, v0

    const/16 v0, 0xe

    aput-object v24, v11, v0

    const/16 v0, 0xf

    aput-object v23, v11, v0

    sput-object v11, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->Companion:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    .line 1
    sget-object v10, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_USE:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 2
    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIII",
            "Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    .line 46
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    .line 47
    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    .line 48
    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    .line 49
    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    .line 51
    iput p8, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mLeftButtonTextRes:I

    .line 52
    iput p9, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    .line 53
    iput-object p10, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 54
    iput-object p11, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIZ",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    .line 25
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    .line 26
    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mBackgroudRes:I

    .line 27
    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    .line 28
    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    .line 29
    iput p8, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    .line 30
    iput-boolean p10, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    .line 31
    iput p9, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    .line 32
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_MODE:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 33
    iput-object p11, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    .line 5
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    .line 6
    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    .line 7
    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    .line 8
    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    .line 10
    iput p8, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    .line 11
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_MODE:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 12
    iput-object p9, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    .line 36
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    .line 37
    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    .line 38
    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    .line 39
    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    .line 41
    iput p8, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    .line 42
    iput-object p9, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 43
    iput-object p10, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIZ",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    .line 15
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    .line 16
    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    .line 17
    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    .line 18
    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    .line 19
    iput-boolean p9, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    .line 20
    iput p8, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    .line 21
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_MODE:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 22
    iput-object p10, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    return-object v0
.end method
