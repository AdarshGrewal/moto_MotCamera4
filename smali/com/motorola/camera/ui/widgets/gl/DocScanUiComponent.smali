.class public Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "DocScanUiComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;,
        Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;
    }
.end annotation


# static fields
.field public static mInstructionEnable:Z


# instance fields
.field public finishOneZoom:Z

.field public finishZoomTick:I

.field public mCheckValue:I

.field public mDensity:F

.field public mDisplayOrientation:I

.field public mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

.field public mEnableDrawRectOrTips:Z

.field public mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

.field public final mMcfDocScanListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

.field public mMcfMlStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;

.field public final mOutlineColor:I

.field public final mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

.field public final mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

.field public mThumb:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

.field public mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final saveListener:Lcom/motorola/camera/saving/SaveListener;

.field public slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f0600dd

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Application;->getColor(I)I

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionEnable:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishZoomTick:I

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishOneZoom:Z

    .line 4
    new-instance p1, Lcom/motorola/camera/slidedoc/SlidePointTuning;

    invoke-direct {p1}, Lcom/motorola/camera/slidedoc/SlidePointTuning;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    .line 5
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 6
    invoke-static {p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 7
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mMcfDocScanListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    .line 8
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mMcfMlStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;

    .line 9
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$3;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->saveListener:Lcom/motorola/camera/saving/SaveListener;

    const/4 p1, 0x5

    .line 10
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mCheckValue:I

    .line 11
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const p2, 0x7f0600dd

    .line 12
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 13
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mOutlineColor:I

    .line 14
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    return-void
.end method

.method public static access$000(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;[Landroid/graphics/Point;)Z
    .locals 8

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 2
    array-length v2, p1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    aget-object v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 4
    iget v5, v4, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_4

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v6, Lcom/motorola/camera/PreviewSize;->width:I

    if-gt v5, v7, :cond_4

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ltz v4, :cond_4

    iget v5, v6, Lcom/motorola/camera/PreviewSize;->height:I

    if-le v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0xa

    .line 5
    aget-object v3, p1, v0

    aget-object v4, p1, v1

    invoke-virtual {p0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->getPointsDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v3

    .line 6
    aget-object v5, p1, v1

    const/4 v6, 0x2

    aget-object p1, p1, v6

    invoke-virtual {p0, v5, p1}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->getPointsDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide p0

    .line 7
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 8
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v5, p0

    int-to-double p0, v2

    cmpl-double p0, v5, p0

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    return v0
.end method

.method public static access$800(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;Ljava/util/List;)V
    .locals 10

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 5
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_AUTO_ZOOM:Lcom/motorola/camera/AppFeatures$Feature;

    .line 6
    iget-object v2, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 7
    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_ZOOM_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 8
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 11
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 12
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mCheckValue:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mCheckValue:I

    if-gez v1, :cond_2

    const/4 v1, 0x5

    .line 13
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mCheckValue:I

    if-eqz p1, :cond_2

    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    goto/16 :goto_4

    .line 15
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    .line 16
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    .line 17
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->width:I

    const/4 v8, 0x2

    .line 18
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v9

    .line 19
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    .line 20
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v8, v8, Lcom/motorola/camera/PreviewSize;->height:I

    .line 21
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, p1

    .line 22
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    .line 23
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpl-float v7, v4, v1

    if-eqz v7, :cond_5

    cmpl-float v7, v4, v6

    if-nez v7, :cond_4

    goto :goto_1

    .line 24
    :cond_4
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_2
    int-to-float v7, v7

    div-float/2addr v4, v7

    .line 25
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->MARGIN_THRESH_TO_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 26
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 27
    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_9

    .line 28
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_TARGET_MARGIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 29
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 30
    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 31
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v8, v7, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v8, v8

    sub-float/2addr v1, v4

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v1, v9

    sub-float v1, v8, v1

    div-float/2addr v1, v8

    sub-float/2addr v6, v4

    mul-float/2addr v6, v9

    sub-float v6, v8, v6

    div-float/2addr v6, v8

    .line 32
    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    sub-float/2addr v5, v4

    mul-float/2addr v5, v9

    sub-float v5, v7, v5

    div-float/2addr v5, v7

    sub-float/2addr p1, v4

    mul-float/2addr p1, v9

    sub-float p1, v7, p1

    div-float/2addr p1, v7

    .line 33
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    .line 35
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->isAvailable()Z

    move-result v1

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    if-eqz v1, :cond_9

    const/16 v1, 0xa

    .line 36
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mCheckValue:I

    .line 37
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 38
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 39
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr p1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    div-float p1, v4, p1

    cmpl-float v5, v1, v4

    if-lez v5, :cond_7

    sub-float/2addr v1, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    mul-float/2addr p1, v1

    :cond_7
    const/4 v1, 0x0

    .line 40
    sget-object v4, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    .line 41
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Lcom/motorola/camera/settings/CameraType;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 42
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 43
    :cond_8
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMinUIZoomX()F

    move-result v5

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v5, "ZOOM_JUMP_X"

    .line 45
    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p1, "CAMERA_TYPE"

    .line 46
    invoke-virtual {v1, p1, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "VIDEO_RECORDING"

    .line 47
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/motorola/camera/AppFeatures$Feature;->SMOOTH_ZOOM_JUMP:Lcom/motorola/camera/AppFeatures$Feature;

    .line 50
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "SMOOTH_ZOOM_JUMP"

    .line 51
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "IS_AUTO_ZOOM"

    .line 52
    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_JUMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 54
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_9

    .line 55
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public final getPointsDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 4

    .line 1
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget v0, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p0, p1, Landroid/graphics/Point;->y:I

    iget p1, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, p1

    int-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 3
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 5
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 7
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 9
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 11
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 13
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 15
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 17
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 18
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v1, v0, v3

    .line 19
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 20
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DocScanUiComponent"

    return-object p0
.end method

.method public final isMlSlideSupported()Z
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->CONTENT_UPDATE_MANDATORY:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public loadTextures()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDensity:F

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    .line 3
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    .line 4
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 9
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    .line 10
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v4, v2, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v4

    invoke-virtual {v0, v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 14
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mThumb:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

    .line 15
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->loadTexture()V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mThumb:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 17
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f110147

    goto :goto_0

    :cond_0
    const v3, 0x7f110145

    .line 20
    :goto_0
    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 21
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

    invoke-virtual {v10, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDensity:F

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mOutlineColor:I

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setOutline(FI)V

    .line 23
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const v4, 0x7f110146

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x41400000    # 12.0f

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 24
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDensity:F

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mOutlineColor:I

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setOutline(FI)V

    .line 26
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->updateTipsPosition()V

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return v1
.end method

.method public final manageListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 2
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 3
    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    if-eqz p2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mMcfDocScanListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->saveListener:Lcom/motorola/camera/saving/SaveListener;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mMcfDocScanListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->saveListener:Lcom/motorola/camera/saving/SaveListener;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    .line 8
    :goto_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 10
    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-eqz p2, :cond_1

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mMcfMlStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mMcfMlStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public onDraw([F[F[F)V
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p3}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    if-eqz p3, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->isMlSlideSupported()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    invoke-virtual {p3}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getShowingPoints()Ljava/util/List;

    move-result-object p3

    .line 4
    move-object v0, p3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {p0, p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->showDetection(Ljava/util/List;[F[F)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->showEmpty([F[F)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    .line 8
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->isAvailable()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 9
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    .line 10
    monitor-enter p3

    .line 11
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p3, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p3, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 12
    monitor-exit p3

    goto :goto_0

    .line 13
    :cond_2
    :try_start_1
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->getPoints()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p3

    .line 14
    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->showDetection(Ljava/util/List;[F[F)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit p3

    throw p0

    .line 16
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->showEmpty([F[F)V

    .line 17
    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    if-eqz p3, :cond_5

    sget-boolean v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionEnable:Z

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->draw([F[F)V

    .line 19
    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mThumb:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

    .line 20
    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p3, :cond_6

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->mThumbnail:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_6
    return-void
.end method

.method public onPreDraw([F[F[F)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mThumb:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

    .line 4
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->tracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mThumb:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public declared-synchronized onRotate(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->updateTipsPosition()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {v1, p1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    if-eqz p1, :cond_1

    .line 7
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-virtual {v1, p1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result p0

    invoke-virtual {p1, v0, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_1
    return-void
.end method

.method public final setTextureEnable(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public final showDetection(Ljava/util/List;[F[F)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;[F[F)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->updateTexture$enumunboxing$(III)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    .line 6
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    :cond_0
    return-void
.end method

.method public final showEmpty([F[F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->updateTexture$enumunboxing$(III)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    .line 3
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 5
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 7
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    :cond_2
    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanSupported()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->manageListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    .line 6
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->setTextureEnable(Z)V

    goto/16 :goto_a

    .line 7
    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_17

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_9

    .line 9
    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v1, :cond_9

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_DOC_POINT:Landroid/graphics/Point;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_3
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 13
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 14
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_4

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    if-eqz v0, :cond_5

    .line 16
    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    const-string v6, "DOCUMENT_WIDTH"

    .line 17
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "DOCUMENT_HEIGHT"

    .line 18
    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->isMlSlideSupported()Z

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    const v8, 0x3e4ccccc    # 0.19999999f

    const v9, 0x3f4ccccd    # 0.8f

    if-eqz v6, :cond_7

    .line 20
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    .line 21
    iget-object v6, v6, Lcom/motorola/camera/slidedoc/SlidePointTuning;->showingPoints:[Landroid/graphics/Point;

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    int-to-float v1, v1

    mul-float v6, v1, v8

    div-float/2addr v6, v7

    float-to-int v6, v6

    mul-float/2addr v1, v9

    float-to-int v1, v1

    add-int/2addr v1, v6

    int-to-float v0, v0

    mul-float/2addr v8, v0

    div-float/2addr v8, v7

    float-to-int v7, v8

    mul-float/2addr v0, v9

    float-to-int v0, v0

    add-int/2addr v0, v7

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/graphics/Point;

    .line 22
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v9, v8, v3

    .line 23
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v1, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v9, v8, v2

    .line 24
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v8, v4

    .line 25
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v0}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v8, v5

    move-object v6, v8

    .line 26
    :goto_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 27
    aget-object v1, v6, v3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    .line 28
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    .line 29
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-static {p0, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->access$1300(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;ZZ)V

    goto :goto_4

    .line 30
    :cond_7
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    .line 31
    monitor-enter v4

    .line 32
    :try_start_0
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/List;

    if-eqz v5, :cond_8

    .line 33
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 34
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 35
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    goto :goto_3

    :cond_8
    int-to-float v1, v1

    mul-float v5, v1, v8

    div-float/2addr v5, v7

    float-to-int v5, v5

    mul-float/2addr v1, v9

    float-to-int v1, v1

    add-int/2addr v1, v5

    int-to-float v0, v0

    mul-float/2addr v8, v0

    div-float/2addr v8, v7

    float-to-int v6, v8

    mul-float/2addr v0, v9

    float-to-int v0, v0

    add-int/2addr v0, v6

    .line 37
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 38
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v1, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v5, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 43
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 44
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v0, v7}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :goto_3
    monitor-exit v4

    .line 47
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-static {p0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->access$1300(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;ZZ)V

    :goto_4
    const-string p0, "DOCUMENT_POINTS"

    .line 48
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getDocPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_a

    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v4

    throw p0

    .line 50
    :cond_9
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 51
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->setTextureEnable(Z)V

    .line 52
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    if-eqz p0, :cond_18

    .line 53
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->reset()V

    .line 54
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 55
    :cond_a
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 56
    new-instance p1, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    .line 57
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 58
    invoke-virtual {p1, v4}, Lcom/motorola/camera/mcf/McfParameters;->setDocScanDetectionMode$enumunboxing$(I)V

    .line 59
    invoke-static {v5}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "setMlDocScanDetectionMode"

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 60
    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 61
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->isMlSlideSupported()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 62
    invoke-virtual {p1, v4}, Lcom/motorola/camera/mcf/McfParameters;->setDocScanDetectionMode$enumunboxing$(I)V

    .line 63
    invoke-virtual {p1, v5}, Lcom/motorola/camera/mcf/McfParameters;->setMlSlideScanDetectionMode$enumunboxing$(I)V

    goto :goto_5

    .line 64
    :cond_c
    invoke-virtual {p1, v5}, Lcom/motorola/camera/mcf/McfParameters;->setDocScanDetectionMode$enumunboxing$(I)V

    .line 65
    invoke-virtual {p1, v4}, Lcom/motorola/camera/mcf/McfParameters;->setMlSlideScanDetectionMode$enumunboxing$(I)V

    goto :goto_5

    .line 66
    :cond_d
    invoke-virtual {p1, v4}, Lcom/motorola/camera/mcf/McfParameters;->setDocScanDetectionMode$enumunboxing$(I)V

    .line 67
    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "setMlDocScanDetectionMode"

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v4}, Lcom/motorola/camera/mcf/McfParameters;->setMlSlideScanDetectionMode$enumunboxing$(I)V

    .line 69
    :goto_5
    invoke-static {p1}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    goto/16 :goto_a

    .line 70
    :cond_e
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 71
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 72
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 73
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_a

    .line 74
    :cond_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result p1

    if-eqz p1, :cond_10

    const p1, 0x7f110147

    goto :goto_6

    :cond_10
    const p1, 0x7f110145

    .line 75
    :goto_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 76
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 77
    invoke-virtual {v1, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-static {p0, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->access$1300(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;ZZ)V

    goto/16 :goto_a

    .line 79
    :cond_11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, p0, p1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_a

    .line 80
    :cond_12
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 81
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanSupported()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 82
    :cond_13
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 83
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->manageListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 84
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 85
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    goto/16 :goto_a

    .line 86
    :cond_14
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 87
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 88
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 89
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "IS_AUTO_ZOOM"

    .line 90
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 91
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :try_start_1
    iget-object p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 93
    :goto_7
    iget-object p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_15

    .line 94
    iget-object p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "SlidePointTuning"

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    :cond_15
    iget-object p0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_a

    :goto_8
    iget-object p0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 97
    throw p1

    .line 98
    :cond_16
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 99
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 100
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 101
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "IS_AUTO_ZOOM"

    .line 102
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 103
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishOneZoom:Z

    .line 104
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishZoomTick:I

    goto :goto_a

    .line 105
    :cond_17
    :goto_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 106
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 107
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->manageListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 108
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    :cond_18
    :goto_a
    return-void
.end method

.method public unloadTextures()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->unloadTexture()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->unloadTexture()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mThumb:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->unloadTexture()V

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 5
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    :cond_4
    return-void
.end method

.method public final updateTipsPosition()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDensity:F

    const/high16 v2, 0x43180000    # 152.0f

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x43700000    # 240.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    const/high16 v4, 0x43340000    # 180.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 2
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    .line 3
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    .line 4
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 5
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v5, v5

    invoke-virtual {v4, v5, v6, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 6
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/4 v5, 0x4

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v4, :cond_3

    const/16 v8, 0x5a

    if-eq v4, v8, :cond_2

    const/16 v8, 0xb4

    if-eq v4, v8, :cond_1

    const/16 v3, 0x10e

    if-eq v4, v3, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 9
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v2, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 11
    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v7

    add-float/2addr v0, v2

    invoke-virtual {v1, v0, v6, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FFF)V

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 14
    invoke-virtual {p0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 16
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 17
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    sub-float/2addr v0, v2

    invoke-direct {v1, v6, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 19
    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v7

    add-float/2addr v0, v2

    invoke-virtual {v1, v6, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 22
    invoke-virtual {p0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_0

    .line 23
    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 24
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 25
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float v3, v2

    invoke-direct {v1, v3, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 27
    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v7

    add-float/2addr v0, v2

    invoke-virtual {v1, v0, v6, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 29
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 30
    invoke-virtual {p0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_0

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 32
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 33
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    add-float/2addr v0, v2

    invoke-direct {v1, v6, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 34
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 35
    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 36
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v7

    add-float/2addr v0, v2

    invoke-virtual {v1, v6, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FFF)V

    .line 37
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 38
    invoke-virtual {p0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_0
    return-void
.end method
