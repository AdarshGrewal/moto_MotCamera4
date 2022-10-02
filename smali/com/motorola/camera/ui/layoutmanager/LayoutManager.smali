.class public Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;


# instance fields
.field public mDisplayDensity:F

.field public mHeightDp:F

.field public mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public mSurfaceDensity:F

.field public mWidthDp:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f06031c

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Application;->getColor(I)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SURFACE_SIZE:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public getCaptureBarGuideLine(Z)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v1

    const v2, 0x3faaaaab

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->shouldAdjustTopMarginForTopInsetInCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    add-float/2addr v0, v2

    .line 4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY(Z)F

    move-result p0

    sub-float/2addr v0, p0

    add-float/2addr v0, v1

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout22_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout21_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarY(Z)F

    move-result v0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->mCaptureBarMargin:F

    add-float/2addr v1, v0

    const/high16 v0, 0x42900000    # 72.0f

    add-float/2addr v1, v0

    const/high16 v0, 0x41900000    # 18.0f

    sub-float v0, v1, v0

    .line 8
    :goto_0
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    div-float/2addr v1, p0

    const p0, 0x3f8147ae    # 1.01f

    cmpl-float p0, v1, p0

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez p0, :cond_3

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    add-float/2addr v1, v3

    :cond_3
    cmpg-float p0, v1, v3

    if-gez p0, :cond_4

    sub-float p0, v3, v1

    div-float/2addr p0, v2

    sub-float v1, v3, p0

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    mul-float/2addr v0, v3

    return v0

    .line 9
    :cond_6
    :goto_2
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr v0, v1

    if-eqz p1, :cond_7

    .line 10
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarY(Z)F

    move-result p0

    goto :goto_3

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    add-float/2addr p0, v0

    :goto_3
    return p0
.end method

.method public getCaptureBarHeight(Z)F
    .locals 5

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v2

    mul-float/2addr v2, v0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->uiBottomAlign:I

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v0

    const/4 v3, 0x1

    const/high16 v4, 0x42400000    # 48.0f

    if-eq v0, v3, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v1

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight(Z)F

    move-result p0

    sub-float/2addr v0, p0

    return v0

    .line 6
    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v1

    .line 7
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight(Z)F

    move-result p0

    sub-float/2addr v0, p0

    sub-float/2addr v0, v4

    return v0

    .line 8
    :cond_2
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v1

    sub-float/2addr v0, v1

    sub-float/2addr v0, v2

    .line 9
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight(Z)F

    move-result p0

    sub-float/2addr v0, p0

    sub-float/2addr v0, v4

    return v0
.end method

.method public getCaptureBarY(Z)F
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight(Z)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarHeight(Z)F

    move-result p0

    add-float/2addr p0, v0

    div-float/2addr p0, v2

    :goto_0
    add-float/2addr p0, v1

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight(Z)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarHeight(Z)F

    move-result p0

    div-float/2addr p0, v2

    add-float/2addr p0, v0

    goto :goto_0
.end method

.method public final getDefaultPreviewAspect()F
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const v1, 0x3faaaaab

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 5
    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->NON_STANDARD_PREVIEW_ASPECT:Lcom/motorola/camera/AppFeatures$Feature;

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getDualCapturePIPVerticalGuideline()F
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v1

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v1, v2

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 6
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewUnder()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v1

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method public getIndicatorBarAndTopMargin()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method public getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F
    .locals 3

    .line 1
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v2

    div-float/2addr v2, v0

    add-float/2addr v2, v1

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v2, v1

    sub-float/2addr p1, v2

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v1

    div-float/2addr v1, v0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v1, p0

    sub-float/2addr p1, v1

    return p1
.end method

.method public getIndicatorBarHeight()F
    .locals 0

    const/high16 p0, 0x42a00000    # 80.0f

    return p0
.end method

.method public getIndicatorBarMarginHeight()F
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getInsetTop()I

    move-result v0

    int-to-float v0, v0

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->shouldAdjustTopMarginForTopInsetInCenter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    const/high16 v1, 0x443e0000    # 760.0f

    sub-float/2addr v0, v1

    .line 7
    :cond_0
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const v1, 0x44834000    # 1050.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_1

    const/high16 p0, 0x42480000    # 50.0f

    :goto_0
    add-float/2addr v0, p0

    goto :goto_1

    :cond_1
    const/high16 v1, 0x44610000    # 900.0f

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_2

    const/high16 p0, 0x41000000    # 8.0f

    goto :goto_0

    :cond_2
    :goto_1
    const/high16 p0, 0x42200000    # 40.0f

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public getModeCarouselY(Z)F
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight(Z)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->carouselBottom:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result p0

    sub-float/2addr v2, p0

    const/high16 p0, 0x41c00000    # 24.0f

    sub-float/2addr v2, p0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    add-float/2addr v0, p0

    return v0

    :cond_0
    add-float/2addr p1, p0

    return p1
.end method

.method public getPreviewScale()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale(Lcom/motorola/camera/PreviewSize;)F

    move-result p0

    return p0
.end method

