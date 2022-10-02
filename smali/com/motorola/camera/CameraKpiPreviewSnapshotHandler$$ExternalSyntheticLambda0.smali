.class public final synthetic Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    const-string/jumbo p0, "this$0"

    .line 1
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v3}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameDumpEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-boolean p0, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    if-nez p0, :cond_4

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentPhotoTypeMode()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-boolean p0, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameSaved:Z

    if-nez p0, :cond_4

    .line 4
    iput-boolean v1, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameSaved:Z

    .line 5
    instance-of p0, p2, Landroid/os/Bundle;

    if-eqz p0, :cond_0

    check-cast p2, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-wide/16 p0, 0x0

    if-nez p2, :cond_1

    move-wide v4, p0

    goto :goto_1

    :cond_1
    const-string v0, "ON_UP"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    :goto_1
    cmp-long p0, v4, p0

    if-lez p0, :cond_4

    .line 6
    iget-object p0, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object p1, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraDrawTimestamps:[J

    const/4 p2, 0x0

    aget-wide v6, p1, p2

    cmp-long p1, v4, v6

    if-lez p1, :cond_2

    move v1, p2

    .line 8
    :cond_2
    iget-object p1, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    aget-object v4, p1, v1

    .line 9
    iget-object p2, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p2}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->area(Landroid/graphics/Rect;)I

    move-result p2

    invoke-static {p2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p2

    aput-object p2, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    if-nez v4, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 12
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 14
    new-instance v5, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v5, p1, p0}, Landroid/util/Size;-><init>(II)V

    .line 15
    iget v6, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->orientation:I

    .line 16
    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    .line 18
    new-instance p1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda1;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;Ljava/nio/Buffer;Landroid/util/Size;IJ)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    throw p1

    :cond_4
    :goto_2
    return-void

    .line 20
    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->LISTENED_NOTIFIERS:Ljava/util/List;

    const-string/jumbo v0, "this$0"

    .line 21
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_5

    const/4 p1, -0x1

    goto :goto_4

    .line 22
    :cond_5
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_4
    if-eq p1, v1, :cond_8

    const/4 v0, 0x2

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    goto :goto_5

    .line 23
    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->viewfinderFrameRate:Landroidx/lifecycle/MutableLiveData;

    .line 25
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_5

    .line 26
    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->glFrameRate:Landroidx/lifecycle/MutableLiveData;

    .line 28
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_5

    .line 29
    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    .line 30
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aiScene:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "null cannot be cast to non-null type com.motorola.camera.mcf.McfCallbackAIScene"

    .line 31
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/mcf/McfCallbackAIScene;

    iget-object p1, p2, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mScene:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
