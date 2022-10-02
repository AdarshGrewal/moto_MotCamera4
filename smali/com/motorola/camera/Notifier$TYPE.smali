.class public final enum Lcom/motorola/camera/Notifier$TYPE;
.super Ljava/lang/Enum;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/Notifier$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum AI_SCENE:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum BANNER_PROMPT_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum CONTROL_PANEL_ITEM_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum DISPLAY_FLASH_COLOR:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum ENV_CAL_STATUS:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum ENV_THERMAL_LEVEL:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum FACE_MOVE:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum GESTURE:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum GL_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum HELP_TOOLTIP_LEVELER:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum MEDIA_CONTROL:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum MOVE_CAMERA_TO_BACK:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum PIP_PREVIEW_DRAG:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum PIP_PREVIEW_DRAG_END:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum REVIEW_LAYOUT:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum SCAN_BAR_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum SECURE_LAUNCH_SETTINGS_FINISH:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum SELECTIVE_COLOR_ROI_PIXEL:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum SETTING_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum SHOW_BANNER_PROMPT:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum SHOW_PRO_MODE_SLIDER:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum SHUTTER_CLICKED:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum TIME_LAPSE_SLIER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum TUTORIAL_TOOLTIP:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum UPDATE_CAROUSEL:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum UPDATE_MENU:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum UPDATE_MODE_MENU:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum UX_DUMP:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum VIEWFINDER_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum VISIBLE_CAROUSEL:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum ZOOM_TOGGLE_TOUCH_DOWN:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum ZOOM_TOGGLE_TOUCH_UP:Lcom/motorola/camera/Notifier$TYPE;


