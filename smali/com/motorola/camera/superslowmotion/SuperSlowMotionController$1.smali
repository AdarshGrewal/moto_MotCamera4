.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;
.super Ljava/lang/Object;
.source "SuperSlowMotionController.kt"

# interfaces
.implements Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$RendererListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;ILcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public offset:J

.field public reset:Z

.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameRendered(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->offset:J

    sub-long/2addr p1, v0

    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p1, v0

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    .line 2
    iget v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v1, v1

    .line 3
    div-long/2addr p1, v1

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    const/4 v2, 0x1

    .line 5
    aget v1, v1, v2

    int-to-long v3, v1

    cmp-long v1, p1, v3

    if-lez v1, :cond_0

    .line 6
    iget-boolean p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->reset:Z

    if-nez p1, :cond_2

    .line 7
    iput-boolean v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->reset:Z

    .line 8
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {p1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;)V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;

    if-nez v0, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;->onPlayFrameChanged(J)V

    :goto_0
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->reset:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onOffsetChanged(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    const/4 v2, 0x0

    .line 3
    aget v1, v1, v2

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->reset:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->reset:Z

    .line 5
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    new-instance v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;)V

    .line 7
    iget-object v0, v1, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    :cond_0
    iput-wide p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->offset:J

    return-void
.end method
