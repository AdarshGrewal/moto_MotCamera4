.class public final Lcom/motorola/camera/device/CameraHandlerThread$CameraData;
.super Ljava/lang/Object;
.source "CameraHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/CameraHandlerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraData"
.end annotation


# instance fields
.field public mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field public mCameraInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public mMediaRecorderSurface:Landroid/view/Surface;

.field public mPlayer:Landroid/media/MediaPlayer;

.field public mRecorder:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/CameraHandlerThread$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraInfoMap:Ljava/util/Map;

    return-void
.end method