.method public getPreviewScale(I)F
    .locals 1

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale(Lcom/motorola/camera/PreviewSize;I)F

    move-result p0

    return p0
.end method

.method public getPreviewScale(Lcom/motorola/camera/PreviewSize;)F
    .locals 1

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale(Lcom/motorola/camera/PreviewSize;I)F

    move-result p0

    return p0
.end method

.method public final getPreviewScale(Lcom/motorola/camera/PreviewSize;I)F
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v0, v1

    .line 5
    invoke-static {p0, p2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureScaleLayout(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v0

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public getPreviewTopMarginSize$enumunboxing$(I)F
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result p0

    add-float/2addr p0, p1

    return p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result p0

    return p0
.end method

.method public getShutterButtonCoordinates(Z)Lcom/google/android/play/core/appupdate/zzy;
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarGuideLine(Z)F

    move-result p1

    sub-float/2addr v0, p1

    const/high16 p1, 0x42100000    # 36.0f

    add-float/2addr v0, p1

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v0, p0

    mul-float/2addr p0, p1

    .line 2
    new-instance p1, Lcom/google/android/play/core/appupdate/zzy;

    neg-float v1, p0

    add-float v2, v0, p0

    sub-float/2addr v0, p0

    invoke-direct {p1, v1, v2, p0, v0}, Lcom/google/android/play/core/appupdate/zzy;-><init>(FFFF)V

    return-object p1
.end method

.method public getToggleBarGuideLine()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget-object v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->uiToggleAlign:Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine(Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;)F

    move-result p0

    return p0
.end method

.method public getToggleBarGuideLine(Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;)F
    .locals 3

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v1

    const v2, 0x3faaaaab

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, v0

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;->PREVIEW_UNDER:Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    add-float/2addr p0, v1

    const/high16 p1, 0x42880000    # 68.0f

    add-float/2addr p0, p1

    return p0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout205_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne p1, v0, :cond_2

    :cond_1
    iget p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const v0, 0x443b8000    # 750.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    add-float/2addr p0, v1

    const/high16 p1, 0x42400000    # 48.0f

    sub-float/2addr p0, p1

    return p0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    add-float/2addr p0, v1

    return p0
.end method

.method public getTsbMarginHeight(Z)F
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCliNavBarHeight()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr p1, p0

    return p1
.end method

.method public isLayout21_9()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout21_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreviewCrop()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    .line 2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isOneNavBarEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreviewUnder()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->uiToggleAlign:Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;->PREVIEW_UNDER:Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldAdjustTopMarginForTopInsetInCenter()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout205_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne p0, v0, :cond_1

    .line 2
    :cond_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mIsTopInsetInCenter:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldTranslateForCutout(ZLandroid/graphics/Rect;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget p0, p2, Landroid/graphics/Rect;->right:I

    int-to-float p1, p0

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    .line 4
    iget p1, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 p1, p1, 0x2

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const-string/jumbo v0, "w:"

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " heightDp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " widthDp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " display size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " indicatorBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " notch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getInsetTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " previewTop43:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    .line 5
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " previewTop169:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    .line 6
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " captureBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarHeight(Z)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " captureBarCli:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarHeight(Z)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " navBar:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getNavBarSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " oneNavBar:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    iget-object v4, v3, Lcom/motorola/camera/CameraApp;->mOneNavBarSize:Landroid/graphics/Point;

    if-nez v4, :cond_3

    .line 13
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 14
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isOneNavBarEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 15
    iget-boolean v4, v3, Lcom/motorola/camera/CameraApp;->mShouldUseMotorolaSettings:Z

    if-eqz v4, :cond_1

    .line 16
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 17
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isOneNavBarEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 18
    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "dimen"

    const-string v7, "android"

    const-string/jumbo v8, "zz_moto_softonenav_navbar_height"

    .line 19
    invoke-virtual {v5, v8, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_0

    .line 20
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v4, v1, v8}, Landroid/graphics/Point;->set(II)V

    :cond_0
    const-string/jumbo v8, "zz_moto_softonenav_navbar_width"

    .line 21
    invoke-virtual {v5, v8, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 22
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v6, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->defaultNavBarSize()Landroid/graphics/Point;

    move-result-object v4

    .line 24
    :cond_2
    :goto_0
    iput-object v4, v3, Lcom/motorola/camera/CameraApp;->mOneNavBarSize:Landroid/graphics/Point;

    .line 25
    :cond_3
    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mOneNavBarSize:Landroid/graphics/Point;

    .line 26
    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " tsbMargin:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight(Z)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " tsbMarginCli:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight(Z)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " surfaceDensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " displayDensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSurface(Lcom/motorola/camera/PreviewSize;F)V
    .locals 9

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->clearScreenBoundElementsSizes()V

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 4
    invoke-static {}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->values()[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    move-result-object v1

    array-length v2, v1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v6

    .line 6
    iget v7, v5, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    iget v8, v5, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 7
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v7, v6, v3

    if-gez v7, :cond_0

    move-object v0, v5

    move v3, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iput-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 9
    iget v0, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    .line 10
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    .line 11
    iput p2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    return-void
.end method
