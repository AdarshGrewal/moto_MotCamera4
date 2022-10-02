.class public Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$RepeatingRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.source "RoiLockRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RepeatingRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$RepeatingRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public sendComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$RepeatingRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    iget-boolean p2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mLock:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$RepeatingRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 4
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
