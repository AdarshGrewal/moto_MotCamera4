.class public Lcom/motorola/camera/HeadsetReceiver$1;
.super Ljava/lang/Object;
.source "HeadsetReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/HeadsetReceiver;

.field public final synthetic val$status:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/HeadsetReceiver;Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/HeadsetReceiver$1;->this$0:Lcom/motorola/camera/HeadsetReceiver;

    iput-object p2, p0, Lcom/motorola/camera/HeadsetReceiver$1;->val$status:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/HeadsetReceiver$1;->this$0:Lcom/motorola/camera/HeadsetReceiver;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/HeadsetReceiver;->mEventListener:Lcom/motorola/camera/EventListener;

    .line 3
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HEADSET_PLUG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p0, p0, Lcom/motorola/camera/HeadsetReceiver$1;->val$status:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
