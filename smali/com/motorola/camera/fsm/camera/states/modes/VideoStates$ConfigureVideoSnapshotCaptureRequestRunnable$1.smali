.class public Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable$1;
.super Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
.source "VideoStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable;->onCreateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable;IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    return-void
.end method


# virtual methods
.method public getOrientation(Ljava/lang/String;Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/constraintlayout/core/Cache;

    .line 4
    invoke-virtual {p0}, Landroidx/constraintlayout/core/Cache;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    .line 6
    iget p0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    return p0
.end method
