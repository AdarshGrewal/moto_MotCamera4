.class public Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable$1;
.super Ljava/lang/Object;
.source "RecorderPrepareRunnable.java"

# interfaces
.implements Lcom/motorola/camera/device/callables/RecorderPrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/view/Surface;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 4
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PREPARED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 24

    move-object/from16 v0, p1

    .line 1
    instance-of v0, v0, Lcom/motorola/camera/device/exception/DriveStateUnknownException;

    const/4 v1, 0x1

    const-string v2, "Text Description is empty for Setting Confirmation"

    const/4 v3, 0x2

    const/16 v4, 0xfa0

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    const/16 v6, 0x7d0

    .line 3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eqz v0, :cond_5

    .line 4
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 5
    sget-object v10, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/4 v14, 0x0

    const v15, 0x7f1100ce

    const/16 v18, 0x1

    const/16 v19, 0x3

    const/16 v22, 0x0

    .line 6
    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v11

    if-eqz v11, :cond_3

    if-eq v11, v9, :cond_2

    if-eq v11, v5, :cond_0

    move-object v6, v7

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move/from16 v17, v1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move/from16 v17, v3

    move-object v6, v7

    goto :goto_1

    :cond_3
    :goto_0
    move/from16 v17, v8

    :goto_1
    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v6

    .line 9
    :goto_2
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v12, 0x1

    .line 10
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v23, 0x0

    move-object v11, v1

    move/from16 v13, v18

    invoke-direct/range {v11 .. v23}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 11
    sput-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v10, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_6

    .line 14
    :cond_5
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 15
    sget-object v10, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/4 v14, 0x0

    const v15, 0x7f11012f

    const/16 v18, 0x1

    const/16 v22, 0x0

    const/16 v19, 0x4

    .line 16
    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v11

    if-eqz v11, :cond_9

    if-eq v11, v9, :cond_8

    if-eq v11, v5, :cond_6

    move-object v6, v7

    goto :goto_3

    .line 17
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    move/from16 v17, v1

    goto :goto_4

    .line 18
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move/from16 v17, v3

    move-object v6, v7

    goto :goto_4

    :cond_9
    :goto_3
    move/from16 v17, v8

    :goto_4
    if-nez v6, :cond_a

    goto :goto_5

    :cond_a
    move-object v4, v6

    .line 19
    :goto_5
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v12, 0x1

    .line 20
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v23, 0x0

    move-object v11, v1

    move/from16 v13, v18

    invoke-direct/range {v11 .. v23}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 21
    sput-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 22
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v10, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_6
    move-object/from16 v0, p0

    .line 24
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;

    .line 25
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 26
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 27
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
