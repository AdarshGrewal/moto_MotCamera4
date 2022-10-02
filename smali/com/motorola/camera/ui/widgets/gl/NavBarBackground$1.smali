.class public Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "NavBarBackground.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

.field public final synthetic val$visible:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->val$visible:Z

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 2

    .line 1
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x2

    .line 4
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, p2, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->val$visible:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 6
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
