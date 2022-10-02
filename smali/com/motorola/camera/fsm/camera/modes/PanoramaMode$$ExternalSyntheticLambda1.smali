.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda1;
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

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    .line 2
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {p1}, Lcom/motorola/camera/panorama/PanoHelper;->convertNv21Image2Buffer(Landroid/media/Image;)[B

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 5
    sget v7, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v1, "WIDE_SELFIE_ROTATION_X"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v1, "WIDE_SELFIE_ROTATION_Y"

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v1, "PANO_SELFIE_IMAGE_ID"

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v2

    .line 16
    iget v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    if-lt v1, v2, :cond_1

    .line 17
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    .line 18
    iget v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    if-lez v1, :cond_1

    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v2

    .line 20
    iget v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    if-le v1, v2, :cond_1

    .line 21
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    .line 22
    iget v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    .line 23
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 24
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v1, "WIDE_SELFIE_FACE_RECT"

    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [Landroid/graphics/Rect;

    .line 26
    new-instance p1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;-><init>([BFFII[Landroid/graphics/Rect;)V

    iput-object p1, v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 27
    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->processFrames(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_1
    :goto_0
    return-void
.end method
