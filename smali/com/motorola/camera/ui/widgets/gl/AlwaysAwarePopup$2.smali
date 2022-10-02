.class public Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$2;
.super Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;
.source "AlwaysAwarePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->loadTextures()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    invoke-direct {p0, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 3
    :cond_0
    iget v2, v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_8

    .line 4
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    check-cast v1, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    .line 5
    iget-object v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    .line 6
    iget-object v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    invoke-virtual {v7, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    iget-object v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v7, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 8
    iget-object v7, v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 9
    iget v7, v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sRes:I

    .line 10
    iget-object v8, v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    .line 11
    check-cast v8, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;

    .line 12
    iget-object v8, v8, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;->mIntentList:Ljava/util/Set;

    .line 13
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    sub-int/2addr v8, v4

    .line 14
    iget-object v9, v6, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->clear()V

    .line 15
    iget-object v9, v6, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiListButtonsList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 16
    iget-object v10, v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    .line 17
    check-cast v10, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;

    .line 18
    iget-object v10, v10, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;->mIntentList:Ljava/util/Set;

    .line 19
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    .line 20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    goto/16 :goto_3

    .line 21
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;

    .line 22
    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    const-string v14, "[\\t\\n\\r]"

    const-string v15, " "

    .line 23
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 24
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x19

    if-le v14, v15, :cond_2

    .line 25
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "..."

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 26
    :cond_2
    iget-object v14, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v14, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 27
    iget-object v13, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz v13, :cond_3

    invoke-interface {v13}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onDirty()V

    .line 28
    :cond_3
    new-instance v13, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    iget-object v14, v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroid/content/Intent;

    invoke-direct {v13, v14, v11}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    .line 29
    iput-object v13, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mAction:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    .line 30
    invoke-virtual {v12, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 31
    iget-object v11, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v11, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->setResource(I)V

    .line 32
    invoke-virtual {v12, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->setPressed(ZZ)V

    .line 33
    iget-object v11, v12, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v11

    const/high16 v13, 0x41800000    # 16.0f

    mul-float/2addr v11, v13

    .line 34
    iget-object v13, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v14, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

    iget v15, v14, Landroid/graphics/PointF;->x:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    iget v14, v14, Landroid/graphics/PointF;->y:F

    div-float v14, v14, v16

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v13, v15, v14, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setPostScale(FFF)V

    .line 35
    iget-object v5, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 36
    iget-object v5, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v13, v12, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v13, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v13

    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v13, v14

    invoke-virtual {v5, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setAbsoluteRadius(F)V

    .line 37
    iget-object v5, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v13, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    neg-float v13, v13

    div-float v13, v13, v16

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    div-float v14, v14, v16

    add-float/2addr v14, v13

    add-float/2addr v14, v11

    const/4 v13, 0x0

    invoke-virtual {v5, v14, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 38
    iget-object v5, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v14, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    div-float v14, v14, v16

    .line 39
    iget-object v15, v5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    .line 40
    iget v15, v15, Landroid/graphics/PointF;->x:F

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    sub-float/2addr v14, v11

    invoke-virtual {v5, v14, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 41
    iget-object v5, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLine:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    const/high16 v11, 0x3f000000    # 0.5f

    iget-object v14, v12, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v14}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v14

    mul-float/2addr v14, v11

    invoke-virtual {v5, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 42
    iget-object v5, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLine:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v11, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

    iget v14, v11, Landroid/graphics/PointF;->x:F

    neg-float v15, v14

    div-float v15, v15, v16

    iget v11, v11, Landroid/graphics/PointF;->y:F

    neg-float v11, v11

    div-float v11, v11, v16

    div-float v14, v14, v16

    .line 43
    monitor-enter v5

    .line 44
    :try_start_0
    iget-object v13, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v15, v13, v3

    .line 45
    aput v11, v13, v4

    const/4 v15, 0x2

    const/16 v16, 0x0

    .line 46
    aput v16, v13, v15

    const/4 v15, 0x3

    .line 47
    aput v14, v13, v15

    const/4 v14, 0x4

    .line 48
    aput v11, v13, v14

    const/4 v11, 0x5

    const/4 v14, 0x0

    .line 49
    aput v14, v13, v11

    .line 50
    iget-object v11, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v11, :cond_4

    invoke-virtual {v11, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 51
    :cond_4
    :goto_1
    monitor-exit v5

    if-eqz v8, :cond_5

    add-int/lit8 v8, v8, -0x1

    .line 52
    iput-boolean v4, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mDrawLine:Z

    .line 53
    iget-object v5, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLine:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 54
    :cond_5
    iget-object v5, v6, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    .line 55
    iput-object v5, v12, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    .line 56
    iget-object v5, v6, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v5, v12}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z

    const/4 v5, 0x3

    goto/16 :goto_0

    .line 57
    :goto_2
    monitor-exit v5

    throw v0

    .line 58
    :cond_6
    :goto_3
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->updateMultiIntentTranslations()V

    .line 59
    iget-object v1, v6, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onChanged()V

    .line 60
    :cond_7
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->updateTranslations()V

    .line 61
    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    .line 62
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 63
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->showCards(Z)V

    goto/16 :goto_9

    .line 64
    :cond_8
    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mNoActionTaken:Z

    .line 65
    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v2

    if-eqz v2, :cond_e

    if-eq v2, v4, :cond_a

    const/4 v5, 0x3

    if-eq v2, v5, :cond_9

    goto/16 :goto_6

    .line 66
    :cond_9
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v5, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ALWAYS_AWARE_CONNECT_WIFI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 67
    iget-object v7, v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    .line 68
    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 69
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 70
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v2, :cond_f

    .line 71
    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2, v5}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_6

    .line 72
    :cond_a
    iget-object v2, v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v5, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SEARCH:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    if-ne v2, v5, :cond_c

    .line 73
    invoke-static {}, Lcom/motorola/camera/NetworkUtil;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 74
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v4

    goto :goto_4

    :cond_b
    move v2, v3

    :goto_4
    if-nez v2, :cond_c

    .line 75
    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 76
    sget-object v5, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v6, 0x7f110104

    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 78
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {v5, v6}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    move v2, v3

    goto :goto_5

    .line 80
    :cond_c
    iget-object v2, v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v5, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->CONTACT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    if-ne v2, v5, :cond_d

    .line 81
    check-cast v1, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/Contact;->mNumberExtras:Landroid/util/SparseArray;

    :cond_d
    move v2, v4

    :goto_5
    if-eqz v2, :cond_f

    .line 82
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v5, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-object v6, v1

    check-cast v6, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    .line 83
    iget-object v6, v6, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    .line 84
    check-cast v6, Landroid/content/Intent;

    const/4 v7, 0x0

    sget-object v8, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->OBJECT_DETECTION:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;I)V

    .line 85
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 86
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v2, :cond_f

    .line 87
    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2, v5}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    goto :goto_6

    .line 88
    :cond_e
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 89
    invoke-virtual {v2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "clipboard"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 90
    iget-object v5, v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    .line 91
    check-cast v5, Landroid/content/ClipData;

    invoke-virtual {v2, v5}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 92
    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 93
    sget-object v5, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v6, 0x7f110037

    .line 94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {v5, v6}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 96
    :cond_f
    :goto_6
    iget-object v1, v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 97
    iget v1, v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sCheckinCode:I

    .line 98
    sget-object v2, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->UNKNOWN:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 99
    invoke-static {}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->values()[Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-result-object v5

    array-length v6, v5

    :goto_7
    if-ge v3, v6, :cond_11

    aget-object v7, v5, v3

    .line 100
    iget v8, v7, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->checkInData:I

    if-ne v8, v1, :cond_10

    move-object v2, v7

    goto :goto_8

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 101
    :cond_11
    :goto_8
    invoke-virtual {v0, v4, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->dismissCards(ZZLcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    .line 102
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_9
    return-void
.end method

.method public onContentListChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->getActionsPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_0
    return-void
.end method
