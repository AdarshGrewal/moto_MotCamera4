.class public final Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$init$1;
.super Ljava/lang/Object;
.source "AnimationPlayerView.kt"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic $done:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $player:Landroid/media/MediaPlayer;

.field public final synthetic this$0:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaPlayer;",
            "Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$init$1;->$player:Landroid/media/MediaPlayer;

    iput-object p2, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$init$1;->this$0:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    iput-object p3, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$init$1;->$done:Lkotlin/jvm/functions/Function0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string/jumbo p2, "surface"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$init$1;->$player:Landroid/media/MediaPlayer;

    new-instance p2, Landroid/view/Surface;

    iget-object p3, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$init$1;->this$0:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    invoke-virtual {p3}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$init$1;->$done:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const-string/jumbo p0, "surface"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string/jumbo p0, "surface"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const-string/jumbo p0, "surface"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
