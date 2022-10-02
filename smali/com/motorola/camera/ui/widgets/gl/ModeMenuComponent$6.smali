.class public Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$6;
.super Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;
.source "ModeMenuComponent.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

.field public final synthetic val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$6;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$6;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_USE_WIDGET_MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 12
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 15
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 5
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method
