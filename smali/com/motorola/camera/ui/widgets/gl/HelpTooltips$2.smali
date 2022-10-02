.class public Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "HelpTooltips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDisplayCurrentTooltip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    .line 3
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->setAlpha(F)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->setAlpha(F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    .line 9
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    .line 13
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mHasGradient:Z

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method
