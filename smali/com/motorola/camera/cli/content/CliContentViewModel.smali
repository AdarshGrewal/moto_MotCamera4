.class public final Lcom/motorola/camera/cli/content/CliContentViewModel;
.super Lcom/motorola/camera/arch/view/BaseViewModel;
.source "CliContentViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;
    }
.end annotation


# instance fields
.field public final actionReceiver:Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;

.field public callback:Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;

.field public final cliDisplay$delegate:Lkotlin/Lazy;

.field public cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

.field public mainHandler:Landroid/os/Handler;

.field public presentationOpening:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/arch/view/BaseViewModel;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;-><init>(Lcom/motorola/camera/cli/content/CliContentViewModel;)V

    iput-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->actionReceiver:Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;

    .line 3
    sget-object v0, Lcom/motorola/camera/cli/content/CliContentViewModel$cliDisplay$2;->INSTANCE:Lcom/motorola/camera/cli/content/CliContentViewModel$cliDisplay$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliDisplay$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;->close()V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    :goto_1
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;

    return-void
.end method

.method public final dispatchAction(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, -0x1

    const-string v1, "com.motorola.camera3.EXTRA_ACTION"

    .line 1
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 p1, 0x4

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentViewModel;->close()V

    goto :goto_0

    :cond_1
    const-string v1, "com.motorola.camera3.EXTRA_CONTENT"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->hideContent(IZ)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->presentationOpening:Z

    if-nez v0, :cond_6

    .line 6
    sget v0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;

    if-nez v1, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    iput-boolean v3, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->presentationOpening:Z

    .line 9
    new-instance v2, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;-><init>(Lcom/motorola/camera/cli/content/CliContentViewModel;I)V

    invoke-interface {v1, v2}, Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;->showContentPresentation(Lkotlin/jvm/functions/Function1;)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Lcom/motorola/camera/cli/content/CliContentViewModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    new-instance v1, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Lcom/motorola/camera/cli/content/CliContentViewModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 12
    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const-string v0, "com.motorola.camera3.EXTRA_ORIENTATION"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;->changeOrientation(I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/motorola/camera/cli/content/CliContentViewModel;->dispatchAction(Landroid/content/Intent;)V

    .line 2
    :goto_0
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->actionReceiver:Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;

    invoke-virtual {v0, v1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->actionReceiver:Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;

    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
