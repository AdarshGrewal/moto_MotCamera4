.class public Lcom/motorola/camera/ControllerSaveListener;
.super Ljava/lang/Object;
.source "ControllerSaveListener.java"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# instance fields
.field public final mEventListener:Lcom/motorola/camera/EventListener;

.field public mUpdateFreeBytesSkipCount:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/EventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ControllerSaveListener;->mEventListener:Lcom/motorola/camera/EventListener;

    return-void
.end method


# virtual methods
.method public onReviewSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ControllerSaveListener;->mEventListener:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAVING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/motorola/camera/ControllerSaveListener;->mUpdateFreeBytesSkipCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getMediaVolumes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/storage/MediaVolume;

    .line 4
    invoke-static {v3}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)J

    move-result-wide v3

    const-wide/32 v5, 0x19000000

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    move p1, v2

    :cond_2
    if-eqz p1, :cond_3

    .line 5
    iget p1, p0, Lcom/motorola/camera/ControllerSaveListener;->mUpdateFreeBytesSkipCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/motorola/camera/ControllerSaveListener;->mUpdateFreeBytesSkipCount:I

    goto :goto_1

    .line 6
    :cond_3
    iput v2, p0, Lcom/motorola/camera/ControllerSaveListener;->mUpdateFreeBytesSkipCount:I

    .line 7
    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    .line 8
    new-instance p1, Lcom/motorola/camera/storage/MediaVolumesHolder$updateFreeBytes$$inlined$runOnWorker$1;

    invoke-direct {p1}, Lcom/motorola/camera/storage/MediaVolumesHolder$updateFreeBytes$$inlined$runOnWorker$1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 16

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    const/4 v14, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 5
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v3, 0x7f1100e7

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 9
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 10
    :cond_0
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 11
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const v7, 0x7f110083

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v9, 0x2

    .line 12
    invoke-static {v11}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v3

    const/16 v4, 0x7d0

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v3, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    move-object v2, v4

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    const/16 v2, 0xfa0

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 17
    :cond_5
    new-instance v15, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v4, 0x1

    .line 18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v2, 0x0

    move-object v3, v15

    move v5, v10

    move-object/from16 p0, v1

    move-object v1, v15

    move-object v15, v2

    invoke-direct/range {v3 .. v15}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 19
    sput-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    .line 21
    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
