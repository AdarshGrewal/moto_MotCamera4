.class public Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;
.super Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
.source "LayoutManagerV31.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptureBarGuideLine(Z)F
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->shouldAdjustTopMarginForTopInsetInCenter()Z

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result p1

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getModeCarouselY(Z)F

    move-result p0

    sub-float/2addr v0, p0

    add-float/2addr v0, p1

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    const/high16 p0, 0x42400000    # 48.0f

    add-float/2addr v0, p0

    add-float/2addr v0, v1

    const/high16 p0, 0x42000000    # 32.0f

    add-float/2addr v0, p0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout22_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout21_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarY(Z)F

    move-result v0

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v0

    const/high16 v2, 0x42a00000    # 80.0f

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->mCaptureBarMargin:F

    add-float/2addr v0, v2

    const/high16 v2, 0x42900000    # 72.0f

    add-float/2addr v0, v2

    const/high16 v2, 0x41900000    # 18.0f

    sub-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 7
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

    .line 8
    :cond_6
    :goto_2
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr v0, v1

    if-eqz p1, :cond_7

    .line 9
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarY(Z)F

    move-result p0

    goto :goto_3

    .line 10
    :cond_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    add-float/2addr p0, v0

    :goto_3
    return p0
.end method

.method public getIndicatorBarHeight()F
    .locals 0

    const/high16 p0, 0x42a00000    # 80.0f

    return p0
.end method

.method public getModeCarouselY(Z)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result p1

    const/high16 v0, 0x41c00000    # 24.0f

    add-float/2addr p1, v0

    const/high16 v0, 0x41800000    # 16.0f

    add-float/2addr p1, v0

    .line 2
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    sub-float/2addr p0, p1

    return p0
.end method
