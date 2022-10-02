.class public final Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Companion;
.super Ljava/lang/Object;
.source "DeviceSpecificAlignment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;
    .locals 4

    const-string p0, "mcfJsonConfig"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->SOC_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {p0}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "qcom"

    .line 2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    sget-boolean p0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z

    if-eqz p0, :cond_4

    .line 4
    sget-object p0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->Companion:Lcom/motorola/camera/camerax_extensions/McfCameraXConfig$Companion;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    sget-boolean v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    const-string v1, "camerax"

    const/4 v2, -0x1

    .line 8
    invoke-virtual {v0, v1, p1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v3, "align-512"

    .line 10
    invoke-virtual {v0, v3, p1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Boolean;

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 12
    :goto_0
    sput-boolean v3, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->align512:Z

    const-string/jumbo v3, "swap-chroma"

    .line 13
    invoke-virtual {v0, v3, p1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 15
    :goto_1
    sput-boolean p1, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    .line 16
    :cond_2
    sput-boolean v1, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_3
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 18
    :cond_4
    :goto_2
    sget-boolean p0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->align512:Z

    if-eqz p0, :cond_5

    .line 19
    sget-object p0, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Qcom512:Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    goto :goto_4

    :cond_5
    sget-object p0, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Qcom64:Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    goto :goto_4

    :cond_6
    const-string p1, "mtk"

    .line 20
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p0, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Mtk:Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    goto :goto_4

    :cond_7
    if-nez p0, :cond_8

    .line 21
    sget-object p0, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->TAG:Ljava/lang/String;

    const-string p1, "Could not retrieve SoC manufacturer"

    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 23
    :cond_8
    sget-object p1, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown SoC manufacturer \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_3
    sget-object p0, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Qcom512:Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    :goto_4
    return-object p0
.end method
