.class public Lcom/motorola/camera/panorama/PanoramaService;
.super Ljava/lang/Object;
.source "PanoramaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;,
        Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;
    }
.end annotation


# instance fields
.field public volatile mServiceHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/panorama/PanoramaService$1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;

    const-string v0, "PanoramaService"

    invoke-direct {p1, v0}, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 4
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 5
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/panorama/PanoramaService$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/panorama/PanoramaService$1;-><init>(Lcom/motorola/camera/panorama/PanoramaService;)V

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    return-void
.end method
