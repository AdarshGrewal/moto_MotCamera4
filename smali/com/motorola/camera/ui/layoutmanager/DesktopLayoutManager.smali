.class public Lcom/motorola/camera/ui/layoutmanager/DesktopLayoutManager;
.super Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
.source "DesktopLayoutManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptureBarGuideLine(Z)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY(Z)F

    move-result p0

    sub-float/2addr v0, p0

    const/high16 p0, 0x41c00000    # 24.0f

    sub-float/2addr v0, p0

    const/high16 p0, 0x42100000    # 36.0f

    sub-float/2addr v0, p0

    const/high16 p0, 0x41900000    # 18.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method public getCaptureBarHeight(Z)F
    .locals 0

    const/high16 p0, 0x42900000    # 72.0f

    return p0
.end method

.method public getToggleBarGuideLine(Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;)F
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/DesktopLayoutManager;->getCaptureBarGuideLine(Z)F

    move-result p1

    const/high16 v0, 0x42100000    # 36.0f

    sub-float/2addr p1, v0

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->modeControlBarSize:F

    sub-float/2addr p1, p0

    const/high16 p0, 0x42880000    # 68.0f

    sub-float/2addr p1, p0

    return p1
.end method

.method public getTsbMarginHeight(Z)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldTranslateForCutout(ZLandroid/graphics/Rect;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
