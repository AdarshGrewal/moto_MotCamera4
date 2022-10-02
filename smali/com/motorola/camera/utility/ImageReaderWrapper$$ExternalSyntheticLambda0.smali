.class public final synthetic Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/utility/ImageReaderWrapper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/ImageReaderWrapper;

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mListener:Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;->onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;)V

    :cond_0
    return-void

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->$r8$lambda$f5ug1Z1Vgfm1P7wEoCrivSQYFG8(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Landroid/media/ImageReader;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
