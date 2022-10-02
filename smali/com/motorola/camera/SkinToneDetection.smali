.class public final Lcom/motorola/camera/SkinToneDetection;
.super Ljava/lang/Object;
.source "SkinToneDetector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/SkinToneDetection$SkinTone;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSkinToneDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SkinToneDetector.kt\ncom/motorola/camera/SkinToneDetection\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,109:1\n12701#2,2:110\n*S KotlinDebug\n*F\n+ 1 SkinToneDetector.kt\ncom/motorola/camera/SkinToneDetection\n*L\n97#1:110,2\n*E\n"
.end annotation


# direct methods
.method public static final setupCustomScene(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 9

    sget-object v0, Lcom/motorola/camera/SkinToneDetection$SkinTone;->NONE:Lcom/motorola/camera/SkinToneDetection$SkinTone;

    const-string v1, "cameraType"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 2
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneDetectionEnabled:Z

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SKIN_TONE_DETECTOR_DEBUG_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 p0, 0x0

    .line 7
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_8

    .line 8
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p0

    .line 11
    :goto_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    move-object v2, v4

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 12
    invoke-static {}, Lcom/motorola/camera/SkinToneDetection$SkinTone;->values()[Lcom/motorola/camera/SkinToneDetection$SkinTone;

    move-result-object v5

    .line 13
    array-length v6, v5

    move v7, p0

    :goto_2
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    if-eq v8, v0, :cond_4

    .line 14
    iget v8, v8, Lcom/motorola/camera/SkinToneDetection$SkinTone;->value:I

    if-ne v8, v2, :cond_4

    move v8, v3

    goto :goto_3

    :cond_4
    move v8, p0

    :goto_3
    if-eqz v8, :cond_5

    move p0, v3

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    if-eqz p0, :cond_7

    .line 15
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 16
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_7
    return-void

    .line 17
    :cond_8
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v4, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneSkuMapping:Ljava/util/Map;

    .line 18
    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneCountryMapping:Ljava/util/Map;

    if-eqz v4, :cond_a

    .line 19
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    move v5, p0

    goto :goto_6

    :cond_a
    :goto_5
    move v5, v3

    :goto_6
    if-eqz v5, :cond_d

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    move v5, p0

    goto :goto_8

    :cond_c
    :goto_7
    move v5, v3

    :goto_8
    if-eqz v5, :cond_d

    const-string p0, "SkinToneDetection"

    const-string p1, "Skin Tone Mappings are empty!"

    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 21
    :cond_d
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    invoke-static {v5}, Lcom/motorola/camera/CountryDetector;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 23
    sget-object v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->HARDWARE_SKU:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v6}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v6

    .line 24
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->SKIN_TONE_DETECTOR_DEBUG_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 25
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 26
    check-cast v7, Ljava/lang/Boolean;

    const-string v8, "isSkinToneDetectorDebugEnabled()"

    .line 27
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 28
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->SKIN_TONE_DETECTOR_DEBUG_COUNTRY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 29
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 30
    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_f

    .line 31
    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_9

    :cond_e
    move v8, p0

    goto :goto_a

    :cond_f
    :goto_9
    move v8, v3

    :goto_a
    if-nez v8, :cond_10

    move-object v5, v7

    .line 32
    :cond_10
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->SKIN_TONE_DETECTOR_DEBUG_SKU:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 33
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 34
    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_11

    .line 35
    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    :cond_11
    move p0, v3

    :cond_12
    if-nez p0, :cond_13

    move-object v6, v7

    .line 36
    :cond_13
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/SkinToneDetection$SkinTone;

    if-ne p0, v0, :cond_14

    .line 37
    invoke-interface {v4, v6, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/SkinToneDetection$SkinTone;

    :cond_14
    if-eq p0, v0, :cond_15

    const-string/jumbo v0, "skinTone"

    .line 38
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 40
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 41
    iget p0, p0, Lcom/motorola/camera/SkinToneDetection$SkinTone;->value:I

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_15
    :goto_b
    return-void
.end method
