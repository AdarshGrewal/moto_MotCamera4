.class public Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$3;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "HelpTooltips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDismissCurrentTooltip()V
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
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    .line 3
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->setAlpha(F)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

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

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->dismissCurrentTooltip()V

    return-void
.end method
