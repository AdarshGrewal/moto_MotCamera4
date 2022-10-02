.class public final Lcom/motorola/camera/cli/content/CliContentManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "CliContentManager.kt"

# interfaces
.implements Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/cli/content/CliContentManager$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCliContentManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CliContentManager.kt\ncom/motorola/camera/cli/content/CliContentManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,252:1\n13808#2,14:253\n1#3:267\n*S KotlinDebug\n*F\n+ 1 CliContentManager.kt\ncom/motorola/camera/cli/content/CliContentManager\n*L\n94#1:253,14\n*E\n"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public animationSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingChangeListener<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

.field public cartoonFaceDetectionListener:Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;

.field public final cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

.field public final context:Landroid/content/Context;

.field public final isCliDisplay:Z

.field public final mEnvListener:Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

.field public previewFaceDetectionListener:Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;

.field public timeoutHandler:Landroid/os/Handler;

.field public timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    .line 3
    new-instance p2, Lcom/motorola/camera/cli/content/CliContentManager$Status;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p2, v0, v1, v1, v2}, Lcom/motorola/camera/cli/content/CliContentManager$Status;-><init>(FZZI)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 4
    new-instance p2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Ljava/lang/Runnable;

    .line 5
    new-instance p2, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->mEnvListener:Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

    .line 6
    new-instance p2, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cartoonFaceDetectionListener:Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;

    .line 7
    new-instance p2, Lcom/motorola/camera/cli/content/CliPresentationHolder;

    invoke-direct {p2, p1}, Lcom/motorola/camera/cli/content/CliPresentationHolder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    .line 8
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;)V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 9
    sget-object p1, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->previewFaceDetectionListener:Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;

    return-void
.end method


# virtual methods
.method public final changeAnimationContentStatus()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 3
    iget-boolean v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-eqz v2, :cond_0

    .line 4
    iget v3, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    const/high16 v4, 0x40c00000    # 6.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->showContent(I)V

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 6
    iget v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 7
    :cond_1
    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutHandler:Landroid/os/Handler;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final closeCameraCartoonContent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 3
    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->closeContent(I)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final closeContent(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.camera3.EXTRA_ACTION"

    const/4 v2, 0x3

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.EXTRA_CONTENT"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 3
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/Collection;

    .line 5
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 7
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_INIT:Ljava/util/Collection;

    .line 9
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 11
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v1, v0, v3

    .line 13
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 14
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    const-string v0, "StateKeyCollectionBuilde\u2026                 .build()"

    .line 15
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onRotationChanged(II)V
    .locals 2

    .line 1
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.EXTRA_ACTION"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.motorola.camera3.EXTRA_ORIENTATION"

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public final showContent(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.camera3.EXTRA_ACTION"

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.EXTRA_CONTENT"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "changeEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    const-string v0, "changeEvent.context"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/arch/view/BasePresentationHolder;->viewModel:Lcom/motorola/camera/arch/view/BaseViewModel;

    .line 6
    check-cast p1, Lcom/motorola/camera/cli/content/CliContentViewModel;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/cli/content/CliContentViewModel;->close()V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 9
    iput-boolean v1, v0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    .line 10
    iput-boolean v1, v0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_1
    monitor-exit p1

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    .line 13
    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutHandler:Landroid/os/Handler;

    if-nez v0, :cond_7

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 16
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 17
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 18
    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutHandler:Landroid/os/Handler;

    goto :goto_2

    .line 19
    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    const-string v0, "changeEvent.context"

    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_2

    .line 22
    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    .line 24
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 25
    iget-boolean v2, v2, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    monitor-exit v0

    .line 27
    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v2, :cond_7

    .line 28
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    const-string v0, "changeEvent.context"

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 30
    monitor-exit v0

    throw p0

    .line 31
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    const-string v0, "changeEvent.context"

    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 34
    iget-boolean p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_6

    .line 35
    invoke-virtual {p0, v0}, Lcom/motorola/camera/cli/content/CliContentManager;->showContent(I)V

    goto :goto_2

    .line 36
    :cond_6
    invoke-virtual {p0, v0}, Lcom/motorola/camera/cli/content/CliContentManager;->closeContent(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 2
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 3
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    if-eqz p2, :cond_0

    .line 5
    iget-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cartoonFaceDetectionListener:Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->mEnvListener:Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cartoonFaceDetectionListener:Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->mEnvListener:Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter p1

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 12
    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->closeCameraCartoonContent()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 15
    iget-boolean p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->previewFaceDetectionListener:Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->previewFaceDetectionListener:Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 18
    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/CliContentManager;->closeContent(I)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 19
    monitor-exit p1

    throw p0
.end method
