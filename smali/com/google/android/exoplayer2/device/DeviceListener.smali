.class public interface abstract Lcom/google/android/exoplayer2/device/DeviceListener;
.super Ljava/lang/Object;
.source "DeviceListener.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public onDeviceInfoChanged(Lcom/google/android/exoplayer2/device/DeviceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceInfo"
        }
    .end annotation

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "volume",
            "muted"
        }
    .end annotation

    return-void
.end method
