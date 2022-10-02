.class public final synthetic Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/cli/content/CliContentManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/content/CliContentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/content/CliContentManager;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/os/Bundle;)V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/content/CliContentManager;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 7
    iput p1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    .line 8
    iget-boolean v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    .line 9
    iget-boolean p1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->closeCameraCartoonContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
