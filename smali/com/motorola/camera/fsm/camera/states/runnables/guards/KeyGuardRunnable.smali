.class public Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;
.super Ljava/lang/Object;
.source "KeyGuardRunnable.java"

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


# static fields
.field public static final CAPTURE_KEYS:[Ljava/lang/Integer;


# instance fields
.field public final mKeyCodes:[Ljava/lang/Integer;

.field public final mKeyCondition:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x17

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x4f

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x1b

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->CAPTURE_KEYS:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->CAPTURE_KEYS:[Ljava/lang/Integer;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCodes:[Ljava/lang/Integer;

    .line 3
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCondition:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/Integer;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCodes:[Ljava/lang/Integer;

    .line 6
    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCondition:I

    return-void
.end method


# virtual methods
.method public canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "TIMER"

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const-string v2, "KEY_EVENT"

    .line 4
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/view/KeyEvent;

    if-eqz p2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCodes:[Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 9
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 10
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->CAPTURE_KEYS:[Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCaptureAllowed()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_7

    :cond_2
    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v1, v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    if-eqz p2, :cond_5

    .line 14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p2

    const/16 v4, 0x80

    and-int/2addr p2, v4

    if-ne p2, v4, :cond_5

    move p2, v1

    goto :goto_3

    :cond_5
    move p2, v0

    .line 15
    :goto_3
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCondition:I

    invoke-static {p0}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result p0

    if-eqz p0, :cond_c

    if-eq p0, v1, :cond_b

    const/4 v3, 0x2

    if-eq p0, v3, :cond_a

    const/4 p1, 0x3

    if-eq p0, p1, :cond_7

    const/4 p1, 0x4

    if-eq p0, p1, :cond_6

    goto :goto_7

    :cond_6
    move v0, v2

    goto :goto_7

    .line 16
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result p0

    const/4 p1, 0x6

    .line 17
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-nez p1, :cond_9

    const/16 p1, 0x10

    .line 18
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-nez p1, :cond_9

    const/16 p1, 0x11

    .line 19
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    move p1, v0

    goto :goto_5

    :cond_9
    :goto_4
    move p1, v1

    :goto_5
    if-eqz p2, :cond_d

    if-nez p1, :cond_d

    if-nez p0, :cond_d

    goto :goto_6

    :cond_a
    if-eqz p1, :cond_d

    if-eqz v2, :cond_d

    goto :goto_6

    :cond_b
    if-nez p1, :cond_d

    if-eqz v2, :cond_d

    :goto_6
    move v0, v1

    goto :goto_7

    :cond_c
    move v0, v3

    :cond_d
    :goto_7
    return v0
.end method
