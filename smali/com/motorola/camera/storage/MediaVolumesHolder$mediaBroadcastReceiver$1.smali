.class public final Lcom/motorola/camera/storage/MediaVolumesHolder$mediaBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaVolumesHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/storage/MediaVolumesHolder;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final refreshMediaVolumesRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/storage/MediaVolumesHolder;)V

    iput-object v1, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$mediaBroadcastReceiver$1;->refreshMediaVolumesRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$mediaBroadcastReceiver$1;->refreshMediaVolumesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$mediaBroadcastReceiver$1;->refreshMediaVolumesRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
