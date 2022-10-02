.class public Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "WideSelfieShotStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayCaptureSoundRunnable"
.end annotation


# instance fields
.field public mSoundType:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;->mSoundType:I

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    .line 5
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mCaptureTone:Landroid/media/MediaActionSound;

    .line 6
    iput-object p2, p3, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->mCaptureTone:Landroid/media/MediaActionSound;

    .line 7
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget p2, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;->mSoundType:I

    if-nez p2, :cond_0

    .line 10
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object p2

    .line 11
    iput-boolean p1, p2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    const/4 p1, 0x0

    .line 12
    iput p1, p2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    .line 13
    iput p1, p2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    .line 14
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;

    .line 18
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->mCaptureTone:Landroid/media/MediaActionSound;

    const/4 p1, 0x2

    .line 19
    invoke-virtual {p0, p1}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;

    .line 21
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget p2, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;->mSoundType:I

    if-ne p1, p2, :cond_1

    .line 23
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 24
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 25
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->mCaptureTone:Landroid/media/MediaActionSound;

    const/4 p1, 0x3

    .line 28
    invoke-virtual {p0, p1}, Landroid/media/MediaActionSound;->play(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
