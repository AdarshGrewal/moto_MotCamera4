.class public Lcom/motorola/camera/panorama/PanoramaService$1;
.super Ljava/lang/Object;
.source "PanoramaService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/panorama/PanoramaService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/panorama/PanoCallable;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/panorama/PanoCallable;->mBegin:J

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/panorama/PanoCallable;->call()Lcom/google/android/play/core/appupdate/zzr;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/motorola/camera/panorama/PanoCallable$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/panorama/PanoCallable$1;-><init>(Lcom/motorola/camera/panorama/PanoCallable;Lcom/google/android/play/core/appupdate/zzr;)V

    .line 6
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
