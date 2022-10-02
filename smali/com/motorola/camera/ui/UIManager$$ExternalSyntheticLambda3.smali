.class public final synthetic Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/UIManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/UIManager;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/UIManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/UIManager;

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/UIManager;->mIgnoreRotationChanges:Z

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->rotateUI(I)V

    return-void

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/UIManager;

    .line 4
    sget-object v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;->SetRepeatingComplete:Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->initViewStubComponents(Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;)V

    .line 5
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_2D_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
