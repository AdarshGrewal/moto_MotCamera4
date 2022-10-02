.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$settingTutorialChangeListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TutorialComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$settingTutorialChangeListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$settingTutorialChangeListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isModeTutorialShown:Z

    .line 5
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->Companion:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig$Companion;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-eq v0, v1, :cond_5

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    .line 6
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto/16 :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SPOT_COLOR_VIDEO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    .line 8
    :cond_1
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMainCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SINGLE_BOKEH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    .line 11
    :cond_3
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SELFIE_PORTRAIT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    .line 12
    :cond_4
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SPOT_COLOR_PHOTO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    .line 13
    :cond_5
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_HIGH_MP_REMOSAIC:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    .line 14
    :cond_6
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_CUTOUT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    .line 15
    :cond_7
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_PHOTO_DEPTH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 16
    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionSupported()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 17
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    aput-object v4, v3, v2

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SUPER_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    aput-object v4, v3, v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 18
    :cond_9
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_0

    .line 19
    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFixedMacroMode()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_FIXED_MACRO_INCH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 23
    :cond_b
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_FIXED_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 24
    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 25
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_AUTO_MACRO_INCH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 26
    :cond_d
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_AUTO_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 27
    :cond_e
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 28
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 29
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 30
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->totalScreens:I

    .line 31
    new-instance v2, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 32
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 33
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v2, "TUTORIAL_OPENED_MODE_LIST"

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/FormatHolder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 36
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    .line 37
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/FormatHolder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-virtual {v1, v2, p0}, Lcom/google/android/exoplayer2/FormatHolder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :cond_10
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/exoplayer2/FormatHolder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
