.class public Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;
.super Ljava/lang/Object;
.source "ShutterButtonGuardRunnable.java"

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


# instance fields
.field public final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;->mType:I

    return-void
.end method


# virtual methods
.method public canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "CAPTURE_TRIGGER"

    .line 3
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->STYLUS:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_9

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCaptureAllowed()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_6

    :cond_2
    const-string p1, "TIMER"

    .line 7
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v2

    .line 8
    :goto_2
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 9
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq v1, p2, :cond_5

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    move p2, v2

    goto :goto_4

    :cond_5
    :goto_3
    move p2, v1

    .line 11
    :goto_4
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/ShutterButtonGuardRunnable;->mType:I

    invoke-static {p0}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result p0

    if-eqz p0, :cond_7

    if-eq p0, v1, :cond_6

    goto :goto_6

    :cond_6
    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_7
    if-eqz p2, :cond_8

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    move v1, v2

    :goto_5
    move v2, v1

    :cond_9
    :goto_6
    return v2
.end method
