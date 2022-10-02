.class public Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;
.super Lcom/motorola/camera/ui/widgets/gl/CaptureComponent;
.source "ShutterComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;
    }
.end annotation


# static fields
.field public static SHUTTER_DRAWABLES:[I

.field public static final SHUTTER_DURATION:J


# instance fields
.field public mAnimationType:I

.field public mBurstCount:I

.field public mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mDensity:F

.field public final mMultiShotAdapter:Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine$MultiShotStateAdapter;

.field public mNotifierListener:Lcom/motorola/camera/Notifier$Listener;

.field public mShotType:I

.field public mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

.field public mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1
    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->SHUTTER_DRAWABLES:[I

    const/16 v0, 0x2e

    int-to-long v0, v0

    .line 2
    sput-wide v0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->SHUTTER_DURATION:J

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/CaptureComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstCount:I

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mNotifierListener:Lcom/motorola/camera/Notifier$Listener;

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mMultiShotAdapter:Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine$MultiShotStateAdapter;

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mDensity:F

    return-void
.end method


# virtual methods
.method public final animateBubble(Z)V
    .locals 9

    .line 1
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$3;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;Z)V

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz p1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v2, 0xc8

    move-object v0, v8

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    const/4 p1, 0x2

    new-array v0, p1, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v8, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v8, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final declared-synchronized animateMultiShot(Z)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x2

    .line 1
    :try_start_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mAnimationType:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->animateBubble(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->setRepeatCount(I)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;

    invoke-direct {v1, p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;-><init>(Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V

    .line 5
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iput-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$AnimationCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    monitor-exit p1

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->startAnimation()V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 11
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p1

    throw v0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 16
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstCount:I

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v1, p1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 19
    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 20
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 21
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized animateSingleShot(Z)V
    .locals 5

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;->REVERSE:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;

    monitor-enter p0

    .line 1
    :try_start_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mAnimationType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    .line 2
    :try_start_1
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShotType:I

    if-ne p1, v4, :cond_1

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;-><init>(Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V

    .line 4
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 5
    :try_start_2
    iput-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$AnimationCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :try_start_3
    monitor-exit p1

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->setRepeatCount(I)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->setRepeatMode(Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->startAnimation()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p1

    throw v0

    :cond_1
    if-ne v3, v1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->setRepeatCount(I)V

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;

    invoke-direct {v0, p0, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;-><init>(Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V

    .line 14
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 15
    :try_start_4
    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$AnimationCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 16
    :try_start_5
    monitor-exit p1

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->startAnimation()V

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 19
    monitor-exit p1

    throw v0

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;-><init>(Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V

    .line 21
    monitor-enter p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 22
    :try_start_6
    iput-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$AnimationCallback;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 23
    :try_start_7
    monitor-exit p1

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->setRepeatCount(I)V

    .line 25
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->setRepeatMode(Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;)V

    .line 26
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 27
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->startAnimation()V

    .line 28
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 29
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 30
    monitor-exit p1

    throw v0

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 32
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v0, p1

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 33
    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 34
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 35
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 36
    :goto_1
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getBurstTranslationY()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v1, v3, :cond_0

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 5
    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mDensity:F

    mul-float/2addr v0, p0

    sub-float/2addr v1, v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 7
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 8
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight(Z)F

    move-result v3

    .line 9
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarHeight(Z)F

    move-result v0

    add-float/2addr v0, v3

    const/high16 v2, 0x41c00000    # 24.0f

    add-float/2addr v0, v2

    .line 10
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mDensity:F

    mul-float/2addr v0, p0

    add-float/2addr v1, v0

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mDensity:F

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    sub-float/2addr v1, p0

    :goto_0
    return v1
.end method

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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 3
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 5
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ShutterComponent"

    return-object p0
.end method

.method public declared-synchronized loadTextures()Z
    .locals 14

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->SHUTTER_DRAWABLES:[I

    sget-wide v3, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->SHUTTER_DURATION:J

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;->RESTART:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[IJLcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$RepeatMode;I)V

    iput-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 3
    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0x42900000    # 72.0f

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 4
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const v2, 0x7f0800a9

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v1

    .line 6
    iget v1, v1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    .line 7
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mAnimationType:I

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->SANS_SERIF_LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v4

    .line 14
    iget v4, v4, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryShadow:I

    .line 15
    invoke-virtual {v0, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setOutline(FI)V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 17
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 18
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v2

    invoke-virtual {v0, v4, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 21
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstCount:I

    .line 22
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    .line 24
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->getBurstTranslationY()F

    move-result v1

    invoke-virtual {v0, v4, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 26
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 27
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mNotifierListener:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 28
    monitor-exit p0

    return v0

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
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    if-eqz p2, :cond_0

    .line 2
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->onDraw([F[F)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 4
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 6
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPreDraw([F[F[F)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    monitor-exit p0

    .line 4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->onPreDraw([F[F)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-nez p1, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRotate(I)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 4
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 8
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 9
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setTouchLocation()V
    .locals 3

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
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->getBurstTranslationY()F

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->animateMultiShot(Z)V

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 7
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    .line 8
    :try_start_1
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mAnimationType:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "LOCATION"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->setTouchLocation()V

    .line 11
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShotType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 13
    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_1

    .line 14
    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->animateSingleShot(Z)V

    goto :goto_1

    .line 16
    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->stopAnimations()V

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 20
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTISHOT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 21
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mMultiShotAdapter:Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine$MultiShotStateAdapter;

    .line 23
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 24
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 25
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 26
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 27
    monitor-enter p0

    if-nez p1, :cond_6

    .line 28
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :cond_6
    :try_start_3
    const-string v0, "LOCATION"

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->setTouchLocation()V

    const/4 p1, 0x3

    .line 30
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShotType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :try_start_4
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 32
    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 33
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->animateMultiShot(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 34
    :cond_8
    :goto_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized stopAnimations()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 5
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unloadTextures()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShutterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture;->unloadTexture()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    .line 6
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 7
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mNotifierListener:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
