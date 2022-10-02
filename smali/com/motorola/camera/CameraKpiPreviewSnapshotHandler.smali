.class public final Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;
.super Ljava/lang/Object;
.source "CameraKpiPreviewSnapshotHandler.kt"


# instance fields
.field public final cameraDrawTimestamps:[J

.field public final cameraFrames:[Ljava/nio/Buffer;

.field public isDisposed:Z

.field public isFrameSaved:Z

.field public orientation:I

.field public previewRect:Landroid/graphics/Rect;

.field public final shutterClickListener:Lcom/motorola/camera/Notifier$Listener;

.field public viewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [J

    .line 2
    iput-object v1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraDrawTimestamps:[J

    new-array v0, v0, [Ljava/nio/Buffer;

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    .line 4
    new-instance v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;)V

    iput-object v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->shutterClickListener:Lcom/motorola/camera/Notifier$Listener;

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->previewRect:Landroid/graphics/Rect;

    .line 6
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->viewSize:Lcom/motorola/camera/PreviewSize;

    .line 7
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 8
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_CLICKED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method


# virtual methods
.method public final area(Landroid/graphics/Rect;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr p1, p0

    return p1
.end method

.method public final isFrameDumpEnabled()Z
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DUMP_PREVIEW_ON_SHUTTER_UP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "get(SettingsManager.DEBU\u2026VIEW_ON_SHUTTER_UP).value"

    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final onCaptureFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameSaved:Z

    return-void
.end method

.method public final savePreviewPixelsIntoBuffer()V
    .locals 11

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    const-string v1, "previewRect"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->area(Landroid/graphics/Rect;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    .line 4
    aget-object v10, v1, v3

    .line 5
    aget-object v4, v1, v2

    aput-object v4, v1, v3

    .line 6
    aput-object v10, v1, v2

    if-nez v10, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v10}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    :goto_0
    if-nez v10, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->viewSize:Lcom/motorola/camera/PreviewSize;

    .line 10
    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v1, v5

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    .line 12
    invoke-static/range {v4 .. v10}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->readPixels(IIIIIILjava/nio/Buffer;)V

    .line 13
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraDrawTimestamps:[J

    aget-wide v0, p0, v2

    aput-wide v0, p0, v3

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    aput-wide v0, p0, v2

    :cond_3
    :goto_2
    return-void
.end method
