.class public Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;
.source "TooltipTexture.java"


# instance fields
.field public final mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mIsRtl:Z

.field public mShowClose:Z

.field public mTextPaddingX:F

.field public mTextPaddingY:F

.field public final mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mUseDynamicViewSize:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v3, 0x7f06037e

    .line 2
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x3d4ccccd    # 0.05f

    const/high16 v4, 0x41000000    # 8.0f

    .line 3
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;IFF)V

    .line 4
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const-string v7, ""

    const/high16 v8, 0x41600000    # 14.0f

    const/high16 v9, -0x1000000

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 5
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const-string v13, ""

    const/high16 v14, 0x41600000    # 14.0f

    const/high16 v15, -0x1000000

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 6
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const-string v4, ""

    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v6, -0x1000000

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 7
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const v3, 0x7f08017e

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 8
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingX:F

    const/high16 v1, 0x41400000    # 12.0f

    .line 9
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingY:F

    return-void
.end method


# virtual methods
.method public declared-synchronized loadTexture()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->loadTexture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    monitor-exit p0

    .line 5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/motorola/camera/CameraApp;->LOCALES_RTL:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mIsRtl:Z

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->SANS_SERIF_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->updateTexture()V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06009e

    sget-object v3, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 21
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 25
    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public onDraw([F[F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 2
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mIsBubbleVisible:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 7
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mShowClose:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_1
    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/play/core/appupdate/zzy;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 6
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/android/play/core/appupdate/zzy;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v1

    .line 7
    :goto_0
    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mShowClose:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v4

    .line 8
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 9
    invoke-virtual {v4, v5, v6}, Lcom/google/android/play/core/appupdate/zzy;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    :cond_2
    if-nez p1, :cond_3

    if-eqz v1, :cond_4

    .line 10
    :cond_3
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 12
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 13
    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDismissCurrentTooltip()V

    .line 16
    :cond_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v2
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3
    :try_start_2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4
    :try_start_3
    monitor-exit p0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 7
    :try_start_4
    monitor-exit p0

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 12
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_6
    monitor-exit p0

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setDisplayOrientation(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    int-to-float p1, p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 3
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    return-void
.end method

.method public unloadTexture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->unloadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    return-void
.end method
