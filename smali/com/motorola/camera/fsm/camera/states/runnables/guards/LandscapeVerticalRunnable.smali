.class public Lcom/motorola/camera/fsm/camera/states/runnables/guards/LandscapeVerticalRunnable;
.super Ljava/lang/Object;
.source "LandscapeVerticalRunnable.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p2, Landroid/os/Bundle;

    const-string p0, "DIRECTION"

    .line 4
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v0, "ORIENTATION"

    .line 5
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_3

    :cond_1
    const/4 p2, 0x4

    if-eq p0, p2, :cond_2

    const/4 p2, 0x3

    if-ne p0, p2, :cond_3

    :cond_2
    const/4 p1, 0x1

    :cond_3
    :goto_0
    return p1
.end method
