.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;
.super Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;
.source "GeneralSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeneralSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeneralSettingsFragment.kt\ncom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment\n+ 2 PreferenceGroup.kt\nandroidx/preference/PreferenceGroupKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,554:1\n56#2:555\n1#3:556\n11328#4:557\n11663#4,3:558\n764#5:561\n855#5,2:562\n1895#5,14:564\n764#5:578\n855#5,2:579\n2190#5,14:581\n*S KotlinDebug\n*F\n+ 1 GeneralSettingsFragment.kt\ncom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment\n*L\n152#1:555\n431#1:557\n431#1:558,3\n479#1:561\n479#1:562,2\n481#1:564,14\n484#1:578\n484#1:579,2\n487#1:581,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;",
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;",
        "<init>",
        "()V",
        "MotCamera4-v9.0.12.67_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final resetDialogClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f140005

    .line 1
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;-><init>(I)V

    .line 2
    new-instance v0, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SMART_COMPOSITION:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$ui$controls_2020$settings$model$DropDownCategoryModel$s$values()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    :goto_0
    const-string v6, "getCurrentCameraType()"

    if-ge v5, v3, :cond_29

    aget v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    .line 3
    invoke-static {v7}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getkey$$com$motorola$camera$ui$controls_2020$settings$model$DropDownCategoryModel(I)I

    move-result v7

    .line 4
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    if-nez v7, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$1$1;

    invoke-direct {v8, v0, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    .line 7
    iput-object v8, v7, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mListener:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;

    .line 8
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f110381

    .line 9
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    .line 10
    :cond_2
    iget-object v9, v7, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 11
    :goto_2
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 12
    iget-object v8, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 13
    iget-object v8, v8, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 14
    invoke-virtual {v8, v7}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 15
    :cond_3
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object v8

    array-length v9, v8

    move v10, v4

    :cond_4
    :goto_3
    if-ge v10, v9, :cond_19

    aget-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    .line 16
    iget v12, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    .line 17
    invoke-virtual {v0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Landroidx/preference/SwitchPreferenceCompat;

    .line 18
    iget-object v13, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    if-nez v13, :cond_5

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    :cond_5
    iget-object v14, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 21
    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    if-nez v15, :cond_6

    goto :goto_4

    .line 22
    :cond_6
    iget-boolean v15, v15, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-nez v15, :cond_7

    const/4 v15, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    move v15, v4

    :goto_5
    if-eqz v15, :cond_9

    .line 23
    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    if-nez v15, :cond_8

    goto :goto_6

    .line 24
    :cond_8
    invoke-virtual {v15, v13}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 25
    :cond_9
    :goto_6
    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    .line 26
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 27
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    move-result v13

    goto/16 :goto_8

    .line 29
    :cond_a
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    move-result v13

    goto/16 :goto_8

    .line 31
    :cond_b
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 32
    sget-object v13, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 33
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v13, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 35
    iget-object v13, v13, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v13, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    goto/16 :goto_8

    .line 36
    :cond_c
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 37
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isSmudgeDetectionCapable(Z)Z

    move-result v13

    goto/16 :goto_8

    .line 38
    :cond_d
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 39
    sget-object v13, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    goto/16 :goto_8

    .line 40
    :cond_e
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 41
    sget-object v13, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    goto/16 :goto_8

    .line 42
    :cond_f
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 43
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 44
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionSupported()Z

    move-result v13

    if-nez v13, :cond_15

    goto :goto_7

    .line 45
    :cond_10
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 46
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v13

    goto :goto_8

    .line 47
    :cond_11
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 48
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v13

    goto :goto_8

    .line 49
    :cond_12
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->EYEGLASSES_REFLECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 50
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEyeglassesReflectionSupported()Z

    move-result v13

    goto :goto_8

    .line 51
    :cond_13
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 52
    sget-object v13, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v13

    goto :goto_8

    .line 53
    :cond_14
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 54
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 55
    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosStabilizationSupported(Z)Z

    move-result v13

    if-eqz v13, :cond_15

    goto :goto_7

    :cond_15
    move v13, v4

    goto :goto_8

    :cond_16
    :goto_7
    const/4 v13, 0x1

    :goto_8
    if-eqz v13, :cond_17

    const/4 v13, 0x1

    goto :goto_9

    :cond_17
    move v13, v4

    :goto_9
    if-nez v13, :cond_4

    .line 56
    sget-object v13, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->GOOGLE_LENS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    if-ne v11, v13, :cond_18

    .line 57
    sget-object v11, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v11

    .line 58
    new-instance v13, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$checkGoogleLensPreference$1;

    invoke-direct {v13, v11, v0, v12, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$checkGoogleLensPreference$1;-><init>(Lcom/motorola/camera/utility/LensApiHelper;Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    invoke-virtual {v11, v13}, Lcom/motorola/camera/utility/LensApiHelper;->checkGoogleLensAvailability(Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;)V

    goto/16 :goto_3

    .line 59
    :cond_18
    invoke-virtual {v0, v12, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    goto/16 :goto_3

    .line 60
    :cond_19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 61
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 62
    iget-boolean v6, v6, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v6, :cond_1b

    :cond_1a
    const v6, 0x7f11037f

    .line 63
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 64
    invoke-virtual {v0, v6, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    const v6, 0x7f11037b

    .line 65
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 66
    invoke-virtual {v0, v6, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    .line 67
    :cond_1b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkSupported()Z

    move-result v6

    if-nez v6, :cond_1c

    const v6, 0x7f1103a5

    .line 68
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 69
    invoke-virtual {v0, v6, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    .line 70
    :cond_1c
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v6

    if-nez v6, :cond_1d

    const v6, 0x7f110376

    .line 71
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 72
    invoke-virtual {v0, v6, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    .line 73
    :cond_1d
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v8, 0x1

    .line 74
    invoke-static {v6, v8}, Lcom/motorola/camera/QuickLaunch;->supports(Landroid/content/Context;I)Z

    move-result v6

    const/4 v8, 0x2

    if-nez v6, :cond_1e

    .line 75
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 76
    invoke-static {v6, v8}, Lcom/motorola/camera/QuickLaunch;->supports(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_1e

    const v6, 0x7f11039e

    .line 77
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 78
    invoke-virtual {v0, v6, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    .line 79
    :cond_1e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionSupported()Z

    move-result v6

    if-nez v6, :cond_1f

    const v6, 0x7f1103b1

    .line 80
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 81
    invoke-virtual {v0, v6, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    .line 82
    :cond_1f
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 83
    iget-boolean v6, v6, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v6, :cond_20

    .line 84
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->ENGINE_PHASE_1:Ljava/lang/Byte;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isEnginePhase(Ljava/lang/Byte;)Z

    move-result v6

    if-eqz v6, :cond_21

    :cond_20
    const v6, 0x7f1103b9

    .line 85
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 86
    invoke-virtual {v0, v6, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    .line 87
    :cond_21
    sget-object v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->BUILD_CHARACTERISTICS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v6}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_23

    const-string v9, "nosdcard"

    .line 89
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_23

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 90
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 91
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v9

    .line 92
    invoke-virtual {v6, v9}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v6

    .line 93
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_a

    :cond_22
    move v6, v4

    goto :goto_b

    :cond_23
    :goto_a
    const/4 v6, 0x1

    :goto_b
    if-nez v6, :cond_25

    const v6, 0x7f1103ae

    .line 94
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 95
    invoke-virtual {v0, v6, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    const v6, 0x7f1103ac

    .line 96
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    if-nez v6, :cond_24

    goto :goto_c

    :cond_24
    const v8, 0x7f1103ab

    .line 98
    iget-object v9, v6, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    :cond_25
    :goto_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasSecondaryPhotoSize()Z

    move-result v6

    if-nez v6, :cond_26

    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnly(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-nez v6, :cond_26

    const/4 v6, 0x1

    goto :goto_d

    :cond_26
    move v6, v4

    :goto_d
    if-eqz v6, :cond_27

    const v6, 0x7f1103a1

    .line 100
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 101
    invoke-virtual {v0, v6, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    :cond_27
    if-nez v7, :cond_28

    goto/16 :goto_0

    .line 102
    :cond_28
    invoke-virtual {v7}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    const/4 v8, 0x1

    if-ge v6, v8, :cond_0

    .line 103
    iget-object v6, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 104
    iget-object v6, v6, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 105
    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_29
    const v2, 0x7f1103b0

    .line 106
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;

    const v3, 0x7f110391

    .line 107
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightDropDownCategory;

    .line 108
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v5

    if-nez v5, :cond_2a

    .line 109
    iget-object v5, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 110
    iget-object v5, v5, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 111
    invoke-virtual {v5, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 112
    iget-object v2, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 113
    iget-object v2, v2, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 114
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_10

    :cond_2a
    const v5, 0x7f11038f

    .line 115
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;

    const v7, 0x7f110392

    .line 116
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;

    if-nez v2, :cond_2b

    goto :goto_e

    .line 117
    :cond_2b
    new-instance v8, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;

    invoke-direct {v8, v5, v3, v7}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightDropDownCategory;Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;)V

    .line 118
    iput-object v8, v2, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    :goto_e
    if-nez v5, :cond_2c

    goto :goto_f

    .line 119
    :cond_2c
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;)V

    .line 120
    iput-object v3, v5, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    :goto_f
    if-nez v7, :cond_2d

    goto :goto_10

    .line 121
    :cond_2d
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;)V

    .line 122
    iput-object v3, v7, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    :goto_10
    const v2, 0x7f11037f

    .line 123
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_2e

    goto :goto_11

    .line 124
    :cond_2e
    new-instance v3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;)V

    .line 125
    iput-object v3, v2, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    :goto_11
    const v2, 0x7f11037b

    .line 126
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_2f

    goto :goto_12

    .line 127
    :cond_2f
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v3, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;-><init>(Landroidx/preference/Preference;Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;)V

    .line 128
    iput-object v3, v2, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 129
    :goto_12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v2

    const-string v3, "java.lang.String.format(format, *args)"

    if-eqz v2, :cond_34

    const v2, 0x7f1103b7

    .line 130
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_30

    goto :goto_13

    .line 131
    :cond_30
    new-instance v5, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;)V

    .line 132
    iput-object v5, v2, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    :goto_13
    const v2, 0x7f1103b8

    .line 133
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_31

    goto :goto_15

    .line 134
    :cond_31
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Supported()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 135
    iget-object v5, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v7, 0x7f110243

    .line 136
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v5, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v7, 0x7f0801a3

    .line 138
    sget-object v8, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 139
    invoke-static {v5, v7}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 140
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_14

    .line 141
    :cond_32
    iget-object v5, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v7, 0x7f110244

    .line 142
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v5, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v7, 0x7f0801a5

    .line 144
    sget-object v8, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 145
    invoke-static {v5, v7}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 146
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 147
    :goto_14
    iget-object v5, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v7, 0x7f110213

    .line 148
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "context.getString(R.stri\u2026in_setting_hdr10_summary)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    .line 149
    iget-object v9, v2, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    aput-object v9, v8, v4

    .line 150
    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    new-instance v5, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Landroidx/preference/Preference;)V

    .line 153
    iput-object v5, v2, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 154
    :goto_15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusWithVSTBSupported()Z

    move-result v2

    if-nez v2, :cond_34

    const v2, 0x7f1103b9

    .line 155
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_33

    goto :goto_16

    .line 156
    :cond_33
    new-instance v5, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Landroidx/preference/Preference;)V

    .line 157
    iput-object v5, v2, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 158
    :cond_34
    :goto_16
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 159
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 160
    check-cast v2, Lcom/motorola/camera/launch/OnLaunchAction;

    .line 161
    sget-object v5, Lcom/motorola/camera/launch/OnLaunchAction;->OPEN_LOCATION_SETTINGS:Lcom/motorola/camera/launch/OnLaunchAction;

    if-ne v2, v5, :cond_39

    const v2, 0x7f1103ac

    .line 162
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    if-nez v2, :cond_35

    goto :goto_18

    .line 163
    :cond_35
    iput-boolean v4, v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v2, v5}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->getPreferenceList(Landroidx/preference/Preference;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/preference/Preference;

    const/4 v8, 0x1

    .line 166
    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_17

    .line 167
    :cond_36
    iget-object v2, v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mListener:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;

    if-eqz v2, :cond_37

    .line 168
    invoke-interface {v2}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;->onExpandFinish()V

    :cond_37
    :goto_18
    const v2, 0x7f1103a9

    .line 169
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;

    if-nez v2, :cond_38

    goto :goto_19

    :cond_38
    const/4 v5, 0x1

    .line 170
    iput-boolean v5, v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;->shouldAnimate:Z

    .line 171
    :cond_39
    :goto_19
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    move-result-object v2

    array-length v5, v2

    move v7, v4

    :goto_1a
    const-string v8, "null cannot be cast to non-null type kotlin.Array<T>"

    const-string v9, "icon"

    const-string v10, "context"

    if-ge v4, v5, :cond_54

    aget-object v11, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 172
    iget v12, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    .line 173
    invoke-virtual {v0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Landroidx/preference/ListPreference;

    .line 174
    iget-object v13, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    if-nez v13, :cond_3a

    const/4 v13, 0x0

    goto :goto_1b

    .line 175
    :cond_3a
    invoke-interface {v13}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/settings/CameraType;

    .line 176
    :goto_1b
    iget-object v11, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 177
    check-cast v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;

    if-nez v12, :cond_3b

    goto/16 :goto_25

    :cond_3b
    if-nez v13, :cond_3c

    .line 178
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    :cond_3c
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    .line 180
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    if-nez v15, :cond_3d

    goto :goto_1c

    .line 181
    :cond_3d
    iget-boolean v15, v15, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-nez v15, :cond_3e

    const/4 v7, 0x1

    :cond_3e
    :goto_1c
    if-eqz v7, :cond_41

    .line 182
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    if-nez v7, :cond_3f

    goto :goto_1d

    .line 183
    :cond_3f
    invoke-virtual {v7, v13}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v15, 0x1

    if-le v7, v15, :cond_40

    const/4 v7, 0x1

    goto :goto_1e

    :cond_40
    :goto_1d
    const/4 v7, 0x0

    :goto_1e
    if-eqz v7, :cond_41

    const/4 v7, 0x1

    goto :goto_1f

    :cond_41
    const/4 v7, 0x0

    .line 184
    :goto_1f
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    .line 185
    invoke-static {v15}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;)Z

    move-result v15

    if-eqz v15, :cond_4d

    .line 186
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_42

    .line 187
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    goto/16 :goto_20

    .line 188
    :cond_42
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_43

    .line 189
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    goto/16 :goto_20

    .line 190
    :cond_43
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_44

    .line 191
    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 192
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v11, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 194
    iget-object v11, v11, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v11, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 195
    :cond_44
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_45

    const/4 v11, 0x0

    .line 196
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isSmudgeDetectionCapable(Z)Z

    goto/16 :goto_20

    .line 197
    :cond_45
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_46

    .line 198
    sget-object v11, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_20

    .line 199
    :cond_46
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_47

    .line 200
    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto :goto_20

    .line 201
    :cond_47
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_48

    .line 202
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v11

    if-eqz v11, :cond_4d

    .line 203
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionSupported()Z

    goto :goto_20

    .line 204
    :cond_48
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_49

    .line 205
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    goto :goto_20

    .line 206
    :cond_49
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4a

    .line 207
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    goto :goto_20

    .line 208
    :cond_4a
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->EYEGLASSES_REFLECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4b

    .line 209
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEyeglassesReflectionSupported()Z

    goto :goto_20

    .line 210
    :cond_4b
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4c

    .line 211
    sget-object v11, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable()Z

    goto :goto_20

    .line 212
    :cond_4c
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4d

    .line 213
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v11

    if-eqz v11, :cond_4d

    const/4 v11, 0x0

    .line 214
    invoke-static {v11}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosStabilizationSupported(Z)Z

    .line 215
    :cond_4d
    :goto_20
    iput-boolean v7, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    .line 216
    iget-object v7, v14, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 217
    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v11, v11, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    if-ne v7, v11, :cond_4e

    .line 218
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 219
    iget-boolean v7, v7, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-eqz v7, :cond_4e

    const/4 v7, 0x0

    .line 220
    iput-boolean v7, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    .line 221
    :cond_4e
    invoke-virtual {v14, v13}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v7

    .line 222
    invoke-virtual {v14, v13}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v14, v11}, Lcom/motorola/camera/settings/Setting;->getSummaryStringsForValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 223
    move-object v13, v7

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_52

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4f

    goto :goto_23

    :cond_4f
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    .line 224
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v11, [Ljava/lang/CharSequence;

    .line 225
    iput-object v11, v12, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 226
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    sget-object v11, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;

    invoke-interface {v7, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 227
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v11, "values.stream().map { it\u2026lect(Collectors.toList())"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/util/Collection;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    .line 228
    invoke-interface {v7, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, [Ljava/lang/CharSequence;

    .line 229
    iput-object v7, v12, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 230
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_50

    .line 231
    iget-object v7, v14, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 232
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_21

    .line 233
    :cond_50
    iget-object v7, v12, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v8, 0x7f110396

    .line 234
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 235
    :goto_21
    invoke-virtual {v12}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object v8, v12, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 237
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-boolean v9, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    if-eqz v9, :cond_51

    const v9, 0x7f0603ab

    goto :goto_22

    :cond_51
    const v9, 0x7f060353

    .line 239
    :goto_22
    sget-object v10, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 240
    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v8

    .line 241
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_25

    :cond_52
    :goto_23
    const/4 v7, 0x0

    .line 242
    iput-boolean v7, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    .line 243
    iget-object v7, v12, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v8, 0x7f110396

    .line 244
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {v12}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v8, v12, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 247
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-boolean v9, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    if-eqz v9, :cond_53

    const v9, 0x7f0603ab

    goto :goto_24

    :cond_53
    const v9, 0x7f060353

    .line 249
    :goto_24
    sget-object v10, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 250
    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v8

    .line 251
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_25
    const/4 v7, 0x0

    goto/16 :goto_1a

    .line 252
    :cond_54
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_26
    if-ge v5, v4, :cond_76

    aget-object v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    .line 253
    iget v11, v7, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->key:I

    .line 254
    invoke-virtual {v0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;

    .line 255
    iget-object v12, v7, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    .line 256
    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/settings/CameraType;

    .line 257
    iget-object v7, v7, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-nez v11, :cond_55

    move-object/from16 p1, v2

    move/from16 p2, v4

    move/from16 v16, v5

    goto/16 :goto_37

    :cond_55
    if-nez v12, :cond_56

    .line 258
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v12

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    :cond_56
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    const-string v14, "null cannot be cast to non-null type com.motorola.camera.settings.Setting<kotlin.Any>"

    invoke-static {v13, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    if-nez v14, :cond_57

    goto :goto_27

    .line 261
    :cond_57
    iget-boolean v14, v14, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-nez v14, :cond_58

    const/4 v14, 0x1

    goto :goto_28

    :cond_58
    :goto_27
    const/4 v14, 0x0

    :goto_28
    if-eqz v14, :cond_5b

    .line 262
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    if-nez v14, :cond_59

    goto :goto_29

    .line 263
    :cond_59
    invoke-virtual {v14, v12}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_5a

    const/4 v14, 0x1

    goto :goto_2a

    :cond_5a
    :goto_29
    const/4 v14, 0x0

    :goto_2a
    if-eqz v14, :cond_5b

    const/4 v14, 0x1

    goto :goto_2b

    :cond_5b
    const/4 v14, 0x0

    .line 264
    :goto_2b
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    .line 265
    invoke-static {v15}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;)Z

    move-result v15

    if-eqz v15, :cond_67

    .line 266
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5c

    .line 267
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    goto/16 :goto_2c

    .line 268
    :cond_5c
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5d

    .line 269
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    goto/16 :goto_2c

    .line 270
    :cond_5d
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5e

    .line 271
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 272
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v7, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 274
    iget-object v7, v7, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v7, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    goto/16 :goto_2c

    .line 275
    :cond_5e
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5f

    const/4 v7, 0x0

    .line 276
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isSmudgeDetectionCapable(Z)Z

    goto/16 :goto_2c

    .line 277
    :cond_5f
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_60

    .line 278
    sget-object v7, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_2c

    .line 279
    :cond_60
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_61

    .line 280
    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto :goto_2c

    .line 281
    :cond_61
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_62

    .line 282
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 283
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionSupported()Z

    goto :goto_2c

    .line 284
    :cond_62
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_63

    .line 285
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    goto :goto_2c

    .line 286
    :cond_63
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_64

    .line 287
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    goto :goto_2c

    .line 288
    :cond_64
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->EYEGLASSES_REFLECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_65

    .line 289
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEyeglassesReflectionSupported()Z

    goto :goto_2c

    .line 290
    :cond_65
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_66

    .line 291
    sget-object v7, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable()Z

    goto :goto_2c

    .line 292
    :cond_66
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 293
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v7

    if-eqz v7, :cond_67

    const/4 v7, 0x0

    .line 294
    invoke-static {v7}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosStabilizationSupported(Z)Z

    .line 295
    :cond_67
    :goto_2c
    invoke-static {v13, v12}, Lcom/motorola/camera/settings/SettingsHelper;->getPersistPictureSize(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    .line 296
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLockedAspectRatioMode()Z

    move-result v15

    if-nez v15, :cond_72

    invoke-static {v7}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v15

    if-nez v15, :cond_68

    goto/16 :goto_34

    .line 297
    :cond_68
    sget-object v15, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Companion;

    .line 298
    invoke-static {v7}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v7

    const-string v15, "getSupportedAspectRatio(loadValue)"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-static {v12, v13, v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Companion;->getResolutions(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/PreviewSize$AspectRatio;)Ljava/util/ArrayList;

    move-result-object v7

    .line 300
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v7, v13}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 301
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 302
    check-cast v15, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    move-object/from16 p1, v2

    .line 303
    iget-boolean v2, v15, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isRecommended:Z

    if-eqz v2, :cond_69

    .line 304
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    move/from16 p2, v4

    const v4, 0x7f1103a3

    .line 305
    invoke-virtual {v2, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "getInstance().getString(\u2026otos_resolutions_summary)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    move/from16 v16, v5

    new-array v5, v4, [Ljava/lang/Object;

    .line 306
    iget-object v15, v15, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->string:Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v15, v5, v17

    .line 307
    invoke-static {v5, v4, v2, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline1;->m([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    :cond_69
    move/from16 p2, v4

    move/from16 v16, v5

    .line 308
    iget-object v2, v15, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->string:Ljava/lang/String;

    .line 309
    :goto_2e
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v16

    goto :goto_2d

    :cond_6a
    move-object/from16 p1, v2

    move/from16 p2, v4

    move/from16 v16, v5

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 310
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/CharSequence;

    .line 311
    iput-object v2, v11, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v7, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 314
    check-cast v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    .line 315
    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    .line 316
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_6b
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    .line 317
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/CharSequence;

    .line 318
    iput-object v2, v11, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 319
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6c

    .line 320
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    goto :goto_31

    .line 321
    :cond_6c
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    .line 322
    iget-boolean v5, v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isSelected:Z

    if-eqz v5, :cond_6d

    goto :goto_30

    :cond_6e
    const/4 v4, 0x0

    .line 323
    :goto_30
    move-object v2, v4

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    .line 324
    :goto_31
    iput-object v7, v11, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->resolutionList:Ljava/util/ArrayList;

    if-eqz v14, :cond_6f

    .line 325
    iget-object v4, v11, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 326
    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_6f

    const/4 v4, 0x1

    goto :goto_32

    :cond_6f
    const/4 v4, 0x0

    .line 327
    :goto_32
    iput-boolean v4, v11, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    .line 328
    invoke-virtual {v11}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget-object v5, v11, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 330
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-boolean v7, v11, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    if-eqz v7, :cond_70

    const v7, 0x7f0603ab

    goto :goto_33

    :cond_70
    const v7, 0x7f060353

    .line 332
    :goto_33
    sget-object v12, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 333
    invoke-static {v5, v7}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 334
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    if-nez v2, :cond_71

    goto :goto_37

    .line 335
    :cond_71
    iget-object v4, v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    .line 336
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 337
    invoke-virtual {v11, v4, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->setValue(Ljava/lang/String;Z)V

    .line 338
    iget-object v2, v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->string:Ljava/lang/String;

    .line 339
    invoke-virtual {v11, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_37

    :cond_72
    :goto_34
    move-object/from16 p1, v2

    move/from16 p2, v4

    move/from16 v16, v5

    .line 340
    invoke-static {v7}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 341
    invoke-virtual {v13, v12}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v2

    .line 342
    invoke-virtual {v13, v12}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/motorola/camera/settings/Setting;->getSummaryStringsForValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 343
    invoke-interface {v2, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_74

    .line 344
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_74

    .line 345
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_73

    goto :goto_35

    :cond_73
    invoke-virtual {v11, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_74
    :goto_35
    const/4 v2, 0x0

    .line 346
    iput-boolean v2, v11, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    .line 347
    invoke-virtual {v11}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iget-object v4, v11, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 349
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    iget-boolean v5, v11, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    if-eqz v5, :cond_75

    const v5, 0x7f0603ab

    goto :goto_36

    :cond_75
    const v5, 0x7f060353

    .line 351
    :goto_36
    sget-object v7, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 352
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 353
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_37
    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v16

    goto/16 :goto_26

    .line 354
    :cond_76
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_38
    if-ge v4, v3, :cond_79

    aget-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 355
    iget v7, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->key:I

    .line 356
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroidx/preference/SwitchPreferenceCompat;

    .line 357
    iget-object v7, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->summary:Ljava/lang/Integer;

    if-nez v7, :cond_77

    const/4 v7, 0x0

    goto :goto_39

    .line 358
    :cond_77
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_39
    move-object v12, v7

    .line 359
    iget-object v13, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->iconCheckedId:Ljava/lang/Integer;

    .line 360
    iget-object v14, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->iconUncheckedId:Ljava/lang/Integer;

    .line 361
    iget-object v15, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    .line 362
    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->getSetting:Lkotlin/jvm/functions/Function0;

    if-nez v5, :cond_78

    const/4 v5, 0x0

    goto :goto_3a

    .line 363
    :cond_78
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_3a
    move-object/from16 v16, v5

    .line 364
    invoke-static/range {v11 .. v16}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController;->configIntSwitchComponent(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    goto :goto_38

    .line 365
    :cond_79
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :cond_7a
    :goto_3b
    if-ge v4, v3, :cond_95

    aget-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 366
    iget v7, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    .line 367
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/SwitchPreferenceCompat;

    .line 368
    iget-object v8, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->summary:Ljava/lang/Integer;

    if-nez v8, :cond_7b

    const/4 v8, 0x0

    goto :goto_3c

    .line 369
    :cond_7b
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 370
    :goto_3c
    iget-object v9, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->iconCheckedId:Ljava/lang/Integer;

    .line 371
    iget-object v11, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->iconUncheckedId:Ljava/lang/Integer;

    .line 372
    iget-object v12, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    .line 373
    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-nez v7, :cond_7c

    goto :goto_3b

    :cond_7c
    if-nez v12, :cond_7d

    .line 374
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v12

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    :cond_7d
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    if-nez v13, :cond_7e

    goto :goto_3d

    .line 376
    :cond_7e
    iget-boolean v13, v13, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-nez v13, :cond_7f

    const/4 v13, 0x1

    goto :goto_3e

    :cond_7f
    :goto_3d
    const/4 v13, 0x0

    :goto_3e
    if-eqz v13, :cond_82

    .line 377
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    if-nez v13, :cond_80

    const/4 v12, 0x1

    goto :goto_3f

    .line 378
    :cond_80
    invoke-virtual {v13, v12}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_81

    move v12, v13

    goto :goto_40

    :cond_81
    move v12, v13

    :goto_3f
    const/4 v13, 0x0

    :goto_40
    if-eqz v13, :cond_82

    goto :goto_41

    :cond_82
    const/4 v12, 0x0

    .line 379
    :goto_41
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    .line 380
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;)Z

    move-result v13

    if-eqz v13, :cond_8e

    .line 381
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_83

    .line 382
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    goto/16 :goto_42

    .line 383
    :cond_83
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_84

    .line 384
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    goto/16 :goto_42

    .line 385
    :cond_84
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_85

    .line 386
    sget-object v13, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 387
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v13, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 389
    iget-object v13, v13, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v13, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    goto/16 :goto_42

    .line 390
    :cond_85
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_86

    const/4 v13, 0x0

    .line 391
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isSmudgeDetectionCapable(Z)Z

    goto/16 :goto_43

    .line 392
    :cond_86
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_87

    .line 393
    sget-object v13, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_42

    .line 394
    :cond_87
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_88

    .line 395
    sget-object v13, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto :goto_42

    .line 396
    :cond_88
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_89

    .line 397
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v13

    if-eqz v13, :cond_8e

    .line 398
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionSupported()Z

    goto :goto_42

    .line 399
    :cond_89
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8a

    .line 400
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    goto :goto_42

    .line 401
    :cond_8a
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8b

    .line 402
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    goto :goto_42

    .line 403
    :cond_8b
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->EYEGLASSES_REFLECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8c

    .line 404
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEyeglassesReflectionSupported()Z

    goto :goto_42

    .line 405
    :cond_8c
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8d

    .line 406
    sget-object v13, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable()Z

    goto :goto_42

    .line 407
    :cond_8d
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8e

    .line 408
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v13

    if-eqz v13, :cond_8e

    const/4 v13, 0x0

    .line 409
    invoke-static {v13}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosStabilizationSupported(Z)Z

    goto :goto_43

    :cond_8e
    :goto_42
    const/4 v13, 0x0

    .line 410
    :goto_43
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 411
    invoke-virtual {v7, v12}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 412
    invoke-virtual {v7}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_8f

    .line 413
    iput-boolean v13, v7, Landroidx/preference/Preference;->mPersistent:Z

    .line 414
    :cond_8f
    iget-object v12, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v14, "setting.value"

    .line 415
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v7, v12}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 416
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 417
    check-cast v5, Ljava/lang/Boolean;

    if-nez v5, :cond_90

    goto :goto_44

    :cond_90
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    :goto_44
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 418
    iput-object v5, v7, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v8, :cond_91

    .line 419
    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_91
    if-eqz v9, :cond_7a

    if-eqz v11, :cond_7a

    .line 420
    iget-boolean v5, v7, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v5, :cond_92

    .line 421
    iget-object v5, v7, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 422
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v12, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 423
    invoke-static {v5, v8}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_45

    .line 424
    :cond_92
    iget-object v5, v7, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 425
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v12, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 426
    invoke-static {v5, v8}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_45
    if-nez v5, :cond_93

    const/4 v5, 0x0

    goto :goto_47

    .line 427
    :cond_93
    iget-object v8, v7, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 428
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_94

    const v12, 0x7f0603ab

    goto :goto_46

    :cond_94
    const v12, 0x7f060353

    .line 429
    :goto_46
    invoke-static {v8, v12}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v8

    .line 430
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 431
    :goto_47
    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 432
    new-instance v5, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda14;

    invoke-direct {v5, v7, v9, v11}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda14;-><init>(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 433
    iput-object v5, v7, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    goto/16 :goto_3b

    :cond_95
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    const v0, 0x7f1100fe

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->setHeaderTitle(I)V

    return-void
.end method

.method public final removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 2
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 3
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    if-nez p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method public final resetToDefaultValue(Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 3
    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->resetTo(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDefaultSize(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/PreviewSize$AspectRatio;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    instance-of v1, v0, Landroid/util/Size;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<android.util.Size>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/util/Size;

    .line 8
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v6, v5, p2}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(IILcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_5

    .line 11
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    move-object v3, p2

    goto/16 :goto_5

    .line 13
    :cond_4
    move-object v0, p2

    check-cast v0, Landroid/util/Size;

    .line 14
    invoke-static {v0}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v0

    .line 15
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 16
    move-object v4, v3

    check-cast v4, Landroid/util/Size;

    .line 17
    invoke-static {v4}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v4

    if-ge v0, v4, :cond_6

    move-object p2, v3

    move v0, v4

    .line 18
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 19
    :cond_7
    instance-of v0, v0, Lcom/motorola/camera/VideoFormat;

    if-eqz v0, :cond_f

    .line 20
    sget-object v0, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    invoke-static {v0}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type kotlin.collections.List<com.motorola.camera.VideoFormat>"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/motorola/camera/VideoFormat;

    .line 24
    iget-object v7, v6, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v7}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v7

    if-gt v7, v0, :cond_9

    .line 25
    iget-object v7, v6, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v6, v6, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v7, v6, p2}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(IILcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_3

    :cond_9
    move v6, v2

    :goto_3
    if-eqz v6, :cond_8

    .line 26
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 27
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 28
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    .line 29
    :cond_b
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 30
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    move-object v3, v0

    goto :goto_5

    .line 31
    :cond_c
    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/VideoFormat;

    .line 32
    iget-object v1, v1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 33
    :cond_d
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 34
    move-object v4, v3

    check-cast v4, Lcom/motorola/camera/VideoFormat;

    .line 35
    iget-object v4, v4, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_e

    move-object v0, v3

    move-object v1, v4

    .line 37
    :cond_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_4

    :cond_f
    :goto_5
    if-nez v3, :cond_10

    .line 38
    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 39
    :cond_10
    invoke-static {p1, v3}, Lcom/motorola/camera/settings/SettingsManager;->resetTo(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
