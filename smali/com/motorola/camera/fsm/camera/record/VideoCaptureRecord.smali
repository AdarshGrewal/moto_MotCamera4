.class public Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;
.super Lcom/motorola/camera/fsm/camera/record/CaptureRecord;
.source "VideoCaptureRecord.java"


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    return-void
.end method


# virtual methods
.method public populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_3D_HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->is3DHdrSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    :cond_0
    return-void
.end method
