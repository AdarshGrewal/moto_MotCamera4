.class public Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateViewfinderScale(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final synthetic val$begin:F

.field public final synthetic val$beginPos:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$end:F

.field public final synthetic val$endPos:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final synthetic val$onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic val$scale:F

.field public final synthetic val$stencilSize:Landroid/util/SizeF;

.field public final synthetic val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

.field public final synthetic val$translate:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FLandroid/util/SizeF;FLcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$begin:F

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$end:F

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$beginPos:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$translate:F

    iput-object p6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$stencilSize:Landroid/util/SizeF;

    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$scale:F

    iput-object p8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iput-object p9, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iput-object p10, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$endPos:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p11, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$begin:F

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$end:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$begin:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, p1

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$beginPos:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 4
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$translate:F

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    const v2, -0x43dc28f6    # -0.01f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 5
    :cond_0
    iget v2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    iput v2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x3

    .line 14
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v2, p2, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 16
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 17
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$stencilSize:Landroid/util/SizeF;

    .line 18
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$scale:F

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 19
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 20
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$scale:F

    mul-float/2addr v0, v1

    .line 21
    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 22
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$endPos:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 7
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$end:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 9
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 10
    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$scale:F

    mul-float/2addr v2, v3

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 12
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$scale:F

    mul-float/2addr p1, v3

    .line 13
    invoke-virtual {v0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$endPos:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 17
    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$onAnimationEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 19
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 8
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
