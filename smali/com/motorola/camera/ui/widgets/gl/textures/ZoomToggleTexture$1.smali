.class public Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;
.source "ZoomToggleTexture.java"


# instance fields
.field public mTouchDownHandled:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-direct {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    return-void
.end method


# virtual methods
.method public handleSingleTap()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

    if-eqz v1, :cond_0

    .line 3
    sget-object v2, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 5
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    .line 6
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;ZLcom/motorola/camera/settings/CameraType;)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 8
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    .line 9
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    .line 10
    invoke-virtual {p0, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onWideSelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleTouchDown()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 4
    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-eqz v2, :cond_0

    .line 5
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    .line 6
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 7
    sget-object v2, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 9
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchDown(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    :goto_0
    return-void
.end method

.method public handleTouchUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;->mTouchDownHandled:Z

    if-eqz p0, :cond_0

    .line 4
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchUp()V

    :cond_0
    return-void
.end method
