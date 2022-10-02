.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureCameraGroupType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;->updateCameraGroupDrawable(I)V

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureLayoutType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;->updateLayoutSwitchDrawable(I)V

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;->show()V

    return-void

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
