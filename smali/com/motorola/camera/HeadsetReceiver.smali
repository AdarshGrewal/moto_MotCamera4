.class public Lcom/motorola/camera/HeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetReceiver.java"


# instance fields
.field public mEventListener:Lcom/motorola/camera/EventListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/HeadsetReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/EventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/HeadsetReceiver;->mEventListener:Lcom/motorola/camera/EventListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    const-string/jumbo v0, "state"

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "microphone"

    .line 3
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/HeadsetReceiver;->mEventListener:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HEADSET_PLUG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->PLUG:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    .line 6
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    new-instance v0, Lcom/motorola/camera/HeadsetReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/HeadsetReceiver$1;-><init>(Lcom/motorola/camera/HeadsetReceiver;Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;)V

    .line 8
    iget-object p0, p2, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->UNPLUG:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    .line 10
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    new-instance v0, Lcom/motorola/camera/HeadsetReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/HeadsetReceiver$1;-><init>(Lcom/motorola/camera/HeadsetReceiver;Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;)V

    .line 12
    iget-object p0, p2, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method
