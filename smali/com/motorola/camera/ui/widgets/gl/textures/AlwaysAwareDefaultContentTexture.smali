.class public Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareCardTexture;
.source "AlwaysAwareDefaultContentTexture.java"


# static fields
.field public static final BYLINE_COLOR:I

.field public static final DESCRIPTION_COLOR:I

.field public static final SECTION_HEADER_COLOR:I

.field public static final TITLE_COLOR:I


# instance fields
.field public mAction:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

.field public mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

.field public mDensity:F

.field public mDetailsText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mLayoutSize:Landroid/graphics/PointF;

.field public mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

.field public mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f060346

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Application;->getColor(I)I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->SECTION_HEADER_COLOR:I

    .line 3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f0600a1

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Application;->getColor(I)I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->DESCRIPTION_COLOR:I

    .line 5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f060028

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getColor(I)I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->TITLE_COLOR:I

    .line 7
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f060027

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Application;->getColor(I)I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->BYLINE_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareCardTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[IZF)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->TITLE_COLOR:I

    const-string v6, " "

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 4
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    .line 6
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget v5, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->BYLINE_COLOR:I

    const-string v3, " "

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDetailsText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 7
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

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
.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mLayoutSize:Landroid/graphics/PointF;

    return-object p0
.end method

.method public declared-synchronized getRect()Lcom/google/android/play/core/appupdate/zzy;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mLayoutSize:Landroid/graphics/PointF;

    .line 2
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 3
    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v2

    .line 4
    new-instance v2, Lcom/google/android/play/core/appupdate/zzy;

    neg-float v3, v1

    neg-float v4, v0

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/google/android/play/core/appupdate/zzy;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadTexture()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDensity:F

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDensity:F

    const/high16 v3, 0x42000000    # 32.0f

    mul-float v4, v2, v3

    sub-float/2addr v1, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDetailsText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 5
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mWordWrapWidth:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDetailsText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return-void
.end method

.method public onClick(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V
    .locals 0

    const p0, 0x0

    throw p0
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
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDetailsText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mAction:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->onClick(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V

    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3
    :try_start_2
    monitor-exit p0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    .line 5
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    :try_start_3
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :try_start_4
    monitor-exit v0

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDetailsText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onDirty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 11
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_5
    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    .line 13
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public unloadTexture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mTitleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mDetailsText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    return-void
.end method
