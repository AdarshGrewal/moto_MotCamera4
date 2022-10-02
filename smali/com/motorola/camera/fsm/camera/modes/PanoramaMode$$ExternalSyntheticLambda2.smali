.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/FsmContext;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    :try_start_1
    const-string p0, "PanoramaMode"

    const-string v0, "getSmallCaptureImageAvailableListener ImageReader#acquireNextImage() is null."

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v2, "WIDE_SELFIE_CAPTURE"

    .line 4
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/panorama/PanoHelper;->convertNv21Image2Buffer(Landroid/media/Image;)[B

    move-result-object v4

    .line 7
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 8
    sget v8, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v1, "WIDE_SELFIE_ROTATION_X"

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v1, "WIDE_SELFIE_ROTATION_Y"

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    .line 16
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v1, "PANO_SELFIE_IMAGE_ID"

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v3

    .line 19
    iget v3, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    if-lt v1, v3, :cond_2

    .line 20
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    .line 21
    iget v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    if-lez v1, :cond_2

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v3

    .line 23
    iget v3, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    if-le v1, v3, :cond_2

    .line 24
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    .line 25
    iget v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 27
    new-instance p1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;-><init>([BFFII[Landroid/graphics/Rect;)V

    iput-object p1, v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPreviewImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 28
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->processFrames(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :catch_1
    if-eqz p1, :cond_2

    .line 31
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_2
    :goto_0
    return-void
.end method
