.class public Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateViewfinderStencilCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final deltaHeight:F

.field public final deltaTranslation:F

.field public final deltaWidth:F

.field public final startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final synthetic val$endScissorRect:Landroid/graphics/Rect;

.field public final synthetic val$onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic val$startScissorRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$endScissorRect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$startScissorRect:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p4, v0

    int-to-float p4, p4

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->deltaWidth:F

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    sub-int/2addr p4, p3

    int-to-float p3, p4

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->deltaHeight:F

    .line 4
    iget-object p3, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 5
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p3

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p1, p4

    sub-float/2addr p2, p1

    iget p1, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->deltaTranslation:F

    return-void
.end method


# virtual methods
.method public applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$startScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->deltaWidth:F

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$startScissorRect:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->deltaHeight:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v0

    .line 5
    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->deltaTranslation:F

    mul-float/2addr v3, p2

    add-float/2addr v3, v2

    iget p2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {p1, v1, v3, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$endScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$endScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->deltaTranslation:F

    add-float/2addr v2, v3

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {p1, v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$onAnimationEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
