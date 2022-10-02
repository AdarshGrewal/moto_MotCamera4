.class public final synthetic Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    sget p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->$r8$clinit:I

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
