.class public final synthetic Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    sget p1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->$r8$clinit:I

    const-string/jumbo p1, "this$0"

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 3
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
