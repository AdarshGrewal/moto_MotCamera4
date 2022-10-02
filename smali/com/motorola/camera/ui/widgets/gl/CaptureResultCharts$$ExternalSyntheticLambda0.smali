.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;

.field public final synthetic f$1:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/camera2/CaptureResult;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/hardware/camera2/CaptureResult$Key;

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mCaptureResultIndexes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;

    .line 3
    invoke-virtual {p0, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_0

    .line 5
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->onValue(F)V

    goto :goto_1

    .line 6
    :cond_0
    instance-of p2, p0, [I

    if-eqz p2, :cond_1

    .line 7
    check-cast p0, [I

    .line 8
    array-length p2, p0

    if-ge v1, p2, :cond_4

    .line 9
    aget p0, p0, v1

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->onValue(F)V

    goto :goto_1

    .line 10
    :cond_1
    instance-of p2, p0, [F

    if-eqz p2, :cond_2

    .line 11
    check-cast p0, [F

    .line 12
    array-length p2, p0

    if-ge v1, p2, :cond_4

    .line 13
    aget p0, p0, v1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->onValue(F)V

    goto :goto_1

    .line 14
    :cond_2
    instance-of p2, p0, Ljava/lang/Boolean;

    if-eqz p2, :cond_4

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->onValue(F)V

    :cond_4
    :goto_1
    return-void
.end method
