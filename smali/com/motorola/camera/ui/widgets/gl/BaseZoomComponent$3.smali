.class public Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;
.super Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;
.source "BaseZoomComponent.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

.field public final synthetic val$end:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->val$end:F

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return-void
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->val$end:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setPreRotation(FFFF)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->val$end:F

    invoke-virtual {p1, v0, v1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setPreRotation(FFFF)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->val$end:F

    invoke-virtual {p1, v0, v1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
