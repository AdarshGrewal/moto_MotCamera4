.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/saving/SaveImageService;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/SaveImageService;JI)V
    .locals 1

    iput p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    iput-wide p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    iget-wide v1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->f$1:J

    .line 1
    invoke-static {v1, v2}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/CameraData;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    iget-wide v1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->f$1:J

    .line 3
    iget-object p0, v0, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;->mDao:Lcom/motorola/camera/background/provider/BgCaptureRecordDao;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v1, v2}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao;->deleteById(J)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
