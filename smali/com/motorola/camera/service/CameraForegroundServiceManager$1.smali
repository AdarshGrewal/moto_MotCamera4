.class public Lcom/motorola/camera/service/CameraForegroundServiceManager$1;
.super Ljava/lang/Object;
.source "CameraForegroundServiceManager.java"

# interfaces
.implements Lcom/motorola/camera/jms/BgJobManager$BgJobManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/service/CameraForegroundServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/service/CameraForegroundServiceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueueEmpty()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/service/CameraForegroundServiceManager$1;)V

    .line 3
    iget-object p0, v0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
