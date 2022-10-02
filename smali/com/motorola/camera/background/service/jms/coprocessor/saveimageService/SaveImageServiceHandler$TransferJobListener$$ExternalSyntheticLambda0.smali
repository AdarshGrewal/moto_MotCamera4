.class public final synthetic Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener;JI)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener;

    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->f$1:J

    .line 1
    iget-object p0, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener;->this$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mBgProcessingJob:Ljava/util/Map;

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener;

    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->f$1:J

    .line 5
    iget-object p0, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener;->this$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    .line 6
    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->retryJob(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
