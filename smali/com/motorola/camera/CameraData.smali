.class public Lcom/motorola/camera/CameraData;
.super Ljava/lang/Object;
.source "CameraData.java"


# instance fields
.field public final mBundle:Lcom/google/android/exoplayer2/FormatHolder;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string p0, "DATE_TYPE"

    .line 3
    invoke-virtual {v0, p0, p3}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    const-string p0, "FILE_NAME"

    .line 4
    invoke-virtual {v0, p0, p2}, Lcom/google/android/exoplayer2/FormatHolder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p2

    const-string p0, "ID"

    invoke-virtual {v0, p0, p2, p3}, Lcom/google/android/exoplayer2/FormatHolder;->putLong(Ljava/lang/String;J)V

    :cond_0
    const-string p0, "URI"

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/google/android/exoplayer2/FormatHolder;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/FormatHolder;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;I)V
    .locals 0

    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/FormatHolder;->putAll(Landroid/os/Bundle;)V

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string p1, "ERROR_CASE"

    invoke-virtual {p0, p1, p5}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p11}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string p2, "FILE_PATH"

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/FormatHolder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string p2, "DATE_TAKEN"

    invoke-virtual {p1, p2, p4, p5}, Lcom/google/android/exoplayer2/FormatHolder;->putLong(Ljava/lang/String;J)V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string p2, "DATE_MODIFIED"

    invoke-virtual {p1, p2, p6, p7}, Lcom/google/android/exoplayer2/FormatHolder;->putLong(Ljava/lang/String;J)V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string p2, "ORIENTATION"

    invoke-virtual {p1, p2, p10}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string p2, "WIDTH"

    invoke-virtual {p1, p2, p8}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    .line 18
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string p1, "HEIGHT"

    invoke-virtual {p0, p1, p9}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "DATE_TYPE"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDateModified()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "DATE_MODIFIED"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "DATE_TAKEN"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "FILE_NAME"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "HEIGHT"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "ID"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "ORIENTATION"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "SEQ_ID"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    return-object p0
.end method

.method public getTaskID()Lcom/motorola/camera/background/common/TaskId;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string/jumbo v0, "task_id"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/TaskId;

    return-object p0
.end method

.method public getThumbData()[B
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "THUMB_DATA"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "URI"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "WIDTH"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isBackgroundServiceJob()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isProcessingUri()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "PROCESSING_URI"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CameraData"

    const-string v1, "("

    .line 1
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
