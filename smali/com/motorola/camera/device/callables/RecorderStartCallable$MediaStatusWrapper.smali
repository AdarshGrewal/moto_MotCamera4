.class public Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;
.super Ljava/lang/Object;
.source "RecorderStartCallable.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/callables/RecorderStartCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStatusWrapper"
.end annotation


# instance fields
.field public final mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/MediaStatusListener;Lcom/motorola/camera/device/callables/RecorderStartCallable$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;

    sget-object v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->ERROR:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    invoke-direct {p1, v0, p2, p3}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;-><init>(Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;II)V

    .line 3
    new-instance p2, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;Lcom/motorola/camera/device/callables/MediaStatusListener$Status;)V

    invoke-static {p2}, Lcom/motorola/camera/device/callables/CameraCallable;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;

    sget-object v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->INFO:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    invoke-direct {p1, v0, p2, p3}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;-><init>(Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;II)V

    .line 3
    new-instance p2, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;Lcom/motorola/camera/device/callables/MediaStatusListener$Status;)V

    invoke-static {p2}, Lcom/motorola/camera/device/callables/CameraCallable;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
