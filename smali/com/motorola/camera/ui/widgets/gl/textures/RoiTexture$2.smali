.class public Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "RoiTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->getShowAnimation(J)Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public showedBar:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->showedBar:Z

    return-void
.end method


# virtual methods
.method public applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p1

    const/high16 p1, 0x3fc00000    # 1.5f

    const/high16 v0, -0x41000000    # -0.5f

    const/4 v1, 0x0

    sub-float v1, p2, v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    add-float/2addr v1, p1

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p1, v1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    .line 7
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz v0, :cond_0

    .line 8
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->showedBar:Z

    if-nez v0, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->showedBar:Z

    .line 10
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyShowBarAnimation()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit p1

    throw p0
.end method

.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    return-void
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 3
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 7
    invoke-interface {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;->startRoiTiming(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mEnableDrag:Z

    .line 3
    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 5
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    .line 9
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setAlpha(F)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    .line 12
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p1, :cond_1

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    const/4 p0, 0x0

    .line 17
    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;->startRoiTiming(Z)V

    :cond_1
    return-void
.end method
