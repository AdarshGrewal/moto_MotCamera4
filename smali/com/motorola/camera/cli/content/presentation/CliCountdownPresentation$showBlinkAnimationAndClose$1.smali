.class public final Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$showBlinkAnimationAndClose$1;
.super Ljava/lang/Object;
.source "CliCountdownPresentation.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$showBlinkAnimationAndClose$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$showBlinkAnimationAndClose$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->removeSelf:Lkotlin/jvm/functions/Function0;

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