# instance fields
.field public mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/Notifier$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 72

    .line 1
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "AI_SCENE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->AI_SCENE:Lcom/motorola/camera/Notifier$TYPE;

    .line 2
    new-instance v1, Lcom/motorola/camera/Notifier$TYPE;

    const-string v3, "APPLY_PREVIEW_DONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    .line 3
    new-instance v3, Lcom/motorola/camera/Notifier$TYPE;

    const-string v5, "AUTO_DISPLAY_FLASH_FIRE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    .line 4
    new-instance v5, Lcom/motorola/camera/Notifier$TYPE;

    const-string v7, "BANNER_PROMPT_TRIGGERED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/Notifier$TYPE;->BANNER_PROMPT_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 5
    new-instance v7, Lcom/motorola/camera/Notifier$TYPE;

    const-string v9, "CAPTURE_FAILURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 6
    new-instance v9, Lcom/motorola/camera/Notifier$TYPE;

    const-string v11, "CAPTURE_QUEUE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/Notifier$TYPE;->CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

    .line 7
    new-instance v11, Lcom/motorola/camera/Notifier$TYPE;

    const-string v13, "CONTROL_PANEL_TRIGGERED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 8
    new-instance v13, Lcom/motorola/camera/Notifier$TYPE;

    const-string v15, "CONTROL_PANEL_ITEM_TRIGGERED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_ITEM_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 9
    new-instance v15, Lcom/motorola/camera/Notifier$TYPE;

    const-string v14, "DELETE_COMPLETED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 10
    new-instance v14, Lcom/motorola/camera/Notifier$TYPE;

    const-string v12, "DISMISS_TOAST"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    .line 11
    new-instance v12, Lcom/motorola/camera/Notifier$TYPE;

    const-string v10, "DISPLAY_FLASH_COLOR"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/Notifier$TYPE;->DISPLAY_FLASH_COLOR:Lcom/motorola/camera/Notifier$TYPE;

    .line 12
    new-instance v10, Lcom/motorola/camera/Notifier$TYPE;

    const-string v8, "DUAL_CAPTURE_CAMERA_GROUP_SELECT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    .line 13
    new-instance v8, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "DUAL_CAPTURE_LAYOUT_SWITCH"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    .line 14
    new-instance v6, Lcom/motorola/camera/Notifier$TYPE;

    const-string v4, "DUAL_CAPTURE_PREVIEW_SWAP"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

    .line 15
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v2, "ENV_CAF_STATUS"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 16
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "ENV_CAL_STATUS"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->ENV_CAL_STATUS:Lcom/motorola/camera/Notifier$TYPE;

    .line 17
    new-instance v6, Lcom/motorola/camera/Notifier$TYPE;

    const-string v4, "ENV_HANDSHAKE"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 18
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v2, "ENV_IS"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 19
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "ENV_NIGHT_MODE_THLD"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 20
    new-instance v6, Lcom/motorola/camera/Notifier$TYPE;

    const-string v4, "ENV_THERMAL_LEVEL"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/Notifier$TYPE;->ENV_THERMAL_LEVEL:Lcom/motorola/camera/Notifier$TYPE;

    .line 21
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v2, "FACE_BEAUTY_SLIDER_TRIGGERED"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 22
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "FACE_MOVE"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->FACE_MOVE:Lcom/motorola/camera/Notifier$TYPE;

    .line 23
    new-instance v6, Lcom/motorola/camera/Notifier$TYPE;

    const-string v4, "FM_CAF_LOWLIGHT_UPDATE"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 24
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v4, "FM_FOCUS_PARAM_UPDATE"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 25
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "GESTURE"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    .line 26
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "GL_FRAME_RATE"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->GL_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    .line 27
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "HELP_TOOLTIP_LEVELER"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->HELP_TOOLTIP_LEVELER:Lcom/motorola/camera/Notifier$TYPE;

    .line 28
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "HIDE_TOAST"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    .line 29
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "INVALID_TYPE"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 30
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "LOCATION_SETTINGS"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 31
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "MEDIA_CONTROL"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->MEDIA_CONTROL:Lcom/motorola/camera/Notifier$TYPE;

    .line 32
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "MOVE_CAMERA_TO_BACK"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->MOVE_CAMERA_TO_BACK:Lcom/motorola/camera/Notifier$TYPE;

    .line 33
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "MULTISHOT_COUNT"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 34
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "PANO_PREVIEW"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 35
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "PANO_PROGRESS"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 36
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "PANO_SAVING_PROGRESS"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 37
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "PIP_PREVIEW_DRAG"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG:Lcom/motorola/camera/Notifier$TYPE;

    .line 38
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "PIP_PREVIEW_DRAG_END"

    move-object/from16 v39, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG_END:Lcom/motorola/camera/Notifier$TYPE;

    .line 39
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "POSTVIEW"

    move-object/from16 v40, v2

    const/16 v2, 0x26

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 40
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "POST_CAPTURE_MS_DONE"

    move-object/from16 v41, v4

    const/16 v4, 0x27

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 41
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "POST_CAPTURE_PREVIEW_FRAME"

    move-object/from16 v42, v2

    const/16 v2, 0x28

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 42
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "POST_CAPTURE_VIDEO"

    move-object/from16 v43, v4

    const/16 v4, 0x29

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 43
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "REVIEW_LAYOUT"

    move-object/from16 v44, v2

    const/16 v2, 0x2a

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->REVIEW_LAYOUT:Lcom/motorola/camera/Notifier$TYPE;

    .line 44
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "SCAN_BAR_TRIGGERED"

    move-object/from16 v45, v4

    const/16 v4, 0x2b

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->SCAN_BAR_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 45
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "SECURE_LAUNCH_SETTINGS_FINISH"

    move-object/from16 v46, v2

    const/16 v2, 0x2c

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->SECURE_LAUNCH_SETTINGS_FINISH:Lcom/motorola/camera/Notifier$TYPE;

    .line 46
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "SELECTIVE_COLOR_ROI_PIXEL"

    move-object/from16 v47, v4

    const/16 v4, 0x2d

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->SELECTIVE_COLOR_ROI_PIXEL:Lcom/motorola/camera/Notifier$TYPE;

    .line 47
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "SETTING_TUTORIAL"

    move-object/from16 v48, v2

    const/16 v2, 0x2e

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->SETTING_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

    .line 48
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "SHOW_BANNER_PROMPT"

    move-object/from16 v49, v4

    const/16 v4, 0x2f

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_BANNER_PROMPT:Lcom/motorola/camera/Notifier$TYPE;

    .line 49
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "SHOW_FILTER_COMPONENT"

    move-object/from16 v50, v2

    const/16 v2, 0x30

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    .line 50
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "SHOW_MODE_COMPONENT"

    move-object/from16 v51, v4

    const/16 v4, 0x31

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    .line 51
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "SHOW_PRO_MODE_SLIDER"

    move-object/from16 v52, v2

    const/16 v2, 0x32

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHOW_PRO_MODE_SLIDER:Lcom/motorola/camera/Notifier$TYPE;

    .line 52
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "SHOW_TOAST"

    move-object/from16 v53, v4

    const/16 v4, 0x33

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    .line 53
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "SHUTTER"

    move-object/from16 v54, v2

    const/16 v2, 0x34

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    .line 54
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "SHUTTER_CLICKED"

    move-object/from16 v55, v4

    const/16 v4, 0x35

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_CLICKED:Lcom/motorola/camera/Notifier$TYPE;

    .line 55
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "STORE_PROGRESS"

    move-object/from16 v56, v2

    const/16 v2, 0x36

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 56
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "SYSTEM_POPUP"

    move-object/from16 v57, v4

    const/16 v4, 0x37

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    .line 57
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "TIMER"

    move-object/from16 v58, v2

    const/16 v2, 0x38

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 58
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "TIME_LAPSE_SLIER_TRIGGERED"

    move-object/from16 v59, v4

    const/16 v4, 0x39

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->TIME_LAPSE_SLIER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 59
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "TUTORIAL_TOOLTIP"

    move-object/from16 v60, v2

    const/16 v2, 0x3a

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->TUTORIAL_TOOLTIP:Lcom/motorola/camera/Notifier$TYPE;

    .line 60
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "UX_DUMP"

    move-object/from16 v61, v4

    const/16 v4, 0x3b

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->UX_DUMP:Lcom/motorola/camera/Notifier$TYPE;

    .line 61
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "UPDATE_MENU"

    move-object/from16 v62, v2

    const/16 v2, 0x3c

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_MENU:Lcom/motorola/camera/Notifier$TYPE;

    .line 62
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "UPDATE_CAROUSEL"

    move-object/from16 v63, v4

    const/16 v4, 0x3d

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_CAROUSEL:Lcom/motorola/camera/Notifier$TYPE;

    .line 63
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "UPDATE_MODE_MENU"

    move-object/from16 v64, v2

    const/16 v2, 0x3e

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_MODE_MENU:Lcom/motorola/camera/Notifier$TYPE;

    .line 64
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "VIDEO_SNAP"

    move-object/from16 v65, v4

    const/16 v4, 0x3f

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 65
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "VID_CAPTURING_TIME"

    move-object/from16 v66, v2

    const/16 v2, 0x40

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    .line 66
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "VIEWFINDER_FRAME_RATE"

    move-object/from16 v67, v4

    const/16 v4, 0x41

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->VIEWFINDER_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    .line 67
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "VISIBLE_CAROUSEL"

    move-object/from16 v68, v2

    const/16 v2, 0x42

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->VISIBLE_CAROUSEL:Lcom/motorola/camera/Notifier$TYPE;

    .line 68
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "ZOOM_SLIDER_TRIGGERED"

    move-object/from16 v69, v4

    const/16 v4, 0x43

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 69
    new-instance v4, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "ZOOM_TOGGLE_TOUCH_DOWN"

    move-object/from16 v70, v2

    const/16 v2, 0x44

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_DOWN:Lcom/motorola/camera/Notifier$TYPE;

    .line 70
    new-instance v2, Lcom/motorola/camera/Notifier$TYPE;

    const-string v6, "ZOOM_TOGGLE_TOUCH_UP"

    move-object/from16 v71, v4

    const/16 v4, 0x45

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_UP:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v4, 0x46

    new-array v4, v4, [Lcom/motorola/camera/Notifier$TYPE;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v32, v4, v0

    const/16 v0, 0x1e

    aput-object v33, v4, v0

    const/16 v0, 0x1f

    aput-object v34, v4, v0

    const/16 v0, 0x20

    aput-object v35, v4, v0

    const/16 v0, 0x21

    aput-object v36, v4, v0

    const/16 v0, 0x22

    aput-object v37, v4, v0

    const/16 v0, 0x23

    aput-object v38, v4, v0

    const/16 v0, 0x24

    aput-object v39, v4, v0

    const/16 v0, 0x25

    aput-object v40, v4, v0

    const/16 v0, 0x26

    aput-object v41, v4, v0

    const/16 v0, 0x27

    aput-object v42, v4, v0

    const/16 v0, 0x28

    aput-object v43, v4, v0

    const/16 v0, 0x29

    aput-object v44, v4, v0

    const/16 v0, 0x2a

    aput-object v45, v4, v0

    const/16 v0, 0x2b

    aput-object v46, v4, v0

    const/16 v0, 0x2c

    aput-object v47, v4, v0

    const/16 v0, 0x2d

    aput-object v48, v4, v0

    const/16 v0, 0x2e

    aput-object v49, v4, v0

    const/16 v0, 0x2f

    aput-object v50, v4, v0

    const/16 v0, 0x30

    aput-object v51, v4, v0

    const/16 v0, 0x31

    aput-object v52, v4, v0

    const/16 v0, 0x32

    aput-object v53, v4, v0

    const/16 v0, 0x33

    aput-object v54, v4, v0

    const/16 v0, 0x34

    aput-object v55, v4, v0

    const/16 v0, 0x35

    aput-object v56, v4, v0

    const/16 v0, 0x36

    aput-object v57, v4, v0

    const/16 v0, 0x37

    aput-object v58, v4, v0

    const/16 v0, 0x38

    aput-object v59, v4, v0

    const/16 v0, 0x39

    aput-object v60, v4, v0

    const/16 v0, 0x3a

    aput-object v61, v4, v0

    const/16 v0, 0x3b

    aput-object v62, v4, v0

    const/16 v0, 0x3c

    aput-object v63, v4, v0

    const/16 v0, 0x3d

    aput-object v64, v4, v0

    const/16 v0, 0x3e

    aput-object v65, v4, v0

    const/16 v0, 0x3f

    aput-object v66, v4, v0

    const/16 v0, 0x40

    aput-object v67, v4, v0

    const/16 v0, 0x41

    aput-object v68, v4, v0

    const/16 v0, 0x42

    aput-object v69, v4, v0

    const/16 v0, 0x43

    aput-object v70, v4, v0

    const/16 v0, 0x44

    aput-object v71, v4, v0

    const/16 v0, 0x45

    aput-object v2, v4, v0

    .line 71
    sput-object v4, Lcom/motorola/camera/Notifier$TYPE;->$VALUES:[Lcom/motorola/camera/Notifier$TYPE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/Notifier$TYPE;->mListeners:Ljava/util/Set;

    return-void
.end method

.method public static access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/motorola/camera/Notifier$TYPE;->mListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/Notifier$Listener;

    .line 4
    invoke-interface {v1, p0, p1}, Lcom/motorola/camera/Notifier$Listener;->onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/Notifier$TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/Notifier$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/Notifier$TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->$VALUES:[Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, [Lcom/motorola/camera/Notifier$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/Notifier$TYPE;

    return-object v0
.end method
