.class public Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "AlwaysAwareMoreResultsButtonTexture.java"


# static fields
.field public static final ACTION_COLOR:I

.field public static final PRESSED_COLOR:I


# instance fields
.field public mAction:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

.field public mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

.field public mDrawLine:Z

.field public mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mLayoutSize:Landroid/graphics/PointF;

.field public mLine:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

.field public mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

.field public mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f0603aa

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Application;->getColor(I)I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->PRESSED_COLOR:I

    .line 3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f060026

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Application;->getColor(I)I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->ACTION_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ILjava/lang/String;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[IZF)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget v7, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->ACTION_COLOR:I

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v8, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 5
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    .line 6
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object p3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->LN_GRAY:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLine:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 7
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mDrawLine:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

    return-object p0
.end method

.method public declared-synchronized getRect()Lcom/google/android/play/core/appupdate/zzy;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

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
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 2
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v3, 0x42000000    # 32.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadResource()V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLine:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLine:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mDrawLine:Z

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 12
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return-void
.end method

.method public onAction(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V
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
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLine:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mAction:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->onAction(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V

    return-void
.end method

.method public onTouchDown(Landroid/graphics/PointF;J)V
    .locals 0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->setPressed(ZZ)V

    return-void
.end method

.method public onTouchUp(Landroid/graphics/PointF;JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->setPressed(ZZ)V

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
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2
    :try_start_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 3
    :try_start_2
    monitor-exit p0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    .line 5
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 6
    :try_start_3
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 7
    :try_start_4
    monitor-exit v0

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 9
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 10
    :try_start_5
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 11
    :try_start_6
    monitor-exit v0

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 13
    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 14
    :try_start_7
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 15
    :try_start_8
    monitor-exit v0

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLine:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onDirty()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 18
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 19
    :try_start_9
    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 20
    monitor-exit v0

    throw p1

    :catchall_2
    move-exception p1

    .line 21
    monitor-exit v0

    throw p1

    :catchall_3
    move-exception p1

    goto :goto_0

    :catchall_4
    move-exception p1

    .line 22
    monitor-exit p0

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    return-void
.end method

.method public setPressed(ZZ)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->PRESSED_COLOR:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setColors([I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setColors([I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onDirty()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public unloadTexture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLine:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
