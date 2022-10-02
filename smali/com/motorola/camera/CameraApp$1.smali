.class public Lcom/motorola/camera/CameraApp$1;
.super Ljava/lang/Object;
.source "CameraApp.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/CameraApp;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/CameraApp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/motorola/camera/CameraApp;->access$000(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/CameraApp;->access$000(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/CameraApp;->access$000(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    .line 3
    iget p1, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 4
    iput v0, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    .line 5
    :cond_0
    iput-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mIsColdStart:Z

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/CameraApp;->access$000(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    .line 6
    iget v0, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    .line 7
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/AppFeatures;->refreshFeatureList(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/CameraApp;->access$000(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    .line 3
    iget p1, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/CameraApp;->access$000(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/CameraApp$1;->this$0:Lcom/motorola/camera/CameraApp;

    .line 3
    iget p1, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    const/4 v0, -0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    .line 4
    iput v1, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    .line 5
    :cond_0
    sget-object p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->NONE:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/CameraApp;->mActivityRequestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    .line 7
    iput v0, p0, Lcom/motorola/camera/CameraApp;->mActivityResultCode:I

    .line 8
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_STOP_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    const/4 v2, 0x5

    if-lt p1, v2, :cond_1

    move v1, v0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 13
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    if-gt p1, v2, :cond_3

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    if-ne p1, v2, :cond_3

    .line 15
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p1, "com.motorola.actions"

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.motorola.actions.qc.FDN"

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 19
    invoke-virtual {p1, p0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method
