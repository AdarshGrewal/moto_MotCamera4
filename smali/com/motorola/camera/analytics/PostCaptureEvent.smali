.class public abstract Lcom/motorola/camera/analytics/PostCaptureEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "PostCaptureEvent.java"


# static fields
.field public static final BEAUTY:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAPTURETRIGGER:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPOSITION_CAPTURE_STATUS:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DUAL_SCREEN_ENABLED:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACING:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_SELECTED:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOCMODE:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOCUS_DISTANCE:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final GESTURE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_TUNING_APK_VERSION:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROMODE:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOLUTION:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMILE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final WATERMARK:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final WB_VALUES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "CAPTURETRIGGER"

    const-string v2, "SHTRBTN"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->CAPTURETRIGGER:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 2
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "PROMD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->PROMODE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 3
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "BEAUTY"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->BEAUTY:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 4
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "SENSOR"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->SENSOR:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 5
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "RESOLN"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->RESOLUTION:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 6
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "FACING"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FACING:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 7
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "FOCMODE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FOCMODE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 8
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "COMPOCAP"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->COMPOSITION_CAPTURE_STATUS:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 9
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "GESTUCAP"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->GESTURE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 10
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "SMILECAP"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->SMILE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 11
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "WATERMARK"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->WATERMARK:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 12
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "DSENABLED"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->DUAL_SCREEN_ENABLED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 13
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

    const-string v1, "FOCDIST"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FOCUS_DISTANCE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 14
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "IMGTUVER"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->IMAGE_TUNING_APK_VERSION:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 15
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "FILTER"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FILTER_SELECTED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->WB_VALUES:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v3, "AUTO"

    .line 17
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x6

    const-string v3, "CLDY"

    .line 18
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x5

    const-string v3, "DYLT"

    .line 19
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    const-string v3, "FLRS"

    .line 20
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x2

    const-string v4, "INCD"

    .line 21
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 23
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, -0x1

    .line 25
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/analytics/LogEvent;-><init>()V

    return-void
.end method

