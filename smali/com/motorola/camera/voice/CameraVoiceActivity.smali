.class public final Lcom/motorola/camera/voice/CameraVoiceActivity;
.super Landroid/app/Activity;
.source "CameraVoiceActivity.kt"


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
        "Lcom/motorola/camera/voice/CameraVoiceActivity;",
        "Landroid/app/Activity;",
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
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final launchCamera(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 2
    const-class v1, Lcom/motorola/camera/cli/camera/CliCameraActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 3
    :cond_0
    const-class v1, Lcom/motorola/camera/Camera;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/voice/CameraVoiceActivity;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget v1, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    if-ne v0, v1, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VOYAGER_CLI_DISPLAY_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v4, "get(SettingsManager.VOYA\u2026CLI_DISPLAY_SWITCH).value"

    .line 5
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 6
    :goto_1
    invoke-static {p0}, Lcom/google/android/play/core/assetpacks/zzbg;->getMainDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/motorola/camera/utility/ColdStartHelper;->onActivityCreate(Landroid/graphics/Point;Z)V

    .line 7
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result p1

    sget v0, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_CLOSED:I

    if-ne p1, v0, :cond_2

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 10
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/CaptureIntent;->isOpenCameraOnly(Landroid/os/Bundle;)Z

    move-result v0

    const-string v1, "motorola.camera.intent.action.VIDEO_CAPTURE"

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    :cond_3
    :goto_3
    move-object v1, v3

    goto :goto_4

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x1ba9c1af

    if-eq v4, v5, :cond_9

    const v5, 0x1cf71807

    if-eq v4, v5, :cond_6

    const p1, 0x43680478

    if-eq v4, p1, :cond_5

    goto :goto_3

    :cond_5
    const-string p1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_3

    :cond_6
    const-string v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const-string v1, "motorola.camera.intent.action.IMAGE_CAPTURE_SECURE"

    goto :goto_4

    :cond_9
    const-string p1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    const-string v1, "motorola.camera.intent.action.IMAGE_CAPTURE"

    :cond_b
    :goto_4
    if-eqz v1, :cond_d

    .line 14
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz v2, :cond_c

    const-string v0, "com.motorola.camera.LaunchActionCli"

    goto :goto_5

    :cond_c
    const-string v0, "com.motorola.camera.LaunchAction"

    .line 15
    :goto_5
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/voice/CameraVoiceActivity;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_6

    .line 18
    :cond_d
    invoke-virtual {p0, v2}, Lcom/motorola/camera/voice/CameraVoiceActivity;->launchCamera(Z)V

    .line 19
    :goto_6
    invoke-virtual {p0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object p1

    new-instance v0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;

    invoke-direct {v0, v3, v3}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    goto :goto_7

    .line 20
    :cond_e
    invoke-virtual {p0, v2}, Lcom/motorola/camera/voice/CameraVoiceActivity;->launchCamera(Z)V

    .line 21
    :goto_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;Z)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    sget p2, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    :cond_0
    const/high16 p2, 0x10000000

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x10000

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
