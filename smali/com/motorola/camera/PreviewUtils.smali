.class public Lcom/motorola/camera/PreviewUtils;
.super Ljava/lang/Object;
.source "PreviewUtils.java"


# static fields
.field public static mHDtoFullTrans:F

.field public static final mRatioList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/PreviewRatio;",
            ">;"
        }
    .end annotation
.end field

.field public static mSTtoFullTrans:F

.field public static mSTtoHDTrans:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/PreviewUtils;->mRatioList:Ljava/util/ArrayList;

    return-void
.end method

.method public static getPreviewRatio(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;FFF)Lcom/motorola/camera/PreviewRatio;
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/PreviewUtils;->mRatioList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/PreviewRatio;

    .line 2
    iget v3, v2, Lcom/motorola/camera/PreviewRatio;->source:F

    invoke-static {v3, p1}, Lcom/motorola/camera/PreviewRatio;->isSameAspectRatio(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/motorola/camera/PreviewRatio;->current:F

    .line 3
    invoke-static {v3, p2}, Lcom/motorola/camera/PreviewRatio;->isSameAspectRatio(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/motorola/camera/PreviewRatio;->target:F

    .line 4
    invoke-static {v3, p3}, Lcom/motorola/camera/PreviewRatio;->isSameAspectRatio(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/motorola/camera/PreviewRatio;->clone()Lcom/motorola/camera/PreviewRatio;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureScaleLayout(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    sget-object p1, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result p2

    iget p3, v1, Lcom/motorola/camera/PreviewRatio;->source:F

    cmpl-float p2, p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    if-nez p2, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result p2

    iget v0, v1, Lcom/motorola/camera/PreviewRatio;->target:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_3

    sget-object p2, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    .line 9
    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result p2

    iget v0, v1, Lcom/motorola/camera/PreviewRatio;->current:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_3

    .line 10
    iget p1, v1, Lcom/motorola/camera/PreviewRatio;->translate:F

    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result p2

    .line 11
    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 12
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr p2, p0

    div-float/2addr p2, p3

    add-float/2addr p2, p1

    .line 13
    iput p2, v1, Lcom/motorola/camera/PreviewRatio;->translate:F

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result p2

    iget v0, v1, Lcom/motorola/camera/PreviewRatio;->source:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result p1

    iget p2, v1, Lcom/motorola/camera/PreviewRatio;->current:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_4

    sget-object p1, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    .line 16
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result p1

    iget p2, v1, Lcom/motorola/camera/PreviewRatio;->target:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_4

    .line 17
    iget p1, v1, Lcom/motorola/camera/PreviewRatio;->translate:F

    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result p2

    .line 18
    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 19
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr p2, p0

    div-float/2addr p2, p3

    sub-float/2addr p1, p2

    .line 20
    iput p1, v1, Lcom/motorola/camera/PreviewRatio;->translate:F

    :cond_4
    :goto_2
    return-object v1
.end method

.method public static initPreviewRatio(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;Lcom/motorola/camera/PreviewSize;FZ)V
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 1
    sget-object v2, Lcom/motorola/camera/PreviewUtils;->mRatioList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-boolean v3, v3, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v3, :cond_0

    return-void

    .line 4
    :cond_0
    move-object/from16 v3, p0

    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 5
    iget-object v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 6
    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->getAspectRatio()F

    move-result v3

    .line 7
    invoke-static {v3, v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getFullScreenRatio(FZ)F

    move-result v3

    .line 8
    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result v11

    .line 9
    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_PHOTO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    .line 10
    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result v12

    .line 11
    sget-object v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result v13

    .line 12
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result v14

    .line 13
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result v4

    div-float v15, v3, v4

    .line 14
    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result v4

    div-float v16, v3, v4

    .line 15
    iget v4, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v5, v4

    mul-float/2addr v5, v13

    int-to-float v4, v4

    mul-float/2addr v4, v12

    sub-float/2addr v5, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v10, v5, v4

    .line 16
    move-object/from16 v5, p0

    check-cast v5, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v5

    mul-float v5, v5, p2

    .line 17
    iget v6, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v6

    mul-float/2addr v7, v3

    int-to-float v6, v6

    mul-float/2addr v6, v12

    sub-float/2addr v7, v6

    mul-float/2addr v7, v4

    .line 18
    invoke-interface/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v6

    mul-float v6, v6, p2

    sub-float/2addr v7, v6

    sub-float v9, v7, v5

    .line 19
    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v0

    mul-float/2addr v6, v3

    int-to-float v0, v0

    mul-float/2addr v0, v13

    sub-float/2addr v6, v0

    mul-float/2addr v6, v4

    .line 20
    invoke-interface/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v0

    mul-float v0, v0, p2

    sub-float/2addr v6, v0

    sub-float v0, v6, v5

    .line 21
    sput v10, Lcom/motorola/camera/PreviewUtils;->mSTtoHDTrans:F

    .line 22
    sput v9, Lcom/motorola/camera/PreviewUtils;->mSTtoFullTrans:F

    .line 23
    sput v0, Lcom/motorola/camera/PreviewUtils;->mHDtoFullTrans:F

    if-eqz v1, :cond_1

    const v0, 0x3faaaa8f

    const/4 v9, 0x0

    const v8, 0x3faaaa8f

    move v4, v11

    move v5, v11

    move v6, v3

    move v7, v11

    .line 24
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-float v6, v11, v0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move v8, v11

    .line 25
    invoke-static/range {v5 .. v10}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v6, 0x3faaaa8f

    move v7, v13

    move v9, v13

    .line 26
    invoke-static/range {v5 .. v10}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    const v8, 0x3faaaa8f

    move v4, v13

    move v5, v13

    move v6, v3

    move v7, v12

    .line 27
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-float/2addr v0, v13

    const/high16 v9, 0x3f800000    # 1.0f

    move v6, v0

    move v7, v13

    move v8, v12

    .line 28
    invoke-static/range {v5 .. v10}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v11

    .line 29
    invoke-static/range {v5 .. v10}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    move v5, v12

    move v6, v12

    move v7, v13

    move v8, v12

    move v1, v9

    move v9, v14

    move v11, v10

    .line 30
    invoke-static/range {v5 .. v10}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v12

    move v6, v3

    move v7, v12

    move v8, v15

    move v9, v1

    .line 31
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v12

    move v5, v13

    move v7, v13

    move/from16 v8, v16

    move v9, v0

    .line 32
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v9, 0x3f800000    # 1.0f

    neg-float v10, v11

    move v5, v12

    move v6, v13

    move v7, v12

    move v8, v13

    .line 33
    invoke-static/range {v5 .. v10}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-float v10, v0

    move v4, v12

    move v5, v3

    move v7, v3

    move v8, v14

    move v9, v10

    .line 34
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v8, 0x3f800000    # 1.0f

    neg-float v9, v1

    move v4, v12

    move v6, v12

    .line 35
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v13

    move v5, v13

    move v6, v3

    move v7, v13

    move/from16 v8, v16

    move v9, v0

    .line 36
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {v13, v13, v12, v13, v12}, Lcom/motorola/camera/PreviewRatio;->crop(FFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v8, 0x3f800000    # 1.0f

    move v5, v3

    move v6, v13

    move v7, v3

    move v9, v10

    .line 38
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {v13, v3, v12, v3, v12}, Lcom/motorola/camera/PreviewRatio;->crop(FFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {v13, v12, v13, v12, v13}, Lcom/motorola/camera/PreviewRatio;->crop(FFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v12

    move v6, v3

    move v7, v12

    move v8, v15

    move v9, v1

    .line 41
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/PreviewRatio;->scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {v3, v3, v13, v3, v13}, Lcom/motorola/camera/PreviewRatio;->crop(FFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {v3, v3, v12, v3, v12}, Lcom/motorola/camera/PreviewRatio;->crop(FFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {v3, v13, v12, v13, v12}, Lcom/motorola/camera/PreviewRatio;->crop(FFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {v3, v12, v13, v12, v13}, Lcom/motorola/camera/PreviewRatio;->crop(FFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {v3, v13, v3, v13, v3}, Lcom/motorola/camera/PreviewRatio;->crop(FFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {v3, v12, v3, v12, v3}, Lcom/motorola/camera/PreviewRatio;->crop(FFFFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
