.class public Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyGestureListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 6
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    div-float/2addr p3, p1

    div-float/2addr p4, p1

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_a

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 6
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 11
    :cond_1
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v0

    .line 14
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result v1

    const v2, 0x3cf5c28f    # 0.03f

    mul-float/2addr v1, v2

    .line 15
    invoke-virtual {v0, v1, v1}, Lcom/google/android/play/core/appupdate/zzy;->inset(FF)V

    if-eqz p2, :cond_3

    .line 16
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v1

    goto :goto_1

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v1

    :goto_1
    if-eqz p2, :cond_4

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    goto :goto_2

    .line 19
    :cond_4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    :goto_2
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v2, p3, p4, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FFF)V

    .line 21
    iget p3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpg-float p4, p3, v3

    const/high16 v4, 0x40000000    # 2.0f

    if-gez p4, :cond_5

    .line 22
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result p4

    div-float/2addr p4, v4

    add-float/2addr p4, p3

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result p3

    div-float/2addr p3, v4

    cmpl-float p3, p4, p3

    if-lez p3, :cond_6

    .line 23
    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result p3

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result p4

    sub-float/2addr p3, p4

    neg-float p3, p3

    div-float/2addr p3, v4

    iput p3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    goto :goto_3

    .line 24
    :cond_5
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result p4

    div-float/2addr p4, v4

    add-float/2addr p4, p3

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result p3

    div-float/2addr p3, v4

    cmpl-float p3, p4, p3

    if-lez p3, :cond_6

    .line 25
    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result p3

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v4

    iput p3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 26
    :cond_6
    :goto_3
    iget p3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    cmpg-float p4, p3, v3

    if-gez p4, :cond_7

    .line 27
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result p4

    div-float/2addr p4, v4

    add-float/2addr p4, p3

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result p3

    div-float/2addr p3, v4

    cmpl-float p3, p4, p3

    if-lez p3, :cond_8

    .line 28
    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result p3

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result p4

    sub-float/2addr p3, p4

    neg-float p3, p3

    div-float/2addr p3, v4

    iput p3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    goto :goto_4

    .line 29
    :cond_7
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result p4

    div-float/2addr p4, v4

    add-float/2addr p4, p3

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result p3

    div-float/2addr p3, v4

    cmpl-float p3, p4, p3

    if-lez p3, :cond_8

    .line 30
    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result p3

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v4

    iput p3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 31
    :cond_8
    :goto_4
    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-eqz p2, :cond_9

    .line 32
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 33
    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_5

    .line 34
    :cond_9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 35
    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 36
    :goto_5
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 37
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG:Lcom/motorola/camera/Notifier$TYPE;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    const/4 p2, 0x1

    goto :goto_6

    .line 38
    :cond_a
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 39
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_6
    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
