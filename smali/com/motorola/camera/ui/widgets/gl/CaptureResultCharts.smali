.class public Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "CaptureResultCharts.java"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;
.implements Lcom/motorola/camera/fsm/camera/subfsms/DebugStateMachine$DebugListener;
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlpha:F

.field public mCaptureResultIndexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCaptureResultKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mChartTextures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mDensity:F

.field public mNeedLoadTextures:Z

.field public mUpdateCaptureResultKeys:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mAlpha:F

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mNeedLoadTextures:Z

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mUpdateCaptureResultKeys:Z

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mCaptureResultKeys:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mCaptureResultIndexes:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addChartTexture(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->setAlpha(F)V

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 2
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/Collection;

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

    .line 6
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CaptureResultCharts"

    return-object p0
.end method

.method public final declared-synchronized layout()V
    .locals 13

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v1

    .line 3
    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v0

    const/high16 v4, 0x43200000    # 160.0f

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mDensity:F

    mul-float/2addr v4, v5

    sub-float v4, v3, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    const/high16 v7, 0x42080000    # 34.0f

    mul-float/2addr v7, v5

    sub-float/2addr v3, v7

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    const/high16 v7, 0x42fc0000    # 126.0f

    mul-float/2addr v5, v7

    add-float/2addr v5, v0

    neg-int v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v6

    div-float v1, v2, v6

    .line 4
    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v8, 0xb4

    const/high16 v9, 0x40800000    # 4.0f

    if-eqz v7, :cond_2

    if-ne v7, v8, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v7, Lcom/motorola/camera/PreviewSize;

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    .line 6
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v2, v10

    iget v11, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mDensity:F

    mul-float/2addr v11, v9

    sub-float/2addr v10, v11

    float-to-int v9, v10

    sub-float v10, v4, v11

    float-to-int v10, v10

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    new-instance v7, Lcom/motorola/camera/PreviewSize;

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mDensity:F

    mul-float/2addr v10, v9

    sub-float v10, v2, v10

    float-to-int v10, v10

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    .line 8
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v4, v11

    iget v12, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mDensity:F

    mul-float/2addr v12, v9

    sub-float/2addr v11, v12

    float-to-int v9, v11

    invoke-direct {v7, v10, v9}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 9
    :goto_1
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v10, 0x0

    .line 10
    invoke-direct {v9, v10, v10, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 11
    iget v11, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v11, :cond_6

    const/16 v12, 0x5a

    if-eq v11, v12, :cond_5

    if-eq v11, v8, :cond_4

    const/16 v0, 0x10e

    if-eq v11, v0, :cond_3

    move v0, v10

    move v4, v0

    goto :goto_4

    :cond_3
    neg-float v0, v2

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    div-float v2, v0, v6

    add-float/2addr v2, v1

    .line 13
    iget v1, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    sub-float/2addr v3, v1

    invoke-virtual {v9, v2, v3, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v4, v0

    div-float v0, v4, v6

    add-float/2addr v0, v5

    .line 15
    invoke-virtual {v9, v10, v0, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    goto :goto_3

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    div-float v2, v1, v6

    add-float/2addr v2, v0

    .line 17
    iget v0, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    sub-float/2addr v3, v0

    invoke-virtual {v9, v2, v3, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    move v0, v1

    :goto_2
    move v4, v10

    goto :goto_4

    :cond_6
    neg-float v0, v4

    .line 18
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v0, v1

    div-float v0, v4, v6

    add-float/2addr v0, v3

    .line 19
    invoke-virtual {v9, v10, v0, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :goto_3
    move v0, v10

    .line 20
    :goto_4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;

    .line 21
    iput-object v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v3, 0x4

    .line 22
    invoke-virtual {v2, v3, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 23
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->setDisplayOrientation(I)V

    .line 24
    iget v2, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v2, v0

    iput v2, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 25
    iget v2, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v2, v4

    iput v2, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 26
    iget v2, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v2, v10

    iput v2, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 27
    :cond_7
    monitor-exit p0

    return-void

    .line 28
    :cond_8
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadTextures()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mDensity:F

    const/4 p0, 0x1

    return p0
.end method

.method public onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting change "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CaptureResultCharts"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->updateChartTextures()V

    return-void
.end method

.method public declared-synchronized onDebug(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

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
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mUpdateCaptureResultKeys:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->updateCaptureResultKeys(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mUpdateCaptureResultKeys:Z

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mCaptureResultKeys:Ljava/util/Map;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDraw([F[F[F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda1;-><init>([F[F)V

    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPreDraw([F[F[F)Z
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mNeedLoadTextures:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda3;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda3;

    invoke-interface {p1, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onRotate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->layout()V

    return-void
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->layout()V

    return-void
.end method

.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->VIEWFINDER_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->GL_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v0, p1, :cond_2

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;

    if-eqz p0, :cond_2

    .line 4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->onValue(F)V

    const/high16 p1, 0x42700000    # 60.0f

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->setMaximum(F)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->setMinimum(F)V

    :cond_2
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

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->DEBUG:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CaptureResultCharts"

    const-string v2, "exiting app init"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->updateChartTextures()V

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 7
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 8
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLOT_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 9
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CAPTURE_RESULT_KEYS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 10
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLOT_PREVIEW_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 11
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CPU_FREQ_0_3:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 12
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CPU_FREQ_4_7:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 15
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 16
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 17
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 18
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 19
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->VIEWFINDER_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 20
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 21
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->GL_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 22
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLOT_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 23
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CAPTURE_RESULT_KEYS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 24
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLOT_PREVIEW_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 25
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CPU_FREQ_0_3:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 26
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CPU_FREQ_4_7:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unloadTextures()V
    .locals 2

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
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mCaptureResultKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mCaptureResultIndexes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
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

.method public final updateCaptureResultKeys(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mCaptureResultKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mCaptureResultIndexes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "/"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    aget-object v4, v2, v3

    const/4 v5, 0x1

    .line 6
    :try_start_0
    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CaptureResult$Key;

    .line 8
    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mCaptureResultKeys:Ljava/util/Map;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mCaptureResultIndexes:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final declared-synchronized updateChartTextures()V
    .locals 5

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

    :cond_0
    :try_start_1
    const-string v0, "CaptureResultCharts"

    const-string/jumbo v1, "updateChartTextures"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mCaptureResultKeys:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mCaptureResultIndexes:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CAPTURE_RESULT_KEYS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 8
    check-cast v0, [Ljava/lang/String;

    .line 9
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PLOT_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 12
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 13
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->addChartTexture(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CPU_FREQ_0_3:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 17
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PLOT_CPU_FREQ_4_7:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 19
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v0, :cond_5

    if-eqz v1, :cond_7

    :cond_5
    const/4 v3, 0x4

    if-eqz v0, :cond_6

    :goto_1
    if-ge v2, v3, :cond_6

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CPU"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->addChartTexture(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    :goto_2
    const/16 v0, 0x8

    if-ge v3, v0, :cond_7

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->addChartTexture(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 22
    :cond_7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLOT_PREVIEW_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 24
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 26
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->VIEWFINDER_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 27
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 28
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->GL_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v2, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 29
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->addChartTexture(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->addChartTexture(Ljava/lang/String;)V

    goto :goto_3

    .line 31
    :cond_8
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 32
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->VIEWFINDER_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 33
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 34
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->GL_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 35
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mChartTextures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 36
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->layout()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mNeedLoadTextures:Z

    .line 38
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureResultCharts;->mUpdateCaptureResultKeys:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
