.class public Lcom/motorola/camera/analytics/ShotToShotEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "ShotToShotEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/analytics/ShotToShotEvent$Record;
    }
.end annotation


# static fields
.field public static final FACING:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mSessionMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/motorola/camera/analytics/ShotToShotEvent$Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "FACING"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/ShotToShotEvent;->FACING:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/analytics/LogEvent;-><init>()V

    .line 2
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public addData(Lcom/google/android/exoplayer2/FormatHolder;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p3, Ljava/lang/Long;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " using default data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    const/4 p0, 0x0

    invoke-direct {v0, p0}, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;-><init>(Lcom/motorola/camera/analytics/ShotToShotEvent$1;)V

    .line 6
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string p0, "SHOTSEQID"

    invoke-virtual {p2, p0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 7
    iget-object p0, v0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mMode:Ljava/lang/String;

    const-string p3, "MODE"

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-wide v1, v0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mKpiTime:J

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-wide v1, v0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mEndTime:J

    iget-wide v3, v0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mStartTime:J

    sub-long/2addr v1, v3

    :goto_0
    const-string p0, "SHOTTIME"

    .line 10
    invoke-virtual {p2, p0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 11
    iget p0, v0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mMcfQueue:I

    const-string p3, "MCFQUEUE"

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    sget-object p0, Lcom/motorola/camera/analytics/ShotToShotEvent;->FACING:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    const-string p3, "IS_CLI_DISPLAY"

    .line 13
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/FormatHolder;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 14
    invoke-static {p1}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    return-void
.end method

.method public areRequirementsMet(Lcom/motorola/camera/analytics/ShotToShotEvent$Record;)Z
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mEndTime:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mMode:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getEventType$enumunboxing$()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.9"

    return-object p0
.end method

.method public getSessionSeqId(Lcom/google/android/exoplayer2/FormatHolder;Ljava/lang/Object;)J
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Long;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    iget-wide p0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mSessionSeqId:J

    return-wide p0
.end method
