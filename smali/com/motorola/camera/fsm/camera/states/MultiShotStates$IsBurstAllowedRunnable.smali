.class public Lcom/motorola/camera/fsm/camera/states/MultiShotStates$IsBurstAllowedRunnable;
.super Ljava/lang/Object;
.source "MultiShotStates.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/MultiShotStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsBurstAllowedRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterOn()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 6
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeAuto()Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_1
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 p2, 0xc

    const/4 v0, 0x1

    if-eq p0, p2, :cond_3

    const/16 p2, 0x12

    if-eq p0, p2, :cond_3

    const/16 p2, 0x27

    if-eq p0, p2, :cond_3

    const/16 p2, 0x28

    if-eq p0, p2, :cond_3

    .line 8
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterOn(I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 9
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 12
    sget-object p2, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_BURST_SHOT:Lcom/motorola/camera/AppFeatures$Feature;

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {p0, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result p0

    if-nez p0, :cond_3

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result p0

    if-nez p0, :cond_3

    move p0, v0

    goto :goto_0

    :cond_3
    move p0, p1

    :goto_0
    if-nez p0, :cond_4

    goto/16 :goto_2

    .line 16
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 17
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 20
    sget-object p2, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_BURST_SHOT_FRONT:Lcom/motorola/camera/AppFeatures$Feature;

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {p0, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move p0, v0

    goto :goto_1

    :cond_5
    move p0, p1

    :goto_1
    if-eqz p0, :cond_6

    goto :goto_2

    .line 22
    :cond_6
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 23
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 25
    sget-object p2, Lcom/motorola/camera/AppFeatures$Feature;->HIGH_RES_BURST_DISABLE:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v1, -0x1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 27
    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_7

    .line 28
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 29
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 30
    check-cast v1, Landroid/util/Size;

    .line 31
    invoke-static {v1}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v1

    if-le v1, p2, :cond_7

    goto :goto_2

    .line 32
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 33
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 34
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/motorola/camera/AppFeatures$Feature;->HIGH_RES_BURST_DISABLE_FRONT:Lcom/motorola/camera/AppFeatures$Feature;

    .line 35
    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {p0, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSizeOfCurrentCamera()Landroid/util/Size;

    move-result-object p0

    .line 37
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 38
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 39
    check-cast p2, Landroid/util/Size;

    .line 40
    invoke-static {p2}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result p2

    invoke-static {p0}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result p0

    if-le p2, p0, :cond_8

    goto :goto_2

    .line 41
    :cond_8
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->access$800()I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->checkSaveQueueIsFull(I)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 42
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->FAST_MODE_MTK:[I

    const-string p0, "MultiShotStates"

    const-string p2, "Save queue is full now, please wait for a while."

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    move p1, v0

    :cond_a
    :goto_2
    return p1
.end method
