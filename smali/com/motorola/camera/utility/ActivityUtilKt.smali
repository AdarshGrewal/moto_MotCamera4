.class public final Lcom/motorola/camera/utility/ActivityUtilKt;
.super Ljava/lang/Object;
.source "ActivityUtil.kt"


# direct methods
.method public static final launchGallery(Landroid/app/Activity;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    sget-object v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->GALLERY:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->className:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const v0, 0x7f010020

    const v1, 0x7f010021

    .line 4
    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 6
    iget-object v1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    const-string v2, "request.intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setBrightnessForLaunch(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 8
    iget v2, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->orientation:I

    if-eqz v2, :cond_3

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.UID"

    const-string v3, "motcamera"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isSecureLaunch()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    new-instance p1, Lcom/motorola/camera/utility/ActivityUtilKt$launchGallery$1;

    invoke-direct {p1, p0, v1, v0}, Lcom/motorola/camera/utility/ActivityUtilKt$launchGallery$1;-><init>(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 12
    invoke-static {p0, p1}, Lcom/motorola/camera/utility/KeyguardHelper;->requestDismissKeyguard(Landroid/app/Activity;Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public static final showOnLockScreen(Landroid/app/Activity;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    return-void
.end method
