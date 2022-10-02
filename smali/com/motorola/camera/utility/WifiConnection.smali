.class public Lcom/motorola/camera/utility/WifiConnection;
.super Ljava/lang/Object;
.source "WifiConnection.java"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# instance fields
.field public mAttempts:I

.field public mCheckForWifiRunnable:Ljava/lang/Runnable;

.field public mEvent:Lcom/motorola/camera/fsm/ChangeEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;"
        }
    .end annotation
.end field

.field public mEventListener:Lcom/motorola/camera/EventListener;

.field public mIsHidden:Z

.field public mPassword:Ljava/lang/String;

.field public mSsid:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/EventListener;Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/EventListener;",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/utility/WifiConnection;->mAttempts:I

    .line 3
    new-instance v0, Lcom/motorola/camera/utility/WifiConnection$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/utility/WifiConnection$1;-><init>(Lcom/motorola/camera/utility/WifiConnection;)V

    iput-object v0, p0, Lcom/motorola/camera/utility/WifiConnection;->mCheckForWifiRunnable:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/utility/WifiConnection;->mEventListener:Lcom/motorola/camera/EventListener;

    .line 5
    iput-object p2, p0, Lcom/motorola/camera/utility/WifiConnection;->mEvent:Lcom/motorola/camera/fsm/ChangeEvent;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/utility/WifiConnection;->mEvent:Lcom/motorola/camera/fsm/ChangeEvent;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->WIFI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "ssid"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/utility/WifiConnection;->mSsid:Ljava/lang/String;

    const-string v1, "password"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/utility/WifiConnection;->mPassword:Ljava/lang/String;

    const-string v1, "enctype"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hidden"

    .line 8
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/utility/WifiConnection;->mIsHidden:Z

    const-string v0, "WEP"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/utility/WifiConnection;->mType:I

    goto :goto_0

    :cond_0
    const-string v0, "WPA"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/utility/WifiConnection;->mType:I

    goto :goto_0

    :cond_1
    const-string v0, "SAE"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/utility/WifiConnection;->mType:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/motorola/camera/utility/WifiConnection;->mType:I

    :goto_0
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/motorola/camera/utility/WifiConnection;->mAttempts:I

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/utility/WifiConnection;->mEvent:Lcom/motorola/camera/fsm/ChangeEvent;

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 16
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 17
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 18
    iget-object v1, p0, Lcom/motorola/camera/utility/WifiConnection;->mCheckForWifiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/utility/WifiConnection;->mEvent:Lcom/motorola/camera/fsm/ChangeEvent;

    .line 20
    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 21
    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 22
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    instance-of p1, p1, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/utility/WifiConnection;->mEvent:Lcom/motorola/camera/fsm/ChangeEvent;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 4
    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void
.end method
