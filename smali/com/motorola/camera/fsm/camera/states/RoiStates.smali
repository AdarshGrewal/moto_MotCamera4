.class public Lcom/motorola/camera/fsm/camera/states/RoiStates;
.super Ljava/lang/Object;
.source "RoiStates.java"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/RoiStates$FocusLockedVideoModeGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfLockedGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$CheckAndUpdateExposureRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$StartTouchKPIRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$CheckShutterRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$UpdateAERegionsRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$UpdateAERegionsGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$ManualFocusModeGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$TapRoiToActiveGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockUnlockRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$FaceDetectionRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;,
        Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiDragGuardRunnable;
    }
.end annotation


# static fields
.field public static final ROI_DRAG_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_RESET_IN_PROCESSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_TRIGGER_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_LOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_LOCK_LOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_LOCK_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_LOCK_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_LOCK_TRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_LOCK_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_LOCK_UNLOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_RESET_IN_PROCESSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_RETRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_TAP_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_TAP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_TAP_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_TAP_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_TRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_TRIGGER_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->ROI:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x2

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->DRAG:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v5, 0x3

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v6, v7, v1

    sget-object v8, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v8, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v6, v7, v1

    sget-object v9, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UNLOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v9, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v6, v7, v1

    sget-object v10, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CANCEL:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v10, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v6, v7, v1

    sget-object v11, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SET:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v11, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v6, v7, v1

    sget-object v12, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v12, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v6, v7, v1

    sget-object v12, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TRIGGER_BY_SWITCHING_MODE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v12, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v6, v7, v1

    sget-object v13, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TRIGGER_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v13, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_TRIGGER_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v6, v7, v1

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->RESET:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_RESET_IN_PROCESSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 11
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    sget-object v14, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SINGLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v14, v7, v1

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v14, v7, v1

    aput-object v9, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v14, v7, v1

    aput-object v10, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v14, v7, v1

    aput-object v11, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v14, v7, v1

    sget-object v10, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TRIGGER_BY_REGIONS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v10, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v14, v7, v1

    sget-object v15, Lcom/motorola/camera/fsm/camera/StateKey$Key;->RETRIGGER_BY_REGIONS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v15, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_RETRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v14, v7, v1

    aput-object v12, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 18
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v14, v7, v1

    aput-object v13, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TRIGGER_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v7, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v7, v4

    aput-object v14, v7, v1

    aput-object v6, v7, v2

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_RESET_IN_PROCESSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 20
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v6, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v6, v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/StateKey$Key;->ROI_LOCK:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v7, v6, v1

    invoke-direct {v0, v6}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 21
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v6, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v6, v4

    aput-object v7, v6, v1

    sget-object v13, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SETUP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v13, v6, v2

    invoke-direct {v0, v6}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 22
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v6, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v6, v4

    aput-object v7, v6, v1

    aput-object v9, v6, v2

    invoke-direct {v0, v6}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_UNLOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 23
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v6, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v6, v4

    aput-object v7, v6, v1

    aput-object v11, v6, v2

    invoke-direct {v0, v6}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v6, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v6, v4

    aput-object v7, v6, v1

    aput-object v10, v6, v2

    invoke-direct {v0, v6}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_TRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 25
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v6, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v6, v4

    aput-object v7, v6, v1

    aput-object v12, v6, v2

    invoke-direct {v0, v6}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 26
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v5, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    aput-object v7, v5, v1

    aput-object v8, v5, v2

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_LOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/CameraTransition;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 3
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 5
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 9
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 11
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v8, 0x0

    invoke-direct {v6, v5, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 13
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    const/4 v5, 0x1

    .line 14
    invoke-static {v0, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v6

    .line 15
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 16
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 17
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 19
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 20
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 21
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 22
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    invoke-direct {v10, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 24
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 26
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v10, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 28
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 29
    invoke-static {v0, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v9

    .line 30
    iput-object v9, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 31
    new-instance v9, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v9, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 32
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 34
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 35
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 36
    iput-object v9, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 37
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 38
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    invoke-direct {v12, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 39
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v12, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 41
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 43
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 44
    invoke-static {v0, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v10

    .line 45
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 46
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 47
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 49
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 50
    iput-object v9, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 51
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    invoke-direct {v12, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 53
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 55
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 57
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 58
    invoke-static {v0, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v10

    .line 59
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 60
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 61
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 63
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 64
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 65
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 66
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    invoke-direct {v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 67
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 68
    invoke-static {v0, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v10

    .line 69
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 70
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 71
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 73
    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 74
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 75
    sget-object v12, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 76
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 77
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    invoke-direct {v14, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(I)V

    .line 78
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 79
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v14

    .line 80
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 81
    new-instance v14, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v14, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 82
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 84
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 85
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 86
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(I)V

    .line 87
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 88
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v10

    .line 89
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 90
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 91
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 93
    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 94
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 95
    sget-object v12, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 96
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 97
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    invoke-direct {v15, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 99
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v15, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 101
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v15, v14, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 103
    iput-object v15, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 104
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v14

    .line 105
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 106
    new-instance v14, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v14, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 107
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 109
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 110
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 111
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    invoke-direct {v15, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 113
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v15, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 115
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v15, v14, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 117
    iput-object v15, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 118
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v14

    .line 119
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 120
    new-instance v14, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v14, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 121
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 123
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 124
    sget-object v14, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 125
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 126
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    invoke-direct {v15, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 128
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v15, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 130
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v15, v14, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 132
    iput-object v15, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 133
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v14

    .line 134
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 135
    new-instance v14, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v14, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 136
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 138
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 139
    sget-object v14, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 140
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 141
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    invoke-direct {v15, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 143
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v15, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 145
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v15, v14, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 147
    iput-object v15, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 148
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v14

    .line 149
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 150
    new-instance v14, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v14, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 151
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 153
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 154
    sget-object v14, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 155
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 156
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    invoke-direct {v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 158
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v13, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 160
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v13, v15, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 162
    iput-object v13, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 163
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v13

    .line 164
    iput-object v13, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 165
    new-instance v13, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v13, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 166
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 168
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 169
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 170
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    invoke-direct {v15, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 172
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v15, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 174
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v15, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 176
    iput-object v15, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 177
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v13

    .line 178
    iput-object v13, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 179
    new-instance v13, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v13, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 180
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 182
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 183
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 184
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    invoke-direct {v14, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 186
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v15, 0x4

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 188
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v14, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 190
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 191
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v13

    .line 192
    iput-object v13, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 193
    new-instance v13, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v13, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 194
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 196
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 197
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 198
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    invoke-direct {v12, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 200
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v12, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 202
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 204
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 205
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v10

    .line 206
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 207
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 208
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 210
    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_SINGLE_TAP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 211
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 212
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 213
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 214
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    invoke-direct {v12, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 215
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v12, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 217
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v12, v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 219
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 220
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v4

    .line 221
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 222
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 223
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 225
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 226
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 227
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 228
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 229
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v6, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 231
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v6, v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 233
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 234
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v4

    .line 235
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 236
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 237
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 239
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 240
    iput-object v9, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 241
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 242
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 243
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 245
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v6, v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 247
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 248
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v4

    .line 249
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 250
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 251
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 253
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 254
    iput-object v9, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 255
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 256
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 257
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 259
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v6, v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 261
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 262
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v4

    .line 263
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 264
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 265
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 267
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 268
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 269
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 270
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 271
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v0

    .line 272
    iput-object v0, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 273
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 274
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 276
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_UPDATE_AE_REGIONS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 277
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 278
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/RoiStates$UpdateAERegionsGuardRunnable;

    invoke-direct {v2, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$UpdateAERegionsGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 279
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 280
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 281
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 282
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$UpdateAERegionsRunnable;

    invoke-direct {v3, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$UpdateAERegionsRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 284
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v2, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 286
    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 287
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 288
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 289
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 290
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static getRoiOverlapTransitions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/CameraTransition;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 3
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 5
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    .line 8
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 9
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 10
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 11
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 14
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 15
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    .line 18
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 19
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 21
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object p0

    return-object p0
.end method

.method public static getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "HISTORY_STATE"

    invoke-direct {v1, v2, v3, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 6
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 7
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$StartTouchKPIRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$StartTouchKPIRunnable;-><init>()V

    .line 8
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    return-object p0
.end method


# virtual methods
.method public configure(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V
    .locals 22

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 5
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 6
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 7
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;-><init>()V

    .line 10
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 11
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 12
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 13
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 14
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 15
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/IsVideoRecordingGuardRunnable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/IsVideoRecordingGuardRunnable;-><init>(Z)V

    .line 18
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 19
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v6, "CLOSE_ON_STOP"

    invoke-direct {v3, v5, v6, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 20
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 21
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 22
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getCloseAppTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 24
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSuperSlowMotionStopCaptureTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    .line 26
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 27
    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object v3

    .line 28
    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 29
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 30
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 32
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 33
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 34
    iput-object v1, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$CheckShutterRunnable;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$CheckShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 37
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$CheckAndUpdateExposureRunnable;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$CheckAndUpdateExposureRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 39
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 41
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v5, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 43
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mExitCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 44
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v3

    .line 45
    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 47
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 48
    iput-object v6, v5, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 49
    iput-object v3, v5, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 50
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;

    invoke-direct {v6, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;-><init>(Z)V

    .line 51
    iput-object v6, v5, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 52
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 53
    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 54
    iput-object v6, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 55
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 56
    iput-object v8, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 57
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 58
    iput-object v9, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 59
    new-instance v9, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v9, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 60
    iget-object v4, v5, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v4, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v4

    .line 61
    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 62
    iput-object v9, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 63
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 64
    iput-object v10, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 65
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 66
    iget-object v4, v5, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v4, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v4

    .line 67
    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_SINGLE_TAP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 68
    iput-object v10, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 69
    sget-object v11, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_RESET_IN_PROCESSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 70
    iput-object v11, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 71
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 73
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;-><init>(Z)V

    .line 75
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v12, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 77
    iput-object v13, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 78
    new-instance v12, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v12, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 79
    iget-object v4, v5, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v4, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v4

    .line 80
    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 81
    iput-object v12, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 82
    iput-boolean v14, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 83
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    invoke-direct {v13, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 84
    iput-object v13, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 85
    new-instance v13, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v13, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 86
    iget-object v4, v5, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v4, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v4

    .line 87
    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 88
    iput-object v13, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 89
    iput-boolean v14, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 90
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 91
    iput-object v15, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 92
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    invoke-direct {v15, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 93
    iput-object v15, v4, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 94
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 95
    iget-object v4, v5, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 97
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 99
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 100
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 101
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 102
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;

    invoke-direct {v5, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;-><init>(Z)V

    .line 103
    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 104
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 105
    iput-object v6, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 106
    iput-object v8, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 107
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 108
    iput-object v14, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 109
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 110
    iput-object v14, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 111
    new-instance v14, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v14, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 112
    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v5, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v5

    .line 113
    iput-object v6, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 114
    iput-object v8, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 115
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v15, 0x4

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 116
    iput-object v14, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 117
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 118
    iput-object v14, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 119
    new-instance v14, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v14, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 120
    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v5, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v5

    .line 121
    iput-object v6, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 122
    sget-object v14, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 123
    iput-object v14, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 124
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v16, v7

    const/4 v7, 0x3

    invoke-direct {v15, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 125
    iput-object v15, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 126
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 127
    iput-object v7, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 128
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 129
    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v5, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v5

    .line 130
    iput-object v6, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 131
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 132
    iput-object v7, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 133
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v17, v1

    const/4 v1, 0x1

    invoke-direct {v15, v1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 134
    iput-object v15, v5, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 135
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 136
    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v5, v1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v1

    .line 137
    iput-object v9, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 138
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 139
    iput-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 140
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 141
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v1, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v1

    .line 142
    iput-object v10, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 143
    iput-object v11, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 144
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 145
    iput-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 146
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 147
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v1, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v1

    .line 148
    iput-object v12, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    .line 149
    iput-boolean v5, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 150
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v15, 0x0

    invoke-direct {v5, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 151
    iput-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 152
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 153
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v1, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v1

    .line 154
    iput-object v13, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    .line 155
    iput-boolean v5, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 156
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 157
    iput-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 158
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    invoke-direct {v5, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 159
    iput-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 160
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 161
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 163
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 165
    iput-object v14, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 166
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 167
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v5, 0x4

    const/4 v14, 0x0

    invoke-direct {v2, v5, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(IZ)V

    .line 168
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 169
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 170
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 171
    iput-object v8, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 172
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v14, 0x3

    invoke-direct {v5, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 173
    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 174
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 175
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 176
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 177
    iput-object v11, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 178
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 179
    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 180
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 181
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 182
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    .line 183
    iput-boolean v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 184
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 185
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 186
    new-instance v14, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v14, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 187
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 188
    iput-object v13, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 189
    iput-boolean v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 190
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 191
    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 192
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v14, 0x0

    invoke-direct {v5, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 193
    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 194
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 195
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 197
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 199
    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 200
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 201
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(Z)V

    .line 202
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 203
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 204
    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 205
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 206
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiDragGuardRunnable;

    invoke-direct {v15, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiDragGuardRunnable;-><init>(I)V

    .line 207
    iput-object v15, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 208
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    invoke-direct {v15, v5, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    .line 209
    iput-object v15, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 210
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 211
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 212
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 213
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 214
    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 215
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiDragGuardRunnable;

    move-object/from16 v18, v6

    const/4 v6, 0x2

    invoke-direct {v15, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiDragGuardRunnable;-><init>(I)V

    .line 216
    iput-object v15, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 217
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 218
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 219
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 220
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_TRIGGER_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 221
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 222
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;

    move-object/from16 v19, v6

    const/4 v6, 0x1

    invoke-direct {v15, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;-><init>(Z)V

    .line 223
    iput-object v15, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 224
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 225
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 226
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 227
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 228
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 229
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 230
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 231
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v7

    .line 232
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiDragGuardRunnable;

    move-object/from16 v21, v8

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiDragGuardRunnable;-><init>(I)V

    .line 233
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 235
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;-><init>(Z)V

    .line 237
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v15, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 239
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 240
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 241
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 242
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 243
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 244
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 245
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 246
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 247
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiDragGuardRunnable;

    const/4 v15, 0x3

    invoke-direct {v8, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiDragGuardRunnable;-><init>(I)V

    .line 248
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v15, 0x4

    invoke-direct {v8, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 250
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;

    const/4 v15, 0x0

    invoke-direct {v8, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;-><init>(Z)V

    .line 252
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v15, 0x0

    invoke-direct {v8, v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 254
    iput-object v8, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 255
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 256
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 257
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 258
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 259
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 260
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 261
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiDragGuardRunnable;

    const/4 v15, 0x3

    invoke-direct {v8, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiDragGuardRunnable;-><init>(I)V

    .line 263
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v8, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 265
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v15, 0x0

    invoke-direct {v8, v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 267
    iput-object v8, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 268
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 269
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 270
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 271
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 272
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 273
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 274
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 275
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiDragGuardRunnable;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiDragGuardRunnable;-><init>(I)V

    .line 276
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 278
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 280
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 281
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 282
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 283
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 284
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 285
    iput-object v9, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 286
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 287
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 288
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 289
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 290
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 291
    iput-object v11, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 292
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 293
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 294
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 295
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 296
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    .line 297
    iput-boolean v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 298
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 299
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 300
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 301
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 302
    iput-object v13, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 303
    iput-boolean v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 304
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 305
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 306
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 307
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 308
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 309
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiOverlapTransitions()Ljava/util/List;

    move-result-object v2

    .line 311
    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 312
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 313
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 315
    iput-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 316
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 317
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 318
    iput-object v9, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    move-object/from16 v4, v21

    .line 319
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 320
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 321
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 322
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 323
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 325
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 327
    iput-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 328
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 329
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(Z)V

    .line 330
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 331
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 332
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    move-object/from16 v4, v20

    .line 333
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 334
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 335
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 336
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 337
    iput-object v11, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 338
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 339
    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 340
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 341
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 342
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    .line 343
    iput-boolean v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 344
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 345
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 346
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 347
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 348
    iput-object v13, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 349
    iput-boolean v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 350
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 351
    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 352
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 353
    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 354
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 355
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 356
    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->EXP_COMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 357
    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    .line 358
    iput-boolean v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 359
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(Z)V

    .line 360
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 361
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->EXP_COMP:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 362
    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 363
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 364
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 366
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    move-object/from16 v2, v19

    .line 368
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 369
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 370
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(IZ)V

    .line 371
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 372
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    move-object/from16 v5, v18

    .line 373
    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 374
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 375
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 376
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 377
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 378
    iput-object v11, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 379
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 380
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 381
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 382
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 383
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v6, 0x0

    .line 384
    iput-boolean v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 385
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 386
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 387
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 388
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 389
    iput-object v13, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 390
    iput-boolean v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 391
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 392
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 393
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 394
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 395
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 396
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 398
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 400
    iput-object v11, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 401
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 402
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(Z)V

    .line 403
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 404
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 405
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 406
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 407
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 408
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 409
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    .line 410
    iput-boolean v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 411
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 412
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 413
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 414
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v2, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v2

    .line 415
    iput-object v13, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 416
    iput-boolean v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 417
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 418
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 419
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 420
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 421
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 422
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiOverlapTransitions()Ljava/util/List;

    move-result-object v2

    .line 424
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 425
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 426
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    .line 427
    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->configureSingleTapRoi(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;Lcom/motorola/camera/fsm/camera/CameraState;)V

    .line 428
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 429
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 430
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 431
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 432
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 433
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mExitCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 434
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 435
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 437
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 438
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 439
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    const/4 v3, 0x1

    .line 440
    iput-boolean v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAutoTransitionState:Z

    .line 441
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 442
    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 443
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 444
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_UNLOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 445
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 446
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 447
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 448
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 450
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 452
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 453
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 454
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 455
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 456
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 457
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 458
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$FocusLockedVideoModeGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$FocusLockedVideoModeGuardRunnable;-><init>(Z)V

    .line 459
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfLockedGuardRunnable;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfLockedGuardRunnable;-><init>()V

    .line 461
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 463
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 464
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 465
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 466
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 467
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_TRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 468
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 469
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 470
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 471
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 473
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 475
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 477
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 478
    new-instance v9, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v9, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 479
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 480
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 481
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 482
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 483
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 484
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 485
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    const/4 v12, 0x2

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 487
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 489
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 491
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 492
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 493
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 494
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 495
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 496
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 497
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 498
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    const/4 v12, 0x2

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 500
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v12, 0x4

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 502
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 504
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 505
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 506
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 507
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 508
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 509
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 510
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 511
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    const/4 v12, 0x2

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 513
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v12, 0x3

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 515
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 517
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 518
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 519
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 520
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 521
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_LOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 522
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 523
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 524
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 525
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 527
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 529
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 530
    new-instance v11, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v11, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 531
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 532
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 533
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 534
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 535
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 536
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 538
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v6, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 540
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 541
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 542
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 544
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 546
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 547
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 548
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockUnlockRunnable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockUnlockRunnable;-><init>(Z)V

    .line 549
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 550
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 551
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 552
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 553
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 554
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    invoke-direct {v11, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 555
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v6, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 557
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v6, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 559
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 560
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 561
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 562
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 563
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 564
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 565
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 566
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x2

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 568
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v7, v6, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 570
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 571
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 572
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 573
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 574
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 575
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 576
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 577
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x3

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 579
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v7, v6, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 581
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 582
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 583
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 584
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 585
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 586
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 587
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 588
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x4

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 590
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v7, v6, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 592
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 593
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 594
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 595
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 596
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 597
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 598
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 599
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v12, 0x4

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 601
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v7, v6, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 603
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 604
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    .line 605
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 606
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 607
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 608
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 609
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 610
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    invoke-direct {v6, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 611
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 612
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 613
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 614
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 615
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 616
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 617
    iput-object v8, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 618
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 619
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;-><init>(Z)V

    .line 620
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 621
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 622
    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FOCUS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 623
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 624
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 625
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 626
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;-><init>(Z)V

    .line 627
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 629
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$ManualFocusModeGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$ManualFocusModeGuardRunnable;-><init>(Z)V

    .line 631
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v8, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 633
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 634
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 635
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 636
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 637
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 638
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 639
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;-><init>(Z)V

    .line 640
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 642
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$ManualFocusModeGuardRunnable;

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$ManualFocusModeGuardRunnable;-><init>(Z)V

    .line 644
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v8, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 646
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 647
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 648
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 649
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 650
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 651
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;-><init>(Z)V

    .line 652
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 653
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 654
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 656
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 658
    iput-object v9, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 659
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 660
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(Z)V

    .line 661
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 662
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 663
    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_AUTO_FOCUS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 664
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 665
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 666
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 667
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 668
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;

    invoke-direct {v12, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;-><init>(Z)V

    .line 669
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$ManualFocusModeGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$ManualFocusModeGuardRunnable;-><init>(Z)V

    .line 671
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v12, 0x2

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 673
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v7, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 675
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 676
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 677
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 678
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 679
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 680
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 681
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 682
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 683
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;-><init>(Z)V

    .line 684
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$ManualFocusModeGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$ManualFocusModeGuardRunnable;-><init>(Z)V

    .line 686
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x3

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 688
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v8, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 690
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 691
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 692
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 693
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 694
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 695
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 696
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 697
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 698
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;-><init>(Z)V

    .line 699
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$ManualFocusModeGuardRunnable;

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$ManualFocusModeGuardRunnable;-><init>(Z)V

    .line 701
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x2

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 703
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v8, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 705
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 706
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 707
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 708
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 709
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 710
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 711
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;-><init>(Z)V

    .line 712
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$ManualFocusModeGuardRunnable;

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$ManualFocusModeGuardRunnable;-><init>(Z)V

    .line 714
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x3

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 716
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v8, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 718
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 719
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 720
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 721
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 722
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 723
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 724
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;-><init>(Z)V

    .line 725
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x4

    invoke-direct {v8, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 727
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v8, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 729
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 730
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 731
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 732
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 733
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 734
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;-><init>(Z)V

    .line 735
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 736
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 737
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 738
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 739
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 740
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 741
    iput-object v9, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 742
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 743
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;-><init>(Z)V

    .line 744
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 745
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 746
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 747
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 748
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 749
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;-><init>(Z)V

    .line 750
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 752
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 754
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 755
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 756
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-static {v3, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$$ExternalSyntheticOutline0;->m(Ljava/util/Set;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    move-result-object v3

    .line 757
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 758
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 759
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 760
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$LockFocusSupportedGuardRunnable;-><init>(Z)V

    .line 761
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 763
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 765
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 766
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 767
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 769
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 770
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 771
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 772
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 773
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockUnlockRunnable;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockUnlockRunnable;-><init>(Z)V

    .line 774
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 775
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 776
    iput-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 777
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 778
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 779
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 780
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 781
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final configureSingleTapRoi(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;Lcom/motorola/camera/fsm/camera/CameraState;)V
    .locals 22

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v2, p2

    .line 4
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$CheckShutterRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$CheckShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$CheckAndUpdateExposureRunnable;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$CheckAndUpdateExposureRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v2, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 13
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mExitCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 14
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 15
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 17
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 18
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 20
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(IZ)V

    .line 21
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 22
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 23
    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 24
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 25
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 26
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 27
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 28
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 29
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 30
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 31
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 32
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 34
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 35
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 36
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 37
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 38
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 39
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 40
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 41
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 42
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 44
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 45
    sget-object v10, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_RETRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 46
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 47
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 48
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 49
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 51
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v14, v12, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 53
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 54
    new-instance v12, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v12, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 55
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 57
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 58
    sget-object v12, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 59
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 60
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v15, 0x3

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 61
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 62
    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 63
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 64
    new-instance v14, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v14, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 65
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 67
    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_SINGLE_TAP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 68
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 69
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 70
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 71
    new-instance v11, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v11, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 72
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 74
    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 75
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 76
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    invoke-direct {v15, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 77
    iput-object v15, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 78
    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 79
    iput-object v15, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 80
    new-instance v15, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v15, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 81
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 83
    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 84
    iput-object v15, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 85
    iput-boolean v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 86
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    invoke-direct {v9, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 87
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 88
    new-instance v9, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v9, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 89
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 91
    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 92
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 93
    iput-boolean v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 94
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 95
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 96
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    invoke-direct {v6, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 97
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 98
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 99
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 101
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 103
    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 104
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 105
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v6, 0x0

    invoke-direct {v3, v13, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(IZ)V

    .line 106
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 107
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 108
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 109
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 110
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v13, 0x3

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 111
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 112
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 113
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 114
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 115
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 117
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 118
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_RESET_IN_PROCESSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 119
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 120
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 121
    iput-object v13, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 122
    new-instance v13, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v13, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 123
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 125
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 126
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    const/4 v4, 0x2

    invoke-direct {v13, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 127
    iput-object v13, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 128
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 129
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 130
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 131
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 133
    iput-object v15, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    .line 134
    iput-boolean v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 135
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v4, 0x0

    invoke-direct {v13, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 136
    iput-object v13, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 137
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 138
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 140
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    .line 141
    iput-boolean v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 142
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 143
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 144
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v13, 0x0

    invoke-direct {v4, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 145
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 146
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 147
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 149
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 151
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 152
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 153
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(Z)V

    .line 154
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 155
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 156
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 157
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 158
    sget-object v13, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 159
    iput-object v13, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v16, v5

    .line 160
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;

    move-object/from16 v17, v12

    const/4 v12, 0x0

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;-><init>(Z)V

    .line 161
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 162
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 163
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 164
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 165
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 167
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 168
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TRIGGER_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 169
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 170
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v7

    .line 171
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;

    move-object/from16 v19, v13

    const/4 v13, 0x1

    invoke-direct {v7, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;-><init>(Z)V

    .line 172
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v7, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 174
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v7, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 176
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 177
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 178
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 179
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 180
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 182
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 183
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 184
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;-><init>(Z)V

    .line 186
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 188
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$TapRoiToActiveGuardRunnable;

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$TapRoiToActiveGuardRunnable;-><init>(Z)V

    .line 190
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v7, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 192
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 193
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 194
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 195
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 196
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 198
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 199
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 200
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 201
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 202
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;

    move-object/from16 v20, v5

    const/4 v5, 0x1

    invoke-direct {v13, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsRetriggerGuardRunnable;-><init>(Z)V

    .line 203
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;

    invoke-direct {v13, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiInnerGuardRunnable;-><init>(Z)V

    .line 205
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$TapRoiToActiveGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$TapRoiToActiveGuardRunnable;-><init>(Z)V

    .line 207
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 209
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 210
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 211
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 212
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 213
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 215
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 216
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 217
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 218
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 219
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 220
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 222
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 223
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    const/4 v12, 0x2

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 224
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 225
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 226
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 227
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(Z)V

    .line 229
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 231
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 232
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 233
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 235
    iput-object v15, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    .line 236
    iput-boolean v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 237
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 238
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 239
    new-instance v12, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v12, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 240
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 242
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 243
    iput-boolean v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 244
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 245
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 246
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v12, 0x0

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 247
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 248
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 249
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiOverlapTransitions()Ljava/util/List;

    move-result-object v3

    .line 251
    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 252
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 253
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 255
    iput-object v8, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 256
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 257
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(Z)V

    .line 258
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 259
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 260
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 261
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 262
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 263
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$FocusLockedVideoModeGuardRunnable;

    move-object/from16 v21, v5

    const/4 v5, 0x1

    invoke-direct {v13, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$FocusLockedVideoModeGuardRunnable;-><init>(Z)V

    .line 265
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/IsVideoRecordingGuardRunnable;

    invoke-direct {v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/IsVideoRecordingGuardRunnable;-><init>(Z)V

    .line 267
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiSetGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiSetGuardRunnable;-><init>(Z)V

    .line 269
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    const/4 v13, 0x2

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 271
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 273
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 274
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 275
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 277
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 278
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 279
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 280
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 282
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 283
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 284
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 285
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 286
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 287
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 289
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 290
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 292
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 294
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 296
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 297
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 298
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 299
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(Z)V

    .line 301
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 303
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 304
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 305
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 307
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 308
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 309
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 310
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 312
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 314
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 315
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 316
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 317
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(Z)V

    .line 319
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 321
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 322
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 323
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 325
    iput-object v15, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    .line 326
    iput-boolean v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 327
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 328
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 329
    new-instance v12, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v12, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 330
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 332
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 333
    iput-boolean v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 334
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 335
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 336
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v12, 0x0

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 337
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 338
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 339
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 341
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 343
    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 344
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 345
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-direct {v3, v10, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    .line 346
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 347
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 348
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 349
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 350
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 351
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x4

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 352
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 354
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 355
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 356
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 358
    iput-object v15, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    .line 359
    iput-boolean v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 360
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 361
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 362
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 363
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 365
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 366
    iput-boolean v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 367
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 368
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 369
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 370
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 371
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 372
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 374
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    move-object/from16 v3, v19

    .line 376
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 377
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 378
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(Z)V

    .line 379
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 380
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 381
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    move-object/from16 v5, v21

    .line 382
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 383
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 384
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$FocusLockedVideoModeGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$FocusLockedVideoModeGuardRunnable;-><init>(Z)V

    .line 385
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/IsVideoRecordingGuardRunnable;

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/IsVideoRecordingGuardRunnable;-><init>(Z)V

    .line 387
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiSetGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiSetGuardRunnable;-><init>(Z)V

    .line 389
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;

    const/4 v10, 0x2

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;-><init>(I)V

    .line 391
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 393
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 394
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 395
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 397
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 398
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 399
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 400
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 402
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 403
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 404
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 405
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 406
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 407
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 409
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    move-object/from16 v5, v18

    .line 410
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 411
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 412
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    const/4 v12, 0x2

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 413
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 415
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 417
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 418
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 419
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 420
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 421
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 423
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    move-object/from16 v8, v17

    .line 424
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 425
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 426
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    const/4 v12, 0x2

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 427
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v12, 0x3

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(I)V

    .line 429
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 431
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 432
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 433
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 434
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 435
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 437
    iput-object v15, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v8, 0x0

    .line 438
    iput-boolean v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 439
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 440
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 441
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 442
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 444
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 445
    iput-boolean v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 446
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 447
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 448
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 449
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 450
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 451
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 453
    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->EXP_COMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 454
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v8, 0x0

    .line 455
    iput-boolean v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 456
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    invoke-direct {v10, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(Z)V

    .line 457
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 458
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->EXP_COMP:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 459
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 460
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 461
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 463
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    move-object/from16 v3, v20

    .line 465
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 466
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 467
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v8, 0x4

    const/4 v10, 0x1

    invoke-direct {v3, v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(IZ)V

    .line 468
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 469
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    move-object/from16 v8, v16

    .line 470
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 471
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 472
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 473
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 475
    iput-object v14, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 476
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 477
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 478
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 479
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 480
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 482
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 483
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 484
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;

    const/4 v8, 0x2

    invoke-direct {v5, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;-><init>(I)V

    .line 485
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 486
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    .line 487
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 488
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 489
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 491
    iput-object v15, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    .line 492
    iput-boolean v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 493
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 494
    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 495
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 496
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 498
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 499
    iput-boolean v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 500
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 501
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 502
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 503
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 504
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 505
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 507
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 508
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 509
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 510
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 511
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(Z)V

    .line 512
    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 513
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 514
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 515
    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 516
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 517
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 519
    iput-object v15, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    .line 520
    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 521
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 522
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 523
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 524
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 525
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 526
    iput-object v9, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 527
    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    .line 528
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsMultiShotEventGuardRunnable;-><init>()V

    .line 529
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 530
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V

    .line 531
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 532
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 533
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 535
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->ROI:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
