.class public Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;
.source "HistogramTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;

.field public final synthetic val$displayOrientation:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->val$displayOrientation:I

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 3
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->val$displayOrientation:I

    int-to-float p0, p0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0, v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 3
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
