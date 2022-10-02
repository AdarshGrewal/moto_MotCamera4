.class public Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "MLrnGroundTruthsSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mButton:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

.field public mDensity:F

.field public mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

.field public mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    return-void
.end method


# virtual methods
.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 3
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

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 6
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MLrnGroundTruthsSelector"

    return-object p0
.end method

.method public declared-synchronized loadTextures()Z
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mDensity:F

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    const/4 v1, 0x2

    const/16 v3, 0x9

    .line 3
    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setButtonResources(IIII)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->loadTexture()V

    .line 5
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    .line 6
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setAdapter(Lcom/motorola/camera/ui/widgets/gl/ListAdapter;)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->loadTexture()V

    .line 9
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 12
    iget-object v4, v3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 13
    invoke-virtual {v4, v3}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 14
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 15
    invoke-virtual {v3, v0}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 18
    check-cast v1, Ljava/lang/String;

    const-string v3, "\\s*,\\s*"

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v4, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;-><init>(Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 22
    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 23
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->loadTexture()V

    .line 24
    new-instance v5, Lcom/motorola/camera/PreviewSize;

    const/high16 v6, 0x430c0000    # 140.0f

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v8, 0x41f00000    # 30.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 25
    iput-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 26
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->layout()V

    .line 27
    invoke-virtual {v4, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->setValueAndText(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    .line 29
    iput-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    .line 30
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->setSelected(Z)V

    .line 31
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 33
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 34
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDraw([F[F[F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    .line 2
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onDraw([F[F)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 4
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDrawFbo([F[F[F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onDrawFbo([F[F)V

    return-void
.end method

.method public onPreDraw([F[F[F)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->onPreDraw([F[F)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onPreDraw([F[F)V

    const/4 p0, 0x1

    return p0
.end method

.method public onRotate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    return-void
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast v0, Ljava/lang/String;

    const-string v1, "\\s*,\\s*"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 8
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;

    .line 9
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v3, Ljava/lang/String;

    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->setSelected(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 12
    :cond_0
    monitor-exit p0

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 7
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
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-array v4, v2, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v5, v4, v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->updateDropDownList()V

    .line 7
    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8
    iget-object v4, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 9
    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isMLrnSupported(Z)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 10
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 11
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 12
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 14
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 15
    iget-object v6, v6, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 16
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    .line 17
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 18
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    .line 19
    invoke-virtual {v6, v1, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 20
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 21
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 22
    :try_start_2
    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAction:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :try_start_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    .line 24
    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 25
    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 26
    :try_start_4
    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 27
    :try_start_5
    iget-boolean v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v4, :cond_3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 28
    :cond_3
    :try_start_7
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 29
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 30
    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setAlpha(F)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 31
    :try_start_8
    monitor-exit v2

    .line 32
    :goto_0
    iput v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAction:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 33
    :try_start_9
    monitor-exit v2

    .line 34
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 35
    :try_start_a
    monitor-exit v2

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_b
    monitor-exit v2

    throw p1

    .line 36
    :cond_4
    :goto_1
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 37
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 38
    monitor-enter p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    const/4 v0, 0x3

    .line 39
    :try_start_c
    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAction:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 40
    :try_start_d
    monitor-exit p1

    goto :goto_2

    :catchall_3
    move-exception v0

    monitor-exit p1

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 41
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_4
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
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 3
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->unloadTexture()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->clear()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->unloadTexture()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mButton:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->unloadTexture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateDropDownList()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 4
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
