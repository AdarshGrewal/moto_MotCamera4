.class public Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;
.super Ljava/lang/Object;
.source "AutoFocusStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FocusHolder"
.end annotation


# instance fields
.field public mFrameNumber:J

.field public mLastAfMode:I

.field public mLastAfState:I

.field public mLastLensState:I

.field public mWaitingUnlock:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfState:I

    .line 3
    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfMode:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastLensState:I

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mWaitingUnlock:Z

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mFrameNumber:J

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$1;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfState:I

    .line 9
    iput p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfMode:I

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastLensState:I

    .line 11
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mWaitingUnlock:Z

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mFrameNumber:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FocusHolder{lastAfMode:"

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfMode:I

    .line 2
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->getAfModeAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lastAfState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfState:I

    packed-switch p0, :pswitch_data_0

    const-string v1, "UNKNOWN("

    const-string v2, ")"

    .line 4
    invoke-static {v1, p0, v2}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "CONTROL_AF_STATE_PASSIVE_UNFOCUSED"

    goto :goto_0

    :pswitch_1
    const-string p0, "CONTROL_AF_STATE_NOT_FOCUSED_LOCKED"

    goto :goto_0

    :pswitch_2
    const-string p0, "CONTROL_AF_STATE_FOCUSED_LOCKED"

    goto :goto_0

    :pswitch_3
    const-string p0, "CONTROL_AF_STATE_ACTIVE_SCAN"

    goto :goto_0

    :pswitch_4
    const-string p0, "CONTROL_AF_STATE_PASSIVE_FOCUSED"

    goto :goto_0

    :pswitch_5
    const-string p0, "CONTROL_AF_STATE_PASSIVE_SCAN"

    goto :goto_0

    :pswitch_6
    const-string p0, "CONTROL_AF_STATE_INACTIVE"

    :goto_0
    const-string/jumbo v1, "}"

    .line 5
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
