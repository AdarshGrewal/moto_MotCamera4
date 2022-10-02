.class public Lcom/motorola/camera/fsm/camera/states/RoiStates$UpdateAERegionsRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.source "RoiStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/RoiStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateAERegionsRunnable"
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 2
    instance-of v2, v1, Landroid/os/Bundle;

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 4
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 5
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 6
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 7
    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;

    .line 8
    move-object v4, v1

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "LOCATION"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 9
    iget v5, v4, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    .line 10
    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    const-string v6, "ROI_WIDTH"

    .line 11
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "ROI_HIGHT"

    .line 12
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "ROI_WEIGHT"

    .line 13
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 14
    new-instance v8, Lcom/motorola/camera/PreviewSize;

    const-string v9, "SURFACE_WIDTH"

    .line 15
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "SURFACE_HEIGHT"

    .line 16
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v8, v9, v2}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 17
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v5, v5

    int-to-float v4, v4

    invoke-direct {v2, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 19
    invoke-static {}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->getActiveSensorRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 20
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget v10, v8, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 22
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v8, v8, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v8, v8

    div-float/2addr v10, v8

    .line 23
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 24
    iget v8, v4, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v5, v8, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v4, 0x2

    new-array v8, v4, [F

    .line 25
    iget v9, v2, Landroid/graphics/PointF;->x:F

    const/4 v15, 0x0

    aput v9, v8, v15

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v13, 0x1

    aput v2, v8, v13

    new-array v2, v4, [F

    .line 26
    invoke-virtual {v5, v2, v8}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 27
    new-instance v4, Landroid/graphics/PointF;

    aget v5, v2, v15

    aget v2, v2, v13

    invoke-direct {v4, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRatioControlSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 29
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 30
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 31
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    int-to-float v5, v6

    mul-float/2addr v5, v2

    float-to-int v6, v5

    int-to-float v5, v7

    mul-float/2addr v5, v2

    float-to-int v7, v5

    .line 32
    :cond_1
    invoke-static {}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->getActiveSensorRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 33
    iget v5, v4, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    div-int/lit8 v8, v6, 0x2

    sub-int/2addr v5, v8

    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v8

    invoke-static {v5, v9, v10}, Lcom/motorola/camera/Util;->clamp(III)I

    move-result v5

    .line 34
    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    div-int/lit8 v8, v7, 0x2

    sub-int/2addr v4, v8

    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v8

    invoke-static {v4, v9, v10}, Lcom/motorola/camera/Util;->clamp(III)I

    move-result v4

    .line 35
    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 36
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 37
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v10

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 38
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v11

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v4, v13, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 39
    new-instance v5, Landroid/hardware/camera2/params/MeteringRectangle;

    move-object v9, v5

    move v6, v13

    move v13, v2

    invoke-direct/range {v9 .. v14}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v5, v4, v15

    .line 40
    invoke-virtual {v3, v0, v4, v6}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->setupRequestBuilders(Lcom/motorola/camera/fsm/camera/FsmContext;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 41
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$UpdateAERegionsRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
