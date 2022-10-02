.class public Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "CameraPreview.java"


# instance fields
.field public final blurTexLayoutSize:Landroid/graphics/PointF;

.field public final deltaHeight:F

.field public final deltaWidth:F

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final synthetic val$deltaTranslation:F

.field public final synthetic val$endScissorRect:Landroid/graphics/Rect;

.field public final synthetic val$onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$startScissorRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$endScissorRect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startScissorRect:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaTranslation:F

    iput-object p6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p5

    sub-int/2addr p4, p5

    int-to-float p4, p4

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->deltaWidth:F

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->deltaHeight:F

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->blurTexLayoutSize:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->deltaWidth:F

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startScissorRect:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->deltaHeight:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v0

    .line 5
    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaTranslation:F

    mul-float/2addr v3, p2

    add-float/2addr v3, v2

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {p1, v1, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->blurTexLayoutSize:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$endScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->blurTexLayoutSize:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    div-float/2addr v1, v3

    iget v0, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$endScissorRect:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->blurTexLayoutSize:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v2, v0

    div-float/2addr v2, v3

    const/high16 p2, 0x3f800000    # 1.0f

    .line 13
    invoke-virtual {p1, v1, v2, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 15
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 16
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 17
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    const/4 v0, 0x4

    .line 18
    invoke-virtual {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$endScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$endScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaTranslation:F

    add-float/2addr v2, v3

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {p1, v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$endScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->blurTexLayoutSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$endScissorRect:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->blurTexLayoutSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 13
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 14
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 15
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    const/4 v1, 0x4

    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 18
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 20
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
