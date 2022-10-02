.class public final Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;
.super Ljava/lang/Object;
.source "ControlPanelHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlPanelHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlPanelHelper.kt\ncom/motorola/camera/ui/controls_2020/ControlPanelHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n817#2:106\n845#2,2:107\n764#2:109\n855#2,2:110\n1547#2:112\n1618#2,3:113\n*S KotlinDebug\n*F\n+ 1 ControlPanelHelper.kt\ncom/motorola/camera/ui/controls_2020/ControlPanelHelper\n*L\n53#1:106\n53#1:107,2\n54#1:109\n54#1:110,2\n55#1:112\n55#1:113,3\n*E\n"
.end annotation


# static fields
.field public static final CONTROL_BAR_SETTINGS_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;

.field public static final PANEL_SETTINGS_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 1
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 4
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 5
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 6
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 7
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    .line 8
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    .line 9
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v9, 0x8

    aput-object v1, v0, v9

    .line 10
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v9, 0x9

    aput-object v1, v0, v9

    .line 11
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v9, 0xa

    aput-object v1, v0, v9

    .line 12
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v9, 0xb

    aput-object v1, v0, v9

    .line 13
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v9, 0xc

    aput-object v1, v0, v9

    .line 14
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v9, 0xd

    aput-object v1, v0, v9

    .line 15
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v9, 0xe

    aput-object v1, v0, v9

    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->CONTROL_BAR_SETTINGS_KEYS:Ljava/util/List;

    new-array v1, v8, [Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 17
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    aput-object v8, v1, v2

    .line 18
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    aput-object v2, v1, v3

    .line 19
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    aput-object v2, v1, v4

    .line 20
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR_BACK:Lcom/motorola/camera/settings/SettingsManager$Key;

    aput-object v2, v1, v5

    .line 21
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    aput-object v2, v1, v6

    .line 22
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    aput-object v2, v1, v7

    .line 23
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->PANEL_SETTINGS_KEYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAllSettings(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->PANEL_SETTINGS_KEYS:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getFilteredSettings(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getFilteredSettings(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "*>;>;Z)",
            "Ljava/util/List<",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 3
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    .line 4
    :cond_1
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-eqz p2, :cond_3

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :cond_3
    :goto_2
    move v4, v3

    goto/16 :goto_7

    .line 7
    :cond_4
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p2, :cond_3

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLockedAspectRatioMode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 11
    :cond_5
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_3

    .line 12
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 13
    invoke-static {v1, p2}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoCaptureCapable(Lcom/motorola/camera/settings/SettingsManager$Key;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoCaptureSupportedByCurrentMode()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 15
    :cond_6
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_3

    .line 16
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 17
    invoke-static {v1, p2}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoCaptureCapable(Lcom/motorola/camera/settings/SettingsManager$Key;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoCaptureSupportedByCurrentMode()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 19
    :cond_7
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR_BACK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    goto :goto_3

    .line 20
    :cond_8
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_9

    xor-int/lit8 v4, p2, 0x1

    goto/16 :goto_7

    .line 21
    :cond_9
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    goto :goto_4

    .line 22
    :cond_a
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_b

    if-nez p2, :cond_3

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoTypeMode()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 24
    :cond_b
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez p2, :cond_3

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoTypeMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 27
    :cond_c
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    goto :goto_5

    .line 28
    :cond_d
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_5
    if-eqz v2, :cond_e

    move v2, v3

    goto :goto_6

    .line 29
    :cond_e
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_6
    if-eqz v2, :cond_f

    if-nez p2, :cond_3

    .line 30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 31
    :cond_f
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 32
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v4

    :cond_10
    :goto_7
    if-nez v4, :cond_0

    .line 33
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 34
    :cond_11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 36
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 37
    :cond_13
    new-instance p0, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 39
    check-cast p2, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 40
    iget-object p2, p2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_14
    return-object p0
.end method
