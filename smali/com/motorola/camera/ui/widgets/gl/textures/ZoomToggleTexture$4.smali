.class public Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;
.source "ZoomToggleTexture.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-direct {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleSingleTap()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

    if-eqz v1, :cond_4

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 4
    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMacroCameraWithWideSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    if-eqz v2, :cond_4

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 12
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->configureZoomHDR10ConflictPrompt()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 15
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

    .line 18
    sget-object v2, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 19
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 20
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    .line 21
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-virtual {v1, v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;ZLcom/motorola/camera/settings/CameraType;)V

    .line 22
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 23
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    .line 24
    invoke-virtual {p0, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onMacroSelected(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public handleTouchDown()V
    .locals 0

    return-void
.end method

.method public handleTouchUp()V
    .locals 0

    return-void
.end method
