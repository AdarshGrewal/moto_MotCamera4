.class public final Lcom/motorola/camera/cli/camera/CliCameraActivity;
.super Lcom/motorola/camera/Camera;
.source "CliCameraActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/motorola/camera/cli/camera/CliCameraActivity;",
        "Lcom/motorola/camera/Camera;",
        "<init>",
        "()V",
        "MotCamera4-v9.0.12.67_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/Camera;-><init>()V

    return-void
.end method


# virtual methods
.method public final isOnIntendedDisplay()Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_CLOSED:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onLaunchStarted()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/cli/camera/CliCameraActivity;->isOnIntendedDisplay()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/Camera;->onStart()V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/cli/camera/CliCameraActivity;->isOnIntendedDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/motorola/camera/cli/util/WakeLockHelper;->Companion:Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/cli/util/WakeLockHelper;

    move-result-object p0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/cli/util/WakeLockHelper;->mMainWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/Camera;->onStop()V

    .line 2
    sget-object v0, Lcom/motorola/camera/cli/util/WakeLockHelper;->Companion:Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/cli/util/WakeLockHelper;

    move-result-object p0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/cli/util/WakeLockHelper;->mMainWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_0
    return-void
.end method
