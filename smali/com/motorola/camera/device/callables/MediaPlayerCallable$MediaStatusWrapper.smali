.class public Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerCallable.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/callables/MediaPlayerCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaStatusWrapper"
.end annotation


# instance fields
.field public final mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

.field public final synthetic this$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/MediaPlayerCallable;Lcom/motorola/camera/device/callables/MediaStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->this$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;

    sget-object v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->COMPLETION:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;-><init>(Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;II)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->onStatus(Lcom/motorola/camera/device/callables/MediaStatusListener$Status;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->this$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable;

    invoke-virtual {p1}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->resetPlayer(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;

    sget-object v1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->ERROR:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    invoke-direct {p1, v1, p2, p3}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;-><init>(Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;II)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->onStatus(Lcom/motorola/camera/device/callables/MediaStatusListener$Status;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;

    sget-object v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->INFO:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    invoke-direct {p1, v0, p2, p3}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;-><init>(Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;II)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->onStatus(Lcom/motorola/camera/device/callables/MediaStatusListener$Status;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onStatus(Lcom/motorola/camera/device/callables/MediaStatusListener$Status;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;Lcom/motorola/camera/device/callables/MediaStatusListener$Status;)V

    invoke-static {v0}, Lcom/motorola/camera/device/callables/CameraCallable;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
