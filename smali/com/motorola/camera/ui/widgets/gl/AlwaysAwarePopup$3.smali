.class public Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "AlwaysAwarePopup.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

.field public final synthetic val$animateGradient:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->val$animateGradient:Z

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->getActionsPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->access$500(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->multiply(F)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->access$500(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 12
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->setAlpha(F)V

    .line 13
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->val$animateGradient:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 2
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 3
    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->access$500(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->setAlpha(F)V

    .line 8
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->val$animateGradient:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 10
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 12
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
