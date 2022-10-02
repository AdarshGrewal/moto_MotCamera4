.class public final Lcom/motorola/camera/ui/controls_2020/RecordingToastComponent$showToast$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecordingToastComponent.kt"


# instance fields
.field public final synthetic $videoIndicator:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/RecordingToastComponent$showToast$1$1;->$videoIndicator:Landroid/widget/TextView;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/RecordingToastComponent$showToast$1$1;->$videoIndicator:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/RecordingToastComponent$showToast$1$1;->$videoIndicator:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
