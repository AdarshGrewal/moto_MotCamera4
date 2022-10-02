.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:[F

.field public final synthetic f$1:[F


# direct methods
.method public synthetic constructor <init>([F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda1;->f$0:[F

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda1;->f$1:[F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda1;->f$0:[F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda1;->f$1:[F

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;

    .line 1
    iget-boolean p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->onDraw([F[F)V

    :cond_0
    return-void
.end method
