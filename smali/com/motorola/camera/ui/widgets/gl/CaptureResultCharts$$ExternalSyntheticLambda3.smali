.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda3;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda3;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda3;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;

    sget p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->$r8$clinit:I

    .line 1
    iget-boolean p0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mLoaded:Z

    if-nez p0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->loadTexture()V

    :cond_0
    return-void
.end method
