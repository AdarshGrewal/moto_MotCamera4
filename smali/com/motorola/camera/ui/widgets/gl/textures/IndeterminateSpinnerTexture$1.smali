.class public Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "IndeterminateSpinnerTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public reverse:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture$1;->reverse:Z

    return-void
.end method


# virtual methods
.method public applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 6

    .line 1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture$1;->reverse:Z

    const/high16 v0, 0x43b40000    # 360.0f

    const v1, 0x3d4ccccd    # 0.05f

    const v2, 0x3f59999a    # 0.85f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    mul-float/2addr v0, p2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v0, v5

    .line 4
    invoke-virtual {p1, v0, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    sub-float/2addr v3, p2

    cmpl-float p1, v3, v2

    if-lez p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    cmpg-float p1, v3, v1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 7
    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->setProgress(F)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    cmpl-float v5, p2, v2

    if-lez v5, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    cmpg-float v2, p2, v1

    if-gez v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, p2

    .line 10
    :goto_1
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->setProgress(F)V

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    mul-float/2addr p2, v0

    .line 13
    invoke-virtual {p0, p2, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    :goto_2
    return-void
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public onAnimationRepeat(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture$1;->reverse:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture$1;->reverse:Z

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
