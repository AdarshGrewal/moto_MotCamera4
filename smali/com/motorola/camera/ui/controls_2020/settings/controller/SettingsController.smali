.class public final Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController;
.super Ljava/lang/Object;
.source "SettingsController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsController.kt\ncom/motorola/camera/ui/controls_2020/settings/controller/SettingsController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,225:1\n1#2:226\n37#3,2:227\n37#3,2:229\n37#3,2:235\n37#3,2:241\n1547#4:231\n1618#4,3:232\n1547#4:237\n1618#4,3:238\n764#4:243\n855#4,2:244\n*S KotlinDebug\n*F\n+ 1 SettingsController.kt\ncom/motorola/camera/ui/controls_2020/settings/controller/SettingsController\n*L\n130#1:227,2\n132#1:229,2\n185#1:235,2\n186#1:241,2\n178#1:231\n178#1:232,3\n186#1:237\n186#1:238,3\n213#1:243\n213#1:244,2\n*E\n"
.end annotation


# direct methods
.method public static final configIntSwitchComponent(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/SwitchPreferenceCompat;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/settings/CameraType;",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    goto/16 :goto_9

    :cond_0
    if-nez p4, :cond_1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p4

    const-string v0, "getCurrentCameraType()"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :cond_1
    invoke-static {p5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-boolean v0, v0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_6

    .line 4
    invoke-static {p5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    invoke-virtual {v0, p4}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-le p4, v2, :cond_5

    move p4, v2

    goto :goto_3

    :cond_5
    :goto_2
    move p4, v1

    :goto_3
    if-eqz p4, :cond_6

    move p4, v2

    goto :goto_4

    :cond_6
    move p4, v1

    .line 6
    :goto_4
    invoke-static {p5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    goto/16 :goto_5

    .line 10
    :cond_7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    goto/16 :goto_5

    .line 12
    :cond_8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 16
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SMART_COMPOSITION:Lcom/motorola/camera/AppFeatures$Feature;

    .line 17
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 18
    :cond_9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isSmudgeDetectionCapable(Z)Z

    goto/16 :goto_5

    .line 20
    :cond_a
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 21
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto :goto_5

    .line 22
    :cond_b
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 23
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto :goto_5

    .line 24
    :cond_c
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 26
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionSupported()Z

    goto :goto_5

    .line 27
    :cond_d
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    goto :goto_5

    .line 29
    :cond_e
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    goto :goto_5

    .line 31
    :cond_f
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EYEGLASSES_REFLECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 32
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEyeglassesReflectionSupported()Z

    goto :goto_5

    .line 33
    :cond_10
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 34
    sget-object v0, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable()Z

    goto :goto_5

    .line 35
    :cond_11
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 37
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosStabilizationSupported(Z)Z

    .line 38
    :cond_12
    :goto_5
    invoke-static {p5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p5

    const/4 v0, 0x0

    if-nez p5, :cond_13

    move-object v1, v0

    goto :goto_6

    .line 39
    :cond_13
    iget-object v1, p5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 40
    check-cast v1, Ljava/lang/Integer;

    :goto_6
    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 42
    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 43
    iget-object p4, p5, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 44
    iput-object p4, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz p1, :cond_14

    .line 45
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_14
    if-eqz p2, :cond_17

    if-eqz p3, :cond_17

    .line 46
    iget-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz p1, :cond_15

    .line 47
    iget-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p4

    sget-object p5, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 49
    invoke-static {p1, p4}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_7

    .line 50
    :cond_15
    iget-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p4

    sget-object p5, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 52
    invoke-static {p1, p4}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_7
    if-nez p1, :cond_16

    goto :goto_8

    .line 53
    :cond_16
    iget-object p4, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const-string p5, "context"

    .line 54
    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p5

    invoke-static {p1, p4, p5}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController;->setTint(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Z)V

    move-object v0, p1

    .line 55
    :goto_8
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 56
    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 57
    iput-object p1, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    :cond_17
    :goto_9
    return-void
.end method

.method public static final setTint(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const p2, 0x7f0603ab

    goto :goto_0

    :cond_0
    const p2, 0x7f060353

    .line 1
    :goto_0
    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 2
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method
