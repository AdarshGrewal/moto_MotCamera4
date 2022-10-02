.class public Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;
.super Ljava/lang/Object;
.source "PanoramaMode.java"

# interfaces
.implements Lcom/motorola/camera/panorama/PanoCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanoStatusListener"
.end annotation


# instance fields
.field public mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;->this$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onProgress(ILandroid/graphics/Bitmap;IDDII[Landroid/graphics/Point;)V
    .locals 1

    .line 1
    new-instance p10, Landroid/os/Bundle;

    invoke-direct {p10}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "status"

    .line 2
    invoke-virtual {p10, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "preview"

    .line 3
    invoke-virtual {p10, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "guidePosition"

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p10, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string p1, "direction"

    .line 5
    invoke-virtual {p10, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "progressX"

    .line 6
    invoke-virtual {p10, p1, p4, p5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p1, "progressY"

    .line 7
    invoke-virtual {p10, p1, p6, p7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p1, "maxWidth"

    .line 8
    invoke-virtual {p10, p1, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "maxHeight"

    .line 9
    invoke-virtual {p10, p1, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PANO_PROGRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, p3, p10}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;->this$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    .line 14
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string p2, "PANO_MAX_OUTPUT_SIZE"

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p3

    if-ne p3, p8, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-eq p1, p9, :cond_1

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;->this$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    .line 20
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p8, p9}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    :cond_1
    return-void
.end method

.method public onProgress(Landroid/graphics/Bitmap;II)V
    .locals 2

    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "preview"

    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "maxWidth"

    .line 23
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "maxHeight"

    .line 24
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PANO_PROGRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
