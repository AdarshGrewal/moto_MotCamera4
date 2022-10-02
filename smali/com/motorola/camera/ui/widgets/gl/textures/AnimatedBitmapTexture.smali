.class public Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "AnimatedBitmapTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$AnimationCallback;,
        Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;
    }
.end annotation


# instance fields
.field public mAnimating:Z

.field public mBackgroundResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

.field public mBatchDraw:Landroidx/fragment/app/FragmentStore;

.field public mBitmapUnloads:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

.field public mCachedDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$AnimationCallback;

.field public mCurrentCount:I

.field public mCurrentTextureIdx:I

.field public mDurationPerFrame:[J

.field public mLoadRequired:Z

.field public mRepeatCount:I

.field public mRepeatMode:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;

.field public mResourceUnloads:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

.field public mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

.field public mReverseUpdate:Z

.field public mStartTime:J


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[IJLcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Landroidx/fragment/app/FragmentStore;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroidx/fragment/app/FragmentStore;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBatchDraw:Landroidx/fragment/app/FragmentStore;

    .line 3
    array-length p1, p2

    new-array p1, p1, [J

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    aput-wide p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->stageUnloadTextures()V

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    array-length p4, p2

    new-array p4, p4, [Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    .line 9
    :goto_1
    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    array-length v1, p4

    if-ge v0, v1, :cond_1

    .line 10
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    aget v3, p2, v0

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    aput-object v1, p4, v0

    .line 11
    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    aget-object p4, p4, v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {p4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBatchDraw:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentStore;->clearDrawList()V

    .line 14
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBatchDraw:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentStore;->setDrawList(Ljava/util/List;)V

    .line 15
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mDurationPerFrame:[J

    .line 16
    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mRepeatMode:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;

    .line 17
    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mRepeatCount:I

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mLoadRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    return-object p0
.end method

.method public declared-synchronized loadTexture()V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onDraw([F[F)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mLoadRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBatchDraw:Landroidx/fragment/app/FragmentStore;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/FragmentStore;->batchDraw([F[F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPreDraw([F[F)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResourceUnloads:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    .line 4
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->deleteTexture()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResourceUnloads:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBitmapUnloads:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz p1, :cond_3

    .line 7
    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 8
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    .line 9
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->deleteTexture()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBitmapUnloads:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    .line 11
    :cond_3
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mLoadRequired:Z

    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz p1, :cond_5

    .line 13
    array-length p2, p1

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_4

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBackgroundResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz p1, :cond_5

    .line 15
    array-length p2, p1

    move v1, v0

    :goto_3
    if-ge v1, p2, :cond_5

    aget-object v2, p1, v1

    .line 16
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 17
    :cond_5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mLoadRequired:Z

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;

    move-result-object p1

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;->getAtlasDpi()Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCachedDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCachedDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;

    move-result-object p2

    invoke-interface {p2}, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;->getAtlasDpi()Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-result-object p2

    if-eq p1, p2, :cond_8

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz p1, :cond_8

    .line 21
    array-length p2, p1

    move v1, v0

    :goto_4
    if-ge v1, p2, :cond_7

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->onPreDraw()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBackgroundResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz p1, :cond_8

    .line 23
    array-length p2, p1

    :goto_5
    if-ge v0, p2, :cond_8

    aget-object v1, p1, v0

    .line 24
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->onPreDraw()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 25
    :cond_8
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mAnimating:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->updateCurrentFrame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_a
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRepeatCount(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mRepeatCount:I
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

.method public declared-synchronized setRepeatMode(Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mRepeatMode:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;
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

.method public final stageUnloadTextures()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBackgroundResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz v1, :cond_0

    .line 3
    array-length v2, v0

    array-length v1, v1

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResourceUnloads:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBackgroundResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    array-length v2, v2

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResourceUnloads:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBackgroundResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    :cond_1
    return-void
.end method

.method public declared-synchronized startAnimation()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentCount:I

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mReverseUpdate:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mAnimating:Z

    .line 4
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentTextureIdx:I

    .line 5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "resources:"

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    const-string v2, "0"

    if-eqz v1, :cond_0

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " bitmaps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " durations:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mDurationPerFrame:[J

    if-eqz v1, :cond_1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " unloadRes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResourceUnloads:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz v1, :cond_2

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " unloadBmps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBitmapUnloads:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz v1, :cond_3

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " repeatMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mRepeatMode:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " repeatCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mRepeatCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " animating:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " currentIdx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentTextureIdx:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized unloadTexture()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz v2, :cond_1

    .line 2
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBackgroundResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz v2, :cond_4

    .line 5
    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7
    :cond_3
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBackgroundResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    .line 8
    :cond_4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResourceUnloads:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz v2, :cond_7

    .line 9
    array-length v3, v2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    if-eqz v5, :cond_5

    .line 10
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 11
    :cond_6
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResourceUnloads:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    .line 12
    :cond_7
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBitmapUnloads:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz v2, :cond_a

    .line 13
    array-length v3, v2

    :goto_3
    if-ge v1, v3, :cond_9

    aget-object v4, v2, v1

    if-eqz v4, :cond_8

    .line 14
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 15
    :cond_9
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBitmapUnloads:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    .line 16
    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBatchDraw:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->clearDrawList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateCurrentFrame()V
    .locals 14

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mStartTime:J

    sub-long v2, v0, v2

    .line 3
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v6, v4

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    if-eqz v4, :cond_1

    .line 4
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mBackgroundResources:[Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    .line 5
    :cond_1
    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mReverseUpdate:Z

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    if-nez v4, :cond_9

    move v4, v8

    .line 6
    :goto_1
    iget v12, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentTextureIdx:I

    if-gt v4, v12, :cond_2

    iget-object v12, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mDurationPerFrame:[J

    aget-wide v12, v12, v4

    add-long/2addr v10, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    cmp-long v2, v2, v10

    if-lez v2, :cond_3

    add-int/2addr v12, v9

    .line 7
    iput v12, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentTextureIdx:I

    .line 8
    :cond_3
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentTextureIdx:I

    array-length v3, v6

    if-lt v2, v3, :cond_10

    .line 9
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentCount:I

    add-int/2addr v2, v9

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentCount:I

    .line 10
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mRepeatCount:I

    if-le v2, v3, :cond_5

    if-ne v3, v7, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    iput-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mAnimating:Z

    .line 12
    array-length v0, v6

    sub-int/2addr v0, v9

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentTextureIdx:I

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$AnimationCallback;

    if-eqz v0, :cond_10

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;->onAnimationEnd()V

    goto/16 :goto_5

    .line 14
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$AnimationCallback;

    if-eqz v2, :cond_6

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_6
    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mStartTime:J

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mRepeatMode:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_8

    if-eq v0, v9, :cond_7

    goto :goto_5

    .line 17
    :cond_7
    iput v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentTextureIdx:I

    goto :goto_5

    .line 18
    :cond_8
    iput-boolean v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mReverseUpdate:Z

    .line 19
    array-length v0, v6

    sub-int/2addr v0, v9

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentTextureIdx:I

    goto :goto_5

    .line 20
    :cond_9
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mDurationPerFrame:[J

    array-length v4, v4

    :goto_3
    if-gtz v4, :cond_a

    iget-object v12, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mDurationPerFrame:[J

    aget-wide v12, v12, v4

    add-long/2addr v10, v12

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_a
    cmp-long v2, v2, v10

    if-lez v2, :cond_b

    .line 21
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentTextureIdx:I

    sub-int/2addr v2, v9

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentTextureIdx:I

    .line 22
    :cond_b
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentTextureIdx:I

    if-gez v2, :cond_10

    .line 23
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentCount:I

    add-int/2addr v2, v9

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentCount:I

    .line 24
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mRepeatCount:I

    if-le v2, v3, :cond_d

    if-ne v3, v7, :cond_c

    goto :goto_4

    .line 25
    :cond_c
    iput-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mAnimating:Z

    .line 26
    iput v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentTextureIdx:I

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$AnimationCallback;

    if-eqz v0, :cond_10

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;->onAnimationEnd()V

    goto :goto_5

    .line 28
    :cond_d
    :goto_4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$AnimationCallback;

    if-eqz v2, :cond_e

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_e
    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mStartTime:J

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mRepeatMode:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5

    .line 31
    :cond_f
    iput-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mReverseUpdate:Z

    .line 32
    iput v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentTextureIdx:I

    :cond_10
    :goto_5
    if-eqz v5, :cond_11

    .line 33
    array-length v0, v5

    move v1, v8

    :goto_6
    if-ge v1, v0, :cond_11

    aget-object v2, v5, v1

    .line 34
    invoke-virtual {v2, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    move v0, v8

    .line 35
    :goto_7
    array-length v1, v6

    if-ge v0, v1, :cond_13

    .line 36
    aget-object v1, v6, v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCurrentTextureIdx:I

    if-ne v0, v2, :cond_12

    move v2, v9

    goto :goto_8

    :cond_12
    move v2, v8

    :goto_8
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_13
    return-void
.end method
