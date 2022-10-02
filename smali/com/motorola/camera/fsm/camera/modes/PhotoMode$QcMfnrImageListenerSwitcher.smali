.class public Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;
.super Ljava/lang/Object;
.source "PhotoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/modes/PhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QcMfnrImageListenerSwitcher"
.end annotation


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public final mImageReader:Landroid/media/ImageReader;

.field public final mMcfHandler:Landroid/os/Handler;

.field public final mMcfListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field public final mMultiShotListener:Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

.field public final mWrapper:Lcom/motorola/camera/utility/ImageReaderWrapper;


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;->mImageReader:Landroid/media/ImageReader;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;->mMcfListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;->mMcfHandler:Landroid/os/Handler;

    .line 5
    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;->mMultiShotListener:Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    .line 6
    iput-object p5, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;->mBgHandler:Landroid/os/Handler;

    .line 7
    new-instance p2, Lcom/motorola/camera/utility/ImageReaderWrapper;

    invoke-direct {p2, p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;-><init>(Landroid/media/ImageReader;)V

    .line 8
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;->mWrapper:Lcom/motorola/camera/utility/ImageReaderWrapper;

    return-void
.end method
