.class public final Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$growAndActivateAnimatorSet$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimerDotsComponent.kt"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic $view:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$growAndActivateAnimatorSet$1$1;->$view:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$growAndActivateAnimatorSet$1$1;->this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$growAndActivateAnimatorSet$1$1;->$view:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$growAndActivateAnimatorSet$1$1;->this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Landroid/widget/ImageView;Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
