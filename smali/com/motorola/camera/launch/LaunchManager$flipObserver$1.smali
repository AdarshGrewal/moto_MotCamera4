.class public final Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;
.super Landroid/database/ContentObserver;
.source "LaunchManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/launch/LaunchManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/launch/LaunchManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/launch/LaunchManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->this$0:Lcom/motorola/camera/launch/LaunchManager;

    .line 1
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .line 1
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "getInstance()"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->this$0:Lcom/motorola/camera/launch/LaunchManager;

    .line 4
    iget v1, v0, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    if-eq p1, v1, :cond_6

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/launch/LaunchManager;->callback:Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    check-cast v0, Lcom/motorola/camera/Camera;

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 8
    iput-boolean v2, v0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    goto :goto_0

    .line 9
    :cond_1
    sget v1, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_OPEN:I

    if-ne p1, v1, :cond_2

    .line 10
    iput-boolean v3, v0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    goto :goto_0

    .line 11
    :cond_2
    sget v1, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_CLOSED:I

    if-ne p1, v1, :cond_4

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".cli_continuity"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/reflect/MotorolaSettingsSecure;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    move v2, v3

    .line 15
    :cond_3
    iput-boolean v2, v0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    .line 16
    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    if-eqz v1, :cond_5

    .line 17
    iput-boolean v3, v0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    const-string v1, "FINISH_APP"

    .line 18
    invoke-static {v1, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 19
    iget-object v0, v0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 20
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 21
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->this$0:Lcom/motorola/camera/launch/LaunchManager;

    .line 22
    iput p1, p0, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    :cond_6
    return-void
.end method
