.class public Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;
.super Ljava/lang/Object;
.source "RoiLockGuardRunnable.java"

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
.field public mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;->mType:I

    return-void
.end method


# virtual methods
.method public canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable;->mType:I

    invoke-static {p0}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_1

    if-eq p0, p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisableRoiMode()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p1, :cond_2

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisableRoiMode()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    :goto_1
    return p2
.end method
