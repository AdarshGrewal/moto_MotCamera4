.class public Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "BaseZoomComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateUpdateLayout(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

.field public final synthetic val$center:F

.field public final synthetic val$end:F

.field public final synthetic val$endPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final synthetic val$height:F

.field public final synthetic val$start:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;FFFFLcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$start:F

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$end:F

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$center:F

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$height:F

    iput-object p6, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iput-object p7, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$endPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v2, 0x4

    .line 2
    invoke-virtual {p1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$start:F

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$end:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 4
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$center:F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$height:F

    sub-float v3, p1, v2

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    sub-float/2addr p2, p1

    add-float/2addr p2, v2

    sub-float/2addr v0, p1

    add-float/2addr v0, v2

    div-float/2addr p2, v0

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_0

    :cond_0
    add-float v3, p1, v2

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_3

    sub-float/2addr p2, p1

    sub-float/2addr p2, v2

    sub-float/2addr v0, p1

    add-float/2addr v0, v2

    div-float/2addr p2, v0

    .line 6
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_0

    .line 7
    :cond_1
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$center:F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$height:F

    sub-float v3, p1, v2

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_2

    sub-float/2addr p2, p1

    add-float/2addr p2, v2

    sub-float/2addr v0, p1

    sub-float/2addr v0, v2

    div-float/2addr p2, v0

    .line 8
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_0

    :cond_2
    add-float v3, p1, v2

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_3

    sub-float/2addr p2, p1

    sub-float/2addr p2, v2

    sub-float/2addr v0, p1

    sub-float/2addr v0, v2

    div-float/2addr p2, v0

    .line 9
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 10
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    return-void
.end method

.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return-void
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$endPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x4

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$endPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleFrameTexture()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$endPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->resetTextureState()V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    .line 3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->visibleToggleTexture()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
