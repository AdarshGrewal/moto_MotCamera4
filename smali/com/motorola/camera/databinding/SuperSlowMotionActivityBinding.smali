.class public abstract Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SuperSlowMotionActivityBinding.java"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

.field public final superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

.field public final superSlowMotionPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

.field public final superSlowMotionProcessingBar:Landroid/widget/ProgressBar;

.field public final superSlowMotionProcessingCancelButton:Landroid/widget/Button;

.field public final superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

.field public final superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

.field public final superSlowMotionSaveButton:Landroid/widget/Button;

.field public final superSlowMotionSkipButton:Landroid/widget/Button;

.field public final superSlowMotionToast:Landroid/widget/TextView;

.field public final superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageButton;Lcom/google/android/exoplayer2/ui/PlayerView;Landroid/widget/ProgressBar;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p5, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    .line 3
    iput-object p6, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 4
    iput-object p7, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Landroid/widget/ProgressBar;

    .line 5
    iput-object p8, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    .line 6
    iput-object p10, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    .line 7
    iput-object p11, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    .line 8
    iput-object p12, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSaveButton:Landroid/widget/Button;

    .line 9
    iput-object p13, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSkipButton:Landroid/widget/Button;

    .line 10
    iput-object p14, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionToast:Landroid/widget/TextView;

    .line 11
    iput-object p15, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    return-void
.end method


# virtual methods
.method public abstract setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V
.end method
