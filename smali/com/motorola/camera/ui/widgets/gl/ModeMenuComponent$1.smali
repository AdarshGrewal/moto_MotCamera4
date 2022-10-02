.class public Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;
.source "ModeMenuComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->animateShow(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

.field public final synthetic val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 6
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v4, 0x4

    .line 7
    invoke-virtual {v1, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 12
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 13
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setClickable(Z)V

    .line 14
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 16
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 18
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 19
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 20
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 21
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 22
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->updateTalkback()V

    .line 23
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 24
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v5, v2, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 26
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 27
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 28
    :cond_1
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->shouldShowTutorial()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 29
    :cond_2
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->getTutorialY()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v9, v2, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 30
    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 31
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 32
    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    invoke-interface {v3, v5}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY(Z)F

    move-result v3

    const/high16 v5, 0x42400000    # 48.0f

    add-float/2addr v3, v5

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->mDensity:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v1

    .line 33
    invoke-direct {v10, v2, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 34
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$6;

    invoke-direct {v6, v0, v10}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const-wide/16 v7, 0x1f4

    const/16 v17, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x2

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;II)V

    .line 35
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 36
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 37
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 38
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 39
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/4 v12, 0x0

    const-wide/16 v13, 0x1f4

    const/4 v15, 0x0

    const v16, 0x3e99999a    # 0.3f

    const/16 v18, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 40
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 41
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 42
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 43
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setClickable(Z)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 9
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setVisibility(Z)V

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 14
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    .line 15
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method
