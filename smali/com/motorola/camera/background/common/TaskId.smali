.class public final Lcom/motorola/camera/background/common/TaskId;
.super Ljava/lang/Object;
.source "TaskId.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/TaskId$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/motorola/camera/background/common/TaskId$CREATOR;


# instance fields
.field public clientId:I

.field public final comment:Ljava/lang/String;

.field public final jobNum:J

.field public final priority:I

.field public final sourceId:I

.field public final targetId:I

.field public final taskNum:J

.field public final useFifo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/common/TaskId$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/background/common/TaskId$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/background/common/TaskId;->CREATOR:Lcom/motorola/camera/background/common/TaskId$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xff

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/background/common/TaskId;-><init>(IJJIIIZLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(IJJIIIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 2
    iput-wide p2, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iput-wide p4, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 3
    iput p6, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    iput p7, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 4
    iput p8, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    .line 5
    iput-boolean p9, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    .line 6
    iput-object p10, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJJIIIZLjava/lang/String;I)V
    .locals 10

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    move-wide v6, v4

    goto :goto_1

    :cond_1
    move-wide v6, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-wide v4, p4

    :goto_2
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move/from16 v3, p6

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    .line 7
    sget-object v9, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    goto :goto_5

    :cond_5
    move/from16 v2, p8

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_6

    :cond_6
    move/from16 v9, p9

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v0, ""

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    move p1, v1

    move-wide p2, v6

    move-wide p4, v4

    move/from16 p6, v3

    move/from16 p7, v8

    move/from16 p8, v2

    move/from16 p9, v9

    move-object/from16 p10, v0

    .line 8
    invoke-direct/range {p0 .. p10}, Lcom/motorola/camera/background/common/TaskId;-><init>(IJJIIIZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/common/TaskId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/common/TaskId;

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iget v3, p1, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    iget v3, p1, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    iget v3, p1, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    iget v3, p1, Lcom/motorola/camera/background/common/TaskId;->priority:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    iget-boolean v3, p1, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    const/16 v3, 0x1f

    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    invoke-static {v1, v0, v2}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toJobId()Lcom/motorola/camera/background/common/JobId;
    .locals 12

    .line 1
    new-instance v11, Lcom/motorola/camera/background/common/JobId;

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iget-wide v2, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-wide v4, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget v6, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    iget v7, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 2
    iget v8, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    iget-boolean v9, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    iget-object v10, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    move-object v0, v11

    .line 3
    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/background/common/JobId;-><init>(IJJIIIZLjava/lang/String;)V

    return-object v11
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "TaskId(clientId="

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jobNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useFifo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p2, p0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-wide v0, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget p2, p0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-boolean p2, p0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
