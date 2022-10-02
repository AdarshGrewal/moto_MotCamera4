.class public final Lcom/motorola/camera/fsm/camera/Trigger;
.super Ljava/lang/Object;
.source "Trigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;,
        Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;,
        Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;,
        Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;,
        Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;,
        Lcom/motorola/camera/fsm/camera/Trigger$Event;
    }
.end annotation


# instance fields
.field public final mData:Ljava/lang/Object;

.field public final mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

.field public mResult:Z

.field public final mSyncronous:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mResult:Z

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mData:Ljava/lang/Object;

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mSyncronous:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mResult:Z

    .line 8
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 9
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mData:Ljava/lang/Object;

    .line 10
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mSyncronous:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mResult:Z

    .line 13
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 14
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mData:Ljava/lang/Object;

    .line 15
    iput-boolean p3, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mSyncronous:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/Trigger;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/Trigger;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Trigger{mEvent="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mData:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
