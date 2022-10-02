.class public Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;
.super Ljava/lang/Object;
.source "DesktopModeGuardRunnable.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $r8$classId:I

.field public mIsDesktop:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->mIsDesktop:Z

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->mIsDesktop:Z

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->mIsDesktop:Z

    return-void

    .line 7
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->mIsDesktop:Z

    return-void

    .line 9
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->mIsDesktop:Z

    return-void
.end method


# virtual methods
.method public canTransition()Z
    .locals 3

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 8
    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v0

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->mIsDesktop:Z

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 10
    :pswitch_1
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->mIsDesktop:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    .line 11
    :pswitch_2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    .line 13
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->mIsDesktop:Z

    if-ne v0, p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    .line 14
    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->mIsDesktop:Z

    if-ne v0, p0, :cond_3

    goto :goto_4

    :cond_3
    move v1, v2

    :goto_4
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->mIsDesktop:Z

    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isFocusModeAuto()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 4
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->canTransition()Z

    move-result p0

    return p0

    .line 5
    :pswitch_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->canTransition()Z

    move-result p0

    return p0

    .line 6
    :pswitch_3
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->canTransition()Z

    move-result p0

    return p0

    .line 7
    :goto_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;->canTransition()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
