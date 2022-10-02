.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/motorola/camera/settings/CameraType;

.field public final synthetic f$3:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public final synthetic f$4:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$2:Lcom/motorola/camera/settings/CameraType;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$3:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iput-object p5, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$4:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iput-object p6, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$5:Ljava/util/List;

    iput-object p7, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget v6, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$0:I

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$1:I

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$2:Lcom/motorola/camera/settings/CameraType;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$3:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$4:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v7, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$5:Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$6:Ljava/lang/String;

    check-cast p1, Lcom/motorola/camera/settings/CameraType;

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocPictureSize(Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object v5

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/settings/CameraType;->getPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v5, v6, v0, v1, v3}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v0

    .line 4
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    .line 5
    invoke-virtual {v1}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableListener()Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v1

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    .line 6
    invoke-virtual {v4}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableHandler()Landroid/os/Handler;

    move-result-object v4

    .line 7
    invoke-virtual {v0, v1, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 8
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    .line 10
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    .line 11
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
