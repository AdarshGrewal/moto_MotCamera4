.class public Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;
.super Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;
.source "DebugIdTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DebugButton"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mType:Lcom/motorola/camera/settings/CameraType;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FIILcom/motorola/camera/settings/CameraType;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    .line 3
    iput-object p7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->mType:Lcom/motorola/camera/settings/CameraType;

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->updateIdText()V

    return-void
.end method


# virtual methods
.method public onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    .line 1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->BACK_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->mType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->mType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->mType:Lcom/motorola/camera/settings/CameraType;

    sget-object p3, Lcom/motorola/camera/settings/CameraType;->DEBUG_ID:Lcom/motorola/camera/settings/CameraType;

    if-ne p2, p3, :cond_0

    .line 4
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->mType:Lcom/motorola/camera/settings/CameraType;

    const-string p3, "CAMERA_TYPE"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, p3, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1
    return-void
.end method

.method public final updateIdText()V
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture$TextureState;->UNINITIALIZED:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture$TextureState;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->mType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->mType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    const/4 v4, -0x1

    if-ne v2, v3, :cond_1

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    .line 4
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mAppColor:I

    .line 5
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBColor:I

    if-eq v3, v2, :cond_0

    .line 6
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBColor:I

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture$TextureState;

    .line 8
    :cond_0
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBColor:I

    if-eq v2, v4, :cond_2

    .line 10
    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mBColor:I

    .line 11
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture$TextureState;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    .line 13
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mAppColor:I

    .line 14
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    .line 15
    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    return-void
.end method
