.class public Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "AlwaysAwarePopup.java"


# static fields
.field public static final LOADING_PROGRESS_ANGLES:[F

.field public static final LOADING_PROGRESS_RADII:[F


# instance fields
.field public mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

.field public mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mButtonScanCallback:Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;

.field public mDensity:F

.field public mDraggingCards:Z

.field public mDraggingH:Z

.field public mDraggingV:Z

.field public mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mLastPosition:Landroid/graphics/PointF;

.field public mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

.field public mLoadingProgressTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

.field public mNoActionTaken:Z

.field public mOnDownHandled:Z

.field public mOnDownOrigin:Landroid/graphics/PointF;

.field public mOnUpHandled:Z

.field public mPreviewFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->LOADING_PROGRESS_RADII:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->LOADING_PROGRESS_ANGLES:[F

    return-void

    :array_0
    .array-data 4
        0x3ef13b14
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mNoActionTaken:Z

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownHandled:Z

    .line 6
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnUpHandled:Z

    .line 7
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 8
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mButtonScanCallback:Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;

    return-void
.end method

.method public static access$500(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getNavBarSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5
    :goto_0
    new-instance v2, Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    sub-float/2addr p0, v0

    invoke-direct {v2, v3, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 6
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    neg-float v0, v0

    invoke-direct {p0, v1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p0
.end method


# virtual methods
.method public final animateTo(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FZ)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 1
    iget v1, v7, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v1, :cond_1

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v3, v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    if-eqz v3, :cond_2

    .line 3
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    goto :goto_2

    :cond_2
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    :goto_2
    move v12, v1

    if-eqz v3, :cond_3

    .line 4
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    goto :goto_3

    :cond_3
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    :goto_3
    move v13, v0

    .line 5
    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p4

    move v5, v13

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;ZZFF)V

    sub-float v0, v13, v12

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float v0, v0, p3

    float-to-long v10, v0

    const/4 v14, 0x2

    const/4 v0, 0x0

    move-object v8, v15

    move-object v1, v15

    move v15, v0

    invoke-direct/range {v8 .. v15}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 7
    iget v0, v7, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 8
    iget-object v0, v7, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final dismissCards(ZZLcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mAlwaysAwareData:Lcom/motorola/camera/analytics/AlwaysAwareData;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->updateAlwaysAwareAnalyticsData(Lcom/motorola/camera/analytics/AlwaysAwareData;I)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mAlwaysAwareData:Lcom/motorola/camera/analytics/AlwaysAwareData;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget p3, p3, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->checkInData:I

    iput p3, v0, Lcom/motorola/camera/analytics/AlwaysAwareData;->action:I

    .line 8
    :cond_0
    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    iget-object p3, p3, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    if-eqz v2, :cond_2

    .line 12
    iget-object v3, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mAlwaysAwareData:Lcom/motorola/camera/analytics/AlwaysAwareData;

    invoke-virtual {v2}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getFieldsCount()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v3, Lcom/motorola/camera/analytics/AlwaysAwareData;->totFields:J

    .line 13
    :cond_2
    iget-object v2, p3, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAlwaysAwareEvent:Lcom/motorola/camera/analytics/AlwaysAwareEvent;

    iget-object v3, p3, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p3, p3, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mAlwaysAwareData:Lcom/motorola/camera/analytics/AlwaysAwareData;

    invoke-virtual {v2, v3, p3, v0}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/google/android/exoplayer2/FormatHolder;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    if-eqz p1, :cond_6

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 15
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    iget-object p3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 17
    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture$3;

    invoke-direct {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;)V

    if-eqz p2, :cond_5

    const-wide/16 v3, 0x64

    goto :goto_1

    :cond_5
    const-wide/16 v3, 0x12c

    .line 18
    :goto_1
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, p3

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 19
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 20
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_2

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_7
    :goto_2
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getActionsPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 2
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getTsbMarginHeight(Z)F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDensity:F

    mul-float/2addr v0, v1

    .line 3
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 5
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 6
    new-instance p0, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p0

    invoke-direct {v1, v4, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object v1
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 3
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 5
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

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
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 9
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates;->CONNECT_WIFI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v1, v0, v3

    .line 11
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AlwaysAwarePopup"

    return-object p0
.end method

.method public declared-synchronized loadTextures()Z
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDensity:F

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$2;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    aput v3, v2, v5

    const/4 v3, 0x2

    const/high16 v6, -0x80000000

    aput v6, v2, v3

    const/4 v3, 0x3

    aput v6, v2, v3

    invoke-direct {v0, v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[IZ)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 4
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mPreviewFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 5
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;II)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLoadingProgressTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 7
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->loadTexture()V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 13
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxSurfaceSize:Landroid/graphics/Point;

    .line 14
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDensity:F

    const/high16 v2, 0x42c40000    # 98.0f

    mul-float/2addr v1, v2

    .line 15
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float v2, v1, v2

    float-to-int v1, v1

    .line 16
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 17
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mPreviewFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mPreviewFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewScale()V

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mPreviewFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setCircleCrop()V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mPreviewFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mPreviewFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    .line 22
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDensity:F

    const/high16 v1, 0x42d00000    # 104.0f

    mul-float/2addr v0, v1

    .line 23
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLoadingProgressTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->LOADING_PROGRESS_ANGLES:[F

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->LOADING_PROGRESS_RADII:[F

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->setProgressAttr([F[F)V

    .line 24
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLoadingProgressTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    neg-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLoadingProgressTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLoadingProgressTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLoadingProgressTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->loadTexture()V

    .line 28
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->onRotate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return v5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDraw([F[F[F)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 2
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->onDraw([F[F)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 4
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->onDraw([F[F)V

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mPreviewFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLoadingProgressTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    .line 7
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->onDraw([F[F)V

    :cond_2
    return-void
.end method

.method public onDrawFbo([F[F[F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 2
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->onDrawFbo([F[F)V

    :cond_0
    return-void
.end method

.method public onPreDraw([F[F[F)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 2
    iget-object v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 3
    iget-object v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    invoke-virtual {v0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onPreDraw([F[F)V

    .line 4
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->onPreDraw([F[F)V

    .line 5
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mPreviewFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLoadingProgressTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

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
    .locals 5

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
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->updateGradientPosition()V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mPreviewFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 7
    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewScale()V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mPreviewFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v4, v4

    invoke-direct {v0, v4, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLoadingProgressTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 12
    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 13
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    int-to-float v0, v0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v2, v0, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->onRotate(I)V

    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v1, 0xb4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 2
    :goto_1
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 4
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingH:Z

    .line 5
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingV:Z

    .line 6
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingCards:Z

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 8
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 9
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 10
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 11
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownHandled:Z

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownOrigin:Landroid/graphics/PointF;

    .line 13
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastPosition:Landroid/graphics/PointF;

    .line 14
    :cond_2
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownHandled:Z

    return p0

    .line 15
    :cond_3
    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownHandled:Z

    if-eqz v4, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    :goto_2
    sub-float/2addr v2, v4

    .line 18
    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingV:Z

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingH:Z

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingCards:Z

    if-nez v4, :cond_8

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 20
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    :goto_3
    sub-float/2addr v4, v5

    .line 21
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 22
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingV:Z

    .line 23
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->resetTouchFeedback()V

    goto :goto_4

    .line 24
    :cond_6
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 25
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    .line 26
    iget-boolean v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mIsCardsEvent:Z

    if-eqz v4, :cond_7

    .line 27
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 28
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingCards:Z

    .line 29
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->resetTouchFeedback()V

    goto :goto_4

    .line 30
    :cond_7
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    .line 31
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingH:Z

    .line 32
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->resetTouchFeedback()V

    .line 33
    :cond_8
    :goto_4
    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingV:Z

    const/16 v5, 0x10e

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v4, :cond_b

    .line 34
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v7

    neg-float v4, v4

    invoke-direct {v0, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 36
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-ne v2, v1, :cond_9

    .line 37
    iget v1, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :cond_9
    if-ne v2, v5, :cond_a

    .line 38
    iget v1, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 39
    :cond_a
    :goto_5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownOrigin:Landroid/graphics/PointF;

    invoke-virtual {v1, v3, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 40
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 41
    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto :goto_8

    .line 42
    :cond_b
    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingCards:Z

    if-eqz v4, :cond_e

    .line 43
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    neg-float v2, v2

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v7

    neg-float v4, v4

    invoke-direct {v0, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 45
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-ne v2, v1, :cond_c

    .line 46
    iget v1, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_6

    :cond_c
    if-ne v2, v5, :cond_d

    .line 47
    iget v1, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 48
    :cond_d
    :goto_6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownOrigin:Landroid/graphics/PointF;

    invoke-virtual {v1, v3, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->onCardsDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 49
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 50
    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto :goto_8

    .line 51
    :cond_e
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingH:Z

    if-eqz v1, :cond_10

    .line 52
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->getActionsPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    if-eqz v0, :cond_f

    .line 53
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v4, v2

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v0, v4, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_7

    .line 54
    :cond_f
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v5, v2

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v0, v4, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 55
    :goto_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->updateTranslations()V

    .line 56
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 57
    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 58
    :cond_10
    :goto_8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return v3

    .line 59
    :cond_11
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownHandled:Z

    if-eqz v1, :cond_1e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1e

    .line 60
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnUpHandled:Z

    .line 61
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingV:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_12

    .line 62
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {p1, v2, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto/16 :goto_f

    .line 63
    :cond_12
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingCards:Z

    if-eqz v1, :cond_13

    .line 64
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 65
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    .line 66
    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mIsCardsEvent:Z

    .line 67
    invoke-virtual {p1, v2, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->onCardsDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto/16 :goto_f

    .line 68
    :cond_13
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingH:Z

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_14

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    goto :goto_9

    .line 70
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    :goto_9
    sub-float/2addr p1, v1

    .line 71
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_15

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_a

    :cond_15
    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_a
    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    cmpg-float v1, v1, v4

    const/high16 v4, 0x3fc00000    # 1.5f

    if-gtz v1, :cond_16

    .line 72
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->getActionsPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->animateTo(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FZ)V

    goto :goto_e

    .line 73
    :cond_16
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->getActionsPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v0, :cond_18

    .line 74
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    cmpl-float v2, p1, v2

    if-lez v2, :cond_17

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_b

    .line 75
    :cond_17
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v2, v2

    :goto_b
    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-direct {v0, v2, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_d

    .line 76
    :cond_18
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v7, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_19

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_c

    .line 77
    :cond_19
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v2, v2

    :goto_c
    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-direct {v0, v7, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 78
    :goto_d
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1a

    .line 79
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {p0, p1, v0, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->animateTo(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FZ)V

    :cond_1a
    :goto_e
    return v3

    .line 80
    :cond_1b
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 81
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 82
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return p0

    .line 84
    :cond_1c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownHandled:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnUpHandled:Z

    if-nez v0, :cond_1d

    return v3

    .line 85
    :cond_1d
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mPreviewFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mPreviewFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1e

    return v3

    .line 86
    :cond_1e
    :goto_f
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnUpHandled:Z

    .line 87
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mOnDownHandled:Z

    .line 88
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDraggingCards:Z

    return v2
.end method

.method public final setupResult(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->clear()V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mDefaultCard:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture$2;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mDefaultCard:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    .line 7
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 10
    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->loadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_1
    monitor-exit p0

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mDefaultCard:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v1}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Url:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 15
    iget-object v1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    check-cast v1, Lcom/motorola/camera/detector/results/tidbit/Url;

    .line 16
    iget-object v2, v1, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Url;->getUrlAction(Ljava/lang/String;)Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 17
    iget-object v1, v1, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/detector/results/tidbit/Url;->getUrlAction(Ljava/lang/String;)Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mAction:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getAllActions()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mAction:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getAllActions()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mAction:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    .line 21
    :goto_1
    iget-object v1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v1}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Contact:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    move v1, v3

    .line 22
    :goto_2
    iget-object v2, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v2}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Product:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    if-ne v2, v5, :cond_5

    move v2, v4

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_4

    .line 23
    :cond_6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget v2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->SECTION_HEADER_COLOR:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    .line 24
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    .line 25
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDetailsText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget v2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->DESCRIPTION_COLOR:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    goto :goto_5

    .line 26
    :cond_7
    :goto_4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget v2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->TITLE_COLOR:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    .line 27
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    .line 28
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDetailsText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget v2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->BYLINE_COLOR:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    .line 29
    :goto_5
    iget-object v1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v1}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getTitleString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\\t\\n\\r]"

    const-string v5, " "

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 31
    iget-object v1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v1}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getDetailsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 32
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDetailsText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 33
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDensity:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    const/4 v5, 0x0

    add-float/2addr v1, v5

    .line 34
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v6

    .line 35
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDetailsText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v6

    .line 36
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDensity:F

    mul-float/2addr v6, v2

    add-float/2addr v6, v1

    .line 37
    new-instance v1, Landroid/graphics/PointF;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v7

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDensity:F

    const/high16 v9, 0x42000000    # 32.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-direct {v1, v7, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mLayoutSize:Landroid/graphics/PointF;

    .line 38
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDensity:F

    mul-float/2addr v9, v2

    sub-float/2addr v7, v9

    div-float/2addr v6, v8

    invoke-virtual {v1, v7, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setPostScale(FFF)V

    .line 39
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDensity:F

    const/high16 v7, 0x41000000    # 8.0f

    mul-float/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setAbsoluteRadius(F)V

    .line 40
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mLayoutSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v8

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDensity:F

    mul-float/2addr v6, v2

    sub-float/2addr v1, v6

    .line 41
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v8

    sub-float v6, v1, v6

    invoke-virtual {v2, v5, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 42
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDensity:F

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v6, v7

    add-float/2addr v6, v2

    sub-float/2addr v1, v6

    .line 43
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDetailsText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v8

    sub-float/2addr v1, v6

    invoke-virtual {v2, v5, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 44
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onDirty()V

    .line 45
    :cond_8
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z

    .line 46
    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 47
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getAllActions()Ljava/util/List;

    move-result-object p1

    .line 49
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mDensity:F

    const/high16 v5, 0x42900000    # 72.0f

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 50
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->clear()V

    .line 51
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x7

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v5, 0x4

    if-le v2, v5, :cond_9

    const/high16 v5, 0x40900000    # 4.5f

    goto :goto_6

    :cond_9
    int-to-float v5, v2

    :goto_6
    div-float v5, v1, v5

    .line 52
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    if-eqz v6, :cond_b

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_a

    goto :goto_7

    :cond_a
    move v6, v3

    goto :goto_8

    :cond_b
    :goto_7
    move v6, v4

    .line 53
    :goto_8
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 54
    invoke-virtual {v7}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getNavBarSize()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    goto :goto_9

    :cond_c
    move v7, v3

    .line 55
    :goto_9
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v6, :cond_d

    iget v9, v8, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_a

    :cond_d
    iget v9, v8, Lcom/motorola/camera/PreviewSize;->height:I

    sub-int/2addr v9, v7

    :goto_a
    if-eqz v6, :cond_e

    .line 56
    iget v6, v8, Lcom/motorola/camera/PreviewSize;->height:I

    sub-int/2addr v6, v7

    goto :goto_b

    :cond_e
    iget v6, v8, Lcom/motorola/camera/PreviewSize;->width:I

    .line 57
    :goto_b
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    .line 58
    iget-object v8, v7, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    .line 59
    iget v10, v8, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mWidth:I

    if-ne v10, v9, :cond_f

    .line 60
    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mHeight:I

    if-eq v8, v6, :cond_10

    .line 61
    :cond_f
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    invoke-direct {v8, v9, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;-><init>(II)V

    .line 62
    iput-object v8, v7, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    .line 63
    iput-boolean v4, v7, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    .line 64
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;->doLayout()V

    .line 65
    :cond_10
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    invoke-virtual {v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 66
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v6, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    move v6, v3

    :goto_c
    const/high16 v7, 0x41c00000    # 24.0f

    if-ge v6, v2, :cond_12

    .line 67
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mButtonsList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_11

    .line 68
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mButtonsList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;

    .line 69
    new-instance v9, Landroid/graphics/PointF;

    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mDensity:F

    mul-float/2addr v10, v7

    invoke-direct {v9, v5, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->setLayoutSize(Landroid/graphics/PointF;)V

    .line 70
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z

    goto :goto_d

    .line 71
    :cond_11
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture$4;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v9, -0x1

    invoke-direct {v8, v0, v7, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    .line 72
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mButtonsList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v9, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0, v8, v5}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;F)V

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 74
    iget-object v10, v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v11, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v11, v7, v9}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    :goto_d
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    .line 76
    iput-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    .line 77
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    .line 78
    iput-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mAction:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    .line 79
    iget-object v7, v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 80
    iget v7, v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sRes:I

    .line 81
    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v8, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->setResource(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 82
    :cond_12
    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    float-to-int v1, v1

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mDensity:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-direct {v2, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;-><init>(II)V

    .line 83
    iput-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    .line 84
    iput-boolean v4, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    .line 85
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;->doLayout()V

    .line 86
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->updateTranslations()V

    .line 87
    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz p1, :cond_13

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onDirty()V

    .line 88
    :cond_13
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->updateTranslations()V

    .line 89
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 90
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z

    .line 91
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->updateLayoutBounds()V

    .line 92
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    move v3, v4

    :cond_14
    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 93
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    .line 94
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    return-void

    :catchall_0
    move-exception p1

    .line 95
    monitor-exit p0

    throw p1
.end method

.method public final showCards(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->updateGradientPosition()V

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result p1

    const v0, 0x3f733333    # 0.95f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;

    invoke-direct {v3, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;Z)V

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 6
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 7
    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_1
    return-void
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates;->CONNECT_WIFI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-static {v0}, Lcom/motorola/camera/detector/results/tidbit/actions/WiFiAction;->enableWiFiPanel(Lcom/motorola/camera/EventListener;)V

    .line 3
    new-instance v0, Lcom/motorola/camera/utility/WifiConnection;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/utility/WifiConnection;-><init>(Lcom/motorola/camera/EventListener;Lcom/motorola/camera/fsm/ChangeEvent;)V

    invoke-virtual {v0}, Lcom/motorola/camera/utility/WifiConnection;->connect()V

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz p1, :cond_a

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mDefaultCard:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    if-eqz v2, :cond_2

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 9
    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->setupResult(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->showCards(Z)V

    goto/16 :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 14
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SMART_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "RETURN_ACTION"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 17
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mNoActionTaken:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 18
    sget-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->UNKNOWN:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 19
    :cond_4
    invoke-virtual {p0, v2, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->dismissCards(ZZLcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    const-string v0, "RETURN_ACTION"

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_0

    .line 23
    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    if-eqz p1, :cond_7

    .line 26
    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 27
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 28
    :cond_7
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 29
    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAlwaysAwareSupported()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 31
    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mButtonScanCallback:Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/detector/ScanningEngine;->addScanCallback(Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;)V

    goto :goto_0

    .line 32
    :cond_9
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 33
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 34
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    :cond_a
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unloadTextures()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->unloadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mPreviewFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLoadingProgressTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->unloadTexture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateAlwaysAwareAnalyticsData(Lcom/motorola/camera/analytics/AlwaysAwareData;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p1, Lcom/motorola/camera/analytics/AlwaysAwareData;->detectionTime:J

    .line 2
    invoke-static {}, Lcom/motorola/camera/NetworkUtil;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    const/4 p2, 0x3

    goto :goto_2

    .line 4
    :cond_2
    invoke-static {p0}, Lcom/motorola/camera/NetworkUtil;->isMobileDataConnected(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p2, 0x2

    goto :goto_2

    :cond_3
    if-eqz p0, :cond_4

    .line 5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, p2, :cond_4

    move p0, p2

    goto :goto_1

    :cond_4
    move p0, v0

    :goto_1
    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move p2, v0

    .line 7
    :goto_2
    iput p2, p1, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkType:I

    .line 8
    invoke-static {}, Lcom/motorola/camera/NetworkUtil;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/motorola/camera/NetworkUtil;->isMobileDataConnected(Landroid/net/NetworkInfo;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 10
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 11
    :cond_6
    iput v0, p1, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkSubtype:I

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGeoAvailable()Z

    move-result p0

    iput-boolean p0, p1, Lcom/motorola/camera/analytics/AlwaysAwareData;->geoAvailable:Z

    return-void
.end method

.method public final updateGradientPosition()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 2
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, v2, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method
