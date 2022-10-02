.class public Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;
.source "CinemagraphComponent.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 5
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
