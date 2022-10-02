.class public final Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;
.super Ljava/lang/Object;
.source "SecondarySurfaceView.kt"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/motorola/camera/cli/DualPreviewManager$SecondaryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SecondaryRenderer"
.end annotation


# instance fields
.field public previewOffsetIndex:I

.field public final previewOffsets:[F

.field public final projectionMatrix:[F

.field public final sharedContext:Lcom/motorola/camera/ui/widgets/gl/SharedContext;

.field public size:Landroid/util/Size;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

.field public final viewMatrix:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;Lcom/motorola/camera/ui/widgets/gl/SharedContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ui/widgets/gl/SharedContext;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->this$0:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->sharedContext:Lcom/motorola/camera/ui/widgets/gl/SharedContext;

    .line 3
    new-instance p1, Landroid/util/Size;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    const/16 p1, 0x10

    new-array p2, p1, [F

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->viewMatrix:[F

    new-array p1, p1, [F

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->projectionMatrix:[F

    const/4 p1, 0x6

    new-array p1, p1, [F

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->previewOffsets:[F

    return-void
.end method


# virtual methods
.method public final doDrawFrame()V
    .locals 15

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v0, v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    const/16 v2, 0x4000

    .line 2
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    .line 3
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->sharedContext:Lcom/motorola/camera/ui/widgets/gl/SharedContext;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$1;

    .line 5
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 6
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    .line 7
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v3

    .line 8
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 9
    instance-of v3, v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_2

    goto/16 :goto_6

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->sharedContext:Lcom/motorola/camera/ui/widgets/gl/SharedContext;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$1;

    .line 12
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 13
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    .line 14
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v2

    .line 15
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewPort:[I

    const/4 v3, 0x2

    .line 16
    aget v2, v2, v3

    int-to-float v2, v2

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->isCrop()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    goto :goto_2

    .line 19
    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 20
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 21
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 22
    check-cast v5, Landroid/util/Size;

    .line 23
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    div-float/2addr v2, v6

    :goto_2
    div-float/2addr v3, v2

    .line 24
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->isCrop()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 25
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 26
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 27
    check-cast v2, Landroid/util/Size;

    .line 28
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    .line 29
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->previewOffsets:[F

    const-string v8, "$this$average"

    .line 30
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    array-length v8, v7

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-wide v11, v10

    move v10, v9

    :goto_3
    if-ge v9, v8, :cond_4

    aget v13, v7, v9

    float-to-double v13, v13

    add-double/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    if-nez v10, :cond_5

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    goto :goto_4

    :cond_5
    int-to-double v7, v10

    div-double v7, v11, v7

    :goto_4
    double-to-float v7, v7

    .line 32
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v7, v2

    div-float/2addr v7, v6

    neg-float v2, v5

    .line 33
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v0

    .line 34
    :goto_5
    invoke-virtual {v4, v3, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 35
    invoke-virtual {v4, v0, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 36
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->viewMatrix:[F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->projectionMatrix:[F

    invoke-virtual {v4, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :goto_6
    return-void
.end method

.method public final isCrop()Z
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x2

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->sharedContext:Lcom/motorola/camera/ui/widgets/gl/SharedContext;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$1;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mDrawLock:Ljava/lang/Object;

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->updatePreviewOffset()V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->doDrawFrame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Landroid/util/Size;

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    .line 2
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v5, v1, v2

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float v8, v1, v2

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->viewport(IIII)V

    .line 5
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->projectionMatrix:[F

    neg-float v6, v5

    neg-float v7, v8

    const/4 v4, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 6
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->viewMatrix:[F

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    invoke-static/range {v11 .. v21}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->this$0:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;->mainHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updatePreviewOffset()V
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/cli/DualPreviewManager;->faceBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 4
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 5
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v3, Ljava/lang/Float;

    const-string/jumbo v4, "zoomValue"

    .line 7
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v1, v4, v1

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v1, :cond_1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float v1, v4, v1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float/2addr v0, v4

    mul-float/2addr v1, v0

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->previewOffsets:[F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->previewOffsetIndex:I

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 10
    array-length v0, v0

    rem-int/2addr v2, v0

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->previewOffsetIndex:I

    return-void
.end method