.method public static getExposureCompensation(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/Double;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getExposureCompensation(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static getExposureCompensation(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Rational;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double p0, p0

    mul-double/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p0, 0x2

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 4
    invoke-virtual {v0, p0, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addData(Lcom/google/android/exoplayer2/FormatHolder;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;

    .line 2
    iget-object v0, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    const-string v2, "USECASE"

    .line 4
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/FormatHolder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "GTAG"

    .line 7
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getFlashMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FLASHMODE"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getZoomValue(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I

    move-result v2

    const-string v3, "ZOOM"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v3, "FOCUS_TIME"

    const-wide/16 v4, 0x0

    .line 11
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v6, "FOCTIME"

    .line 12
    invoke-virtual {p2, v6, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 13
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 14
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 15
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ext"

    goto :goto_0

    :cond_0
    const-string v2, "int"

    :goto_0
    const-string v6, "STRG"

    .line 16
    invoke-virtual {p2, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    if-eqz v2, :cond_2

    const/16 v6, 0xb4

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "PORT"

    goto :goto_2

    :cond_2
    :goto_1
    const-string v2, "LAND"

    :goto_2
    const-string v6, "ORNT"

    .line 18
    invoke-virtual {p2, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const/4 v6, 0x0

    const-string v7, "ANALYTICS_IS_CAF"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    .line 20
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "FOCUS_SUCCESS"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v7

    const-string v8, "FOCFAIL"

    .line 21
    invoke-virtual {p2, v8, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v8, "CAFFAIL"

    .line 22
    invoke-virtual {p2, v8, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "SHUTTER_CB_TIME"

    .line 24
    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v2, "ZSLTIME"

    .line 25
    invoke-virtual {p2, v2, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 26
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 27
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v8, "SHTRTONE"

    .line 28
    invoke-virtual {p2, v8, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getCaptureTrigger(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "VOL"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v8, "VOLKEYUSED"

    .line 30
    invoke-virtual {p2, v8, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "FACES_DETECTED"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "NUMFACEDET"

    invoke-virtual {p2, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 33
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 34
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v3, [Ljava/lang/Object;

    iget v10, v2, Landroid/text/format/Time;->hour:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    iget v2, v2, Landroid/text/format/Time;->minute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v7

    const-string v2, "%02d%02d"

    invoke-static {v8, v2, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "TIMEOFPIC"

    .line 35
    invoke-virtual {p2, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "TOUCH_LOCATION"

    .line 37
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    const-string v8, ","

    if-nez v2, :cond_4

    const-string v2, "0,0"

    goto :goto_3

    .line 38
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string v9, "TAPLOCATION"

    .line 39
    invoke-virtual {p2, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getHdrMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "HDRMODE"

    invoke-virtual {p2, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 42
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    const-string/jumbo v9, "x"

    .line 43
    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 44
    array-length v9, v2

    if-ne v9, v3, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v2, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v6

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_6
    :goto_4
    const-string v2, "NF"

    :goto_5
    const-string v9, "TAPDIMENSION"

    .line 45
    invoke-virtual {p2, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SERVICEMODE"

    .line 46
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/FormatHolder;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {p2, v2, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    instance-of v2, p3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-nez v2, :cond_7

    goto :goto_6

    .line 48
    :cond_7
    iget-object v2, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 49
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    .line 50
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 51
    iget-object v2, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 52
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "ROI_TOUCH_RECT"

    .line 53
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v2, :cond_8

    .line 54
    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 55
    iget v11, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v2

    int-to-float v2, v11

    div-float/2addr v2, v10

    .line 56
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_8
    :goto_6
    const-string v2, "0.0,0.0"

    :goto_7
    const-string v9, "ROILOC"

    .line 57
    invoke-virtual {p2, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    int-to-long v9, v2

    const-string v2, "SHOTSEQID"

    invoke-virtual {p2, v2, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 59
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "FOCUS_AREAS_SUPPORTED"

    .line 60
    invoke-virtual {v2, v9, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v9, "AUTOFOCAREASPRT"

    .line 61
    invoke-virtual {p2, v9, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "CAF_SUPPORTED"

    invoke-virtual {v2, v9, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v9, "CAFSPRT"

    invoke-virtual {p2, v9, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    iget-object v2, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget v9, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    .line 64
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    .line 65
    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v9, v2, v10}, Lcom/motorola/camera/analytics/LogEvent;->getCaptureMode(ILcom/motorola/camera/ShotType;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "MODE"

    .line 66
    invoke-virtual {p2, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "SAVE_TIME"

    invoke-virtual {v2, v9, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v2, "SVTIME"

    invoke-virtual {p2, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 68
    iget-object v2, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 69
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    .line 70
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->CAPTURETRIGGER:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getCaptureTrigger(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v4

    check-cast v2, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 71
    invoke-virtual {v2, p2, v4}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 72
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->PROMODE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 73
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 74
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v2, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 75
    invoke-virtual {v2, p2, v4}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 76
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v2, -0x1

    goto :goto_8

    .line 78
    :cond_9
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 79
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_8

    :cond_a
    move v2, v6

    .line 81
    :goto_8
    sget-object v4, Lcom/motorola/camera/analytics/PostCaptureEvent;->BEAUTY:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v4, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 82
    invoke-virtual {v4, p2, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 83
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->FOCMODE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getFocusMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v2, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 84
    invoke-virtual {v2, p2, v4}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 85
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->RESOLUTION:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getCapturedResolution(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v4

    check-cast v2, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 86
    invoke-virtual {v2, p2, v4}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 87
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->SENSOR:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 88
    iget-object v4, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 89
    sget-object v5, Lcom/motorola/camera/analytics/PostCaptureEvent$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v7, :cond_b

    goto :goto_9

    .line 90
    :cond_b
    move-object v4, p3

    check-cast v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 91
    iget-object v4, v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz v4, :cond_c

    .line 92
    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_SENSOR_NAME:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, " "

    const-string v9, ""

    .line 94
    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 96
    array-length v5, v4

    if-le v5, v7, :cond_c

    .line 97
    aget-object v4, v4, v7

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_c
    :goto_9
    const-string v4, "UNKNOWN"

    .line 98
    :goto_a
    check-cast v2, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 99
    invoke-virtual {v2, p2, v4}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 100
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->FACING:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    iget v4, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    const-string v8, "IS_CLI_DISPLAY"

    .line 101
    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/FormatHolder;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 102
    invoke-static {v4, v5, v9}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(ILjava/lang/String;Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v2, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 103
    invoke-virtual {v2, p2, v4}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 104
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->COMPOSITION_CAPTURE_STATUS:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 105
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 106
    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "ANALYTICS_COMPOSITION_TRIGGERED"

    invoke-virtual {v5, v9, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_b

    :cond_d
    if-eqz v4, :cond_e

    move v3, v7

    goto :goto_b

    :cond_e
    move v3, v6

    .line 107
    :goto_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 108
    invoke-virtual {v2, p2, v3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 109
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->GESTURE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 110
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 111
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    check-cast v2, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 112
    invoke-virtual {v2, p2, v3}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    .line 113
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->SMILE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 114
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    check-cast v2, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 116
    invoke-virtual {v2, p2, v3}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    .line 117
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->WATERMARK:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 118
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 119
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    check-cast v2, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 120
    invoke-virtual {v2, p2, v3}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    .line 121
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 122
    iget-object v3, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    .line 123
    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/FormatHolder;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 124
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_d

    .line 125
    :cond_f
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_10

    move v4, v6

    goto :goto_c

    .line 126
    :cond_10
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_c
    if-lez v4, :cond_11

    .line 127
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAllowed(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v6, v7

    .line 128
    :cond_11
    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenReviewAllowed(Lcom/motorola/camera/settings/CameraType;I)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 129
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12

    or-int/lit8 v6, v6, 0x2

    .line 130
    :cond_12
    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationAllowed(Lcom/motorola/camera/settings/CameraType;I)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 131
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    or-int/lit8 v6, v6, 0x4

    .line 132
    :cond_13
    sget-object v1, Lcom/motorola/camera/analytics/PostCaptureEvent;->DUAL_SCREEN_ENABLED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 133
    invoke-virtual {v1, p2, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 134
    :goto_d
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v2, "ANALYTICS_LENS_FOCUS_DISTANCE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 135
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 136
    sget-object v3, Lcom/motorola/camera/analytics/PostCaptureEvent;->FOCUS_DISTANCE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    check-cast v3, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

    .line 137
    invoke-virtual {v3, p2, v1}, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;->record(Landroid/os/Bundle;Ljava/lang/Double;)V

    .line 138
    :cond_14
    sget-object v1, Lcom/motorola/camera/analytics/PostCaptureEvent;->IMAGE_TUNING_APK_VERSION:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object v2

    .line 139
    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/shared/PackageUtility;->getImagerTuningName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/motorola/camera/shared/PackageUtility;->getLongVersionForPackage(Ljava/lang/String;Z)Ljava/lang/Long;

    move-result-object v2

    .line 140
    check-cast v1, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 141
    invoke-virtual {v1, p2, v2}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    .line 142
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 143
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 145
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 146
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    sget-object v1, Lcom/motorola/camera/utility/FilterMeisheUtil;->TAG:Ljava/lang/String;

    const-string v1, "nameFilter"

    .line 148
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v1, Lcom/motorola/camera/utility/FilterMeisheUtil;->filterMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 150
    sget-object v1, Lcom/motorola/camera/analytics/PostCaptureEvent;->FILTER_SELECTED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v1, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 151
    invoke-virtual {v1, p2, v0}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 152
    :cond_15
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/analytics/PostCaptureEvent;->postProcessData(Lcom/google/android/exoplayer2/FormatHolder;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    return-void
.end method

.method public final getCaptureTrigger(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/camera/analytics/UnexpectedAnalyticDataException;
        }
    .end annotation

    .line 1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string p1, "CAPTURE_TRIGGER"

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/analytics/PostCaptureEvent$1;->$SwitchMap$com$motorola$camera$fsm$camera$Trigger$TriggerType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string p0, "TOUCH"

    return-object p0

    :pswitch_1
    const-string p1, "CAPTURE_AUTO_CAPTURE_TYPE"

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "SHTRBTN"

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const-string p0, "AUTO"

    return-object p0

    :cond_2
    const-string p0, "GESTURE"

    return-object p0

    :cond_3
    const-string p0, "SMILE"

    return-object p0

    :pswitch_2
    const-string p0, "AOV"

    return-object p0

    :pswitch_3
    const-string p1, "KEY_CODE"

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x1b

    if-eq p0, p1, :cond_7

    const/16 p1, 0x42

    if-eq p0, p1, :cond_6

    const/16 p1, 0x55

    if-eq p0, p1, :cond_5

    const/16 p1, 0x4f

    if-eq p0, p1, :cond_4

    const/16 p1, 0x50

    if-eq p0, p1, :cond_7

    packed-switch p0, :pswitch_data_1

    return-object v0

    :pswitch_4
    const-string p0, "VOL"

    return-object p0

    :cond_4
    const-string p0, "HDSET"

    return-object p0

    :cond_5
    const-string p0, "MEDPLPS"

    return-object p0

    :cond_6
    :pswitch_5
    const-string p0, "KPAD"

    return-object p0

    :cond_7
    const-string p0, "CAMKEY"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getCapturedResolution(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEventType$enumunboxing$()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "5.5"

    return-object p0
.end method

.method public getFlashMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "torch"

    goto :goto_0

    :cond_1
    const-string p0, "auto"

    goto :goto_0

    :cond_2
    const-string p0, "on"

    goto :goto_0

    :cond_3
    const-string p0, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object p0, p0, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    const-string p1, "Could not get flashMode from settings"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "NS"

    :goto_0
    return-object p0
.end method

.method public getFocusMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I
    .locals 1

    .line 1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getHdrMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public getSessionSeqId(Lcom/google/android/exoplayer2/FormatHolder;Ljava/lang/Object;)J
    .locals 0

    .line 1
    check-cast p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;

    .line 2
    iget-object p0, p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string p1, "ANALYTICS_SEQID"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getZoomValue(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    .line 2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public abstract postProcessData(Lcom/google/android/exoplayer2/FormatHolder;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
.end method
