.class public Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "AlwaysAwareActionsCardTexture.java"


# instance fields
.field public mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

.field public mButtonsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mDensity:F

.field public mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

.field public mIsCardsEvent:Z

.field public mLayoutSize:Landroid/graphics/PointF;

.field public mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

.field public mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

.field public mMultiListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

.field public mMultiListButtonsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[IZF)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    .line 3
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p2, p0, p3, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    .line 4
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setAdapter(Lcom/motorola/camera/ui/widgets/gl/ListAdapter;)V

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mButtonsList:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture$4;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    .line 8
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture$2;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p2, p0, p1, v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    .line 10
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 11
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setAdapter(Lcom/motorola/camera/ui/widgets/gl/ListAdapter;)V

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiListButtonsList:Ljava/util/List;

    :goto_0
    const/4 p1, 0x5

    if-ge v2, p1, :cond_0

    .line 13
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture$3;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const-string p3, " "

    invoke-direct {p1, p0, p2, v3, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ILjava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiListButtonsList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public declared-synchronized getLayoutSize()Landroid/graphics/PointF;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mLayoutSize:Landroid/graphics/PointF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRect()Lcom/google/android/play/core/appupdate/zzy;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v1

    .line 3
    new-instance v1, Lcom/google/android/play/core/appupdate/zzy;

    neg-float v3, v0

    neg-float v4, v2

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/google/android/play/core/appupdate/zzy;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadTexture()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mDensity:F

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->loadTexture()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;)V

    .line 7
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$ListSizeChanged;

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mButtonsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;

    .line 9
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->loadTexture()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->loadTexture()V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;)V

    .line 13
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$ListSizeChanged;

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiListButtonsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;

    .line 15
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 16
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 17
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->loadTexture()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onActionsListChanged()V
    .locals 0

    return-void
.end method

.method public onClick(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V
    .locals 0

    return-void
.end method

.method public onDraw([F[F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public onDrawFbo([F[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->drawFbo([F[F)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->drawFbo([F[F)V

    return-void
.end method

.method public onPreDraw([F[F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;->onPreDraw([F[F)V

    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5
    :cond_1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mIsCardsEvent:Z

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v0
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    monitor-exit v0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setAlpha(F)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setAlpha(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDisplayOrientation(I)V

    return-void
.end method

.method public unloadTexture()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mButtonsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 3
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->unloadTexture()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->clear()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->unloadTexture()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$ListSizeChanged;

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiListButtonsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;

    .line 9
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->unloadTexture()V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->clear()V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->unloadTexture()V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    .line 13
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$ListSizeChanged;

    .line 14
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    return-void
.end method

.method public final updateMultiIntentTranslations()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 3
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mDensity:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mLayoutSize:Landroid/graphics/PointF;

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v5, 0x41800000    # 16.0f

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mDensity:F

    mul-float/2addr v6, v5

    sub-float/2addr v3, v6

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setPostScale(FFF)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setAbsoluteRadius(F)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method

.method public updateTranslations()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 3
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mDensity:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mLayoutSize:Landroid/graphics/PointF;

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mDensity:F

    mul-float/2addr v5, v2

    sub-float/2addr v3, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setPostScale(FFF)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    const/high16 v1, 0x41000000    # 8.0f

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mDensity:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setAbsoluteRadius(F)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(FFF)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;->doLayout()V

    return-void
.end method
