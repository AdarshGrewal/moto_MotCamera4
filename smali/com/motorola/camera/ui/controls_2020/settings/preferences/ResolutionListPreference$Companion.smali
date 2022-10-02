.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Companion;
.super Ljava/lang/Object;
.source "ResolutionListPreference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static final getResolutions(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/PreviewSize$AspectRatio;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/CameraType;",
            "Lcom/motorola/camera/settings/Setting<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;",
            ">;"
        }
    .end annotation

    const-string v0, "currentRatio"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isStandardAspectRatioMode(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isHDWideScreenAspectRatioMode(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldLimitPortraitSize()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldLimitNightSize()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p1, p0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-virtual {p1, p0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/motorola/camera/settings/Setting;->getSummaryStringsForValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1, p0}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<android.util.Size?>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1, p0}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/motorola/camera/settings/Setting;->getSummaryStringsForValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 9
    :goto_0
    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsHelper;->getPersistPictureSize(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    if-ltz v4, :cond_c

    move v6, v0

    :goto_1
    add-int/lit8 v7, v6, 0x1

    .line 12
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    .line 13
    invoke-static {v8}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v8}, Lcom/motorola/camera/utility/SizeUtility;->isCliAspectRatio(Landroid/util/Size;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMpRemosaicCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 17
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->shouldHideHighResolution(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 18
    :cond_5
    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v9

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 20
    invoke-static {v8}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v10

    invoke-static {v9}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v9

    if-gt v10, v9, :cond_7

    goto :goto_2

    .line 21
    :cond_6
    invoke-static {v8}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v10

    invoke-static {v9}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v9

    if-le v10, v9, :cond_7

    goto :goto_2

    .line 22
    :cond_7
    invoke-static {v8, p2}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_2

    .line 23
    :cond_8
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_9

    goto :goto_2

    .line 24
    :cond_9
    new-instance v9, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    invoke-direct {v9, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;-><init>(Ljava/lang/String;Landroid/util/Size;)V

    .line 25
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 26
    iput-boolean v5, v9, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isSelected:Z

    .line 27
    :cond_a
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    if-le v7, v4, :cond_b

    goto :goto_3

    :cond_b
    move v6, v7

    goto :goto_1

    .line 28
    :cond_c
    :goto_3
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    .line 29
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Companion$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Companion$$ExternalSyntheticLambda0;

    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 30
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 31
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    .line 33
    invoke-static {p0}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v1

    .line 34
    iget-object v2, p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    if-nez v2, :cond_e

    move v2, v0

    goto :goto_4

    :cond_e
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    :goto_4
    iget-object v4, p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    if-nez v4, :cond_f

    move v4, v0

    goto :goto_5

    :cond_f
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    :goto_5
    mul-int/2addr v2, v4

    if-lt v1, v2, :cond_d

    .line 35
    iput-boolean v5, p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isRecommended:Z

    goto :goto_6

    .line 36
    :cond_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v5

    if-eqz p0, :cond_11

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    .line 37
    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isRecommended:Z

    :cond_11
    :goto_6
    return-object v3
.end method
