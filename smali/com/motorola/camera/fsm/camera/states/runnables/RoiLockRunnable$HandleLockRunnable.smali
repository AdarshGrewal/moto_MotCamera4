.class public Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$HandleLockRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;
.source "RoiLockRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandleLockRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$HandleLockRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RoiLockRunnable"

    return-object p0
.end method

.method public sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    .line 4
    new-instance p2, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$RepeatingRunnable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$HandleLockRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$RepeatingRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$1;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$HandleLockRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    invoke-virtual {p2, p0, p1, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 8
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
