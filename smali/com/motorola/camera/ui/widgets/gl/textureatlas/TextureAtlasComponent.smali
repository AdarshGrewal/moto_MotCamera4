.class public Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "TextureAtlasComponent.java"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;,
        Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;
    }
.end annotation


# static fields
.field public static final VERTICES_DATA:[F


# instance fields
.field public mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public mAtlasMap:Lcom/google/android/play/core/appupdate/zzr;

.field public mAtlasRunnable:Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;

.field public mDisplayDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public mFinishedInit:Z

.field public mId:I

.field public mLoadState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->VERTICES_DATA:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    .line 3
    new-instance p1, Lcom/google/android/play/core/appupdate/zzr;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lcom/google/android/play/core/appupdate/zzr;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/google/android/play/core/appupdate/zzr;

    return-void
.end method


# virtual methods
.method public final declared-synchronized checkLoadHighRes()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x3

    .line 1
    :try_start_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mLoadState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mFinishedInit:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mDisplayDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mLoadState:I

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->loadAtlasImageIntoMemory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAtlasDpi()Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    return-object p0
.end method

.method public declared-synchronized getSpriteData(I)Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/google/android/play/core/appupdate/zzr;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/appupdate/zzr;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/google/android/play/core/appupdate/zzr;

    .line 3
    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    .line 4
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;-><init>()V

    .line 5
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSourceSize:Landroid/graphics/Point;

    invoke-direct {v2, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;->mSourceSize:Landroid/graphics/Point;

    .line 6
    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSpriteSourceSize:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;->mSpriteSize:Landroid/graphics/Rect;

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->getVerticeData(I)[F

    move-result-object p1

    iput-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas$SpriteData;->mVerticeData:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-object v1

    .line 10
    :cond_0
    :try_start_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Sprite not found"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TextureAtlasComponent"

    return-object p0
.end method

.method public final getVerticeData(I)[F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/google/android/play/core/appupdate/zzr;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/appupdate/zzr;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/google/android/play/core/appupdate/zzr;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/appupdate/zzr;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/google/android/play/core/appupdate/zzr;

    .line 3
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFrameRel:Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 5
    :goto_0
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->VERTICES_DATA:[F

    array-length v0, p1

    new-array v0, v0, [F

    .line 6
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x3

    const/16 v1, 0xd

    .line 7
    iget v2, p0, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    aput v2, v0, p1

    const/4 p1, 0x4

    const/16 v1, 0x9

    .line 8
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    aput v2, v0, p1

    const/16 p1, 0x8

    const/16 v1, 0x12

    .line 9
    iget v2, p0, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    aput v2, v0, p1

    const/16 p1, 0xe

    const/16 v1, 0x13

    .line 10
    iget p0, p0, Landroid/graphics/RectF;->top:F

    aput p0, v0, v1

    aput p0, v0, p1

    return-object v0
.end method

.method public final loadAtlasImageIntoMemory()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasRunnable:Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;->mAtlasHolder:Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mDisplayDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;-><init>(Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$1;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasRunnable:Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;

    .line 4
    new-instance v0, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasRunnable:Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public loadTextures()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->MDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mDisplayDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mLoadState:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mFinishedInit:Z

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->loadAtlasImageIntoMemory()V

    const/4 p0, 0x1

    return p0
.end method

.method public onDraw([F[F[F)V
    .locals 0

    return-void
.end method

.method public onPreDraw([F[F[F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mFinishedInit:Z

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->checkLoadHighRes()V

    :cond_0
    return-void
.end method

.method public unloadTextures()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Lcom/google/android/play/core/appupdate/zzr;

    .line 2
    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mFinishedInit:Z

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mLoadState:I

    .line 5
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 6
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteTexture(I)V

    .line 7
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    :cond_0
    return-void
.end method
