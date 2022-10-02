.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda2;

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
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->unloadTexture()V

    return-void
.end method
