.class public Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;
.source "VideoStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigureVideoSnapshotCaptureRequestRunnable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    return-void
.end method


# virtual methods
.method public onCreateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 8

    .line 1
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable$1;

    .line 2
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v2

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 4
    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    .line 6
    sget-object v5, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable;IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    .line 7
    invoke-virtual {v6, p1}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    .line 9
    invoke-static {v6}, Lcom/motorola/camera/saving/ImageCaptureManager;->addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 12
    iget-object p1, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-string v0, "SEQ_ID"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
