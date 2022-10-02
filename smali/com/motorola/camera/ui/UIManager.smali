.class public Lcom/motorola/camera/ui/UIManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "UIManager.java"

# interfaces
.implements Lcom/motorola/camera/ui/UI;
.implements Lcom/motorola/camera/EventListener;
.implements Lcom/motorola/camera/ui/GestureRecognizer$Listener;


# instance fields
.field public mCameraPreviewComponent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;",
            ">;"
        }
    .end annotation
.end field

.field public mComponents:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/ui/uicomponents/UIComponent;",
            ">;"
        }
    .end annotation
.end field

.field public final mController:Lcom/motorola/camera/Controller;

.field public mDelayRotateUI:Z

.field public mDetector:Lcom/motorola/camera/ui/GestureRecognizer;

.field public mDownCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mDownEventHandled:Z

.field public mDragDirection:I

.field public mDragStart:Landroid/graphics/PointF;

.field public mHandler:Landroid/os/Handler;

.field public mIgnoreRotationChanges:Z

.field public mInLongPress:Z

.field public mInitOrientation:I

.field public mOnDownTimestamp:J

.field public mOrientation:I

.field public final mRootLocationOnWindow:[I

.field public mRootView:Landroid/view/ViewGroup;

.field public mRotateUIRunnable:Ljava/lang/Runnable;

.field public mScaling:Z

.field public mTexOrientation:I

.field public mVideoRecording:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/UIManager;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/Controller;Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->UI_START:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    .line 3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mIgnoreRotationChanges:Z

    .line 4
    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    const/4 v2, 0x1

    .line 5
    iput v2, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    .line 6
    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    .line 7
    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    .line 8
    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mDelayRotateUI:Z

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 9
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/motorola/camera/ui/UIManager;->mRootLocationOnWindow:[I

    .line 10
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/UIManager;->mHandler:Landroid/os/Handler;

    .line 11
    new-instance v2, Lcom/motorola/camera/ui/UIManager$1;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/UIManager$1;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/UIManager;->mRotateUIRunnable:Ljava/lang/Runnable;

    .line 12
    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_0

    .line 13
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    .line 15
    iget-object v2, v2, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v2, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline2;->m(Ljava/util/HashMap;Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 16
    :cond_0
    iput-object p2, p0, Lcom/motorola/camera/ui/UIManager;->mRootView:Landroid/view/ViewGroup;

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 18
    new-instance p1, Lcom/motorola/camera/ui/GestureRecognizer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, p0}, Lcom/motorola/camera/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/GestureRecognizer$Listener;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mDetector:Lcom/motorola/camera/ui/GestureRecognizer;

    .line 19
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    new-instance p1, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 21
    new-instance p1, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 22
    invoke-static {}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->values()[Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    move-result-object p1

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;->Immediately:Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;

    .line 23
    invoke-static {p1, v2, p2, p0}, Lcom/motorola/camera/ui/uicomponents/UIComponentFactory;->getComponents([Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;Landroid/view/View;Lcom/motorola/camera/EventListener;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/Collection;

    .line 24
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    .line 25
    instance-of v2, p2, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v2, :cond_1

    .line 26
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v3, p2

    check-cast v3, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    .line 27
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    check-cast p2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-virtual {v2, p2}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    goto :goto_0

    .line 28
    :cond_2
    iget p1, p0, Lcom/motorola/camera/ui/UIManager;->mTexOrientation:I

    iput p1, p0, Lcom/motorola/camera/ui/UIManager;->mInitOrientation:I

    .line 29
    iget-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mRootView:Landroid/view/ViewGroup;

    const p2, 0x7f0a0364

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/uicomponents/SplashImageView;

    .line 30
    new-instance p2, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v1}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/UIManager;I)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/uicomponents/SplashImageView;->setFirstLoading(Ljava/lang/Runnable;)V

    .line 31
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_3

    .line 32
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 33
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result p0

    return p0
.end method

.method public final dispatchKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    const/4 v3, 0x3

    .line 8
    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    move p0, v0

    goto :goto_2

    :cond_3
    :goto_1
    move p0, v1

    :goto_2
    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    return v0
.end method

.method public dispatchLongPress(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    const-string v1, "LONG_PRESS"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    const-string v1, "ENABLE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-wide v0, p0, Lcom/motorola/camera/ui/UIManager;->mOnDownTimestamp:J

    const-string v2, "ON_DOWN"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final dispatchUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 4
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda2;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->onMotionEvent(Landroid/view/MotionEvent;Ljava/util/function/BiFunction;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getCameraType(Landroid/view/MotionEvent;)Lcom/motorola/camera/settings/CameraType;
    .locals 6

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewType()I

    move-result p0

    .line 3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v3

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-direct {v1, v2, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto/16 :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_0

    .line 17
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_0

    .line 18
    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRF()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_0

    .line 21
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_0

    .line 22
    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_0

    .line 24
    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    :goto_0
    return-object p0

    .line 25
    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    return-object p0
.end method

.method public final getHorizontalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    .line 2
    iget p0, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    const/16 v4, 0x5a

    if-eq p0, v4, :cond_2

    const/16 v4, 0xb4

    if-eq p0, v4, :cond_1

    const/16 p1, 0x10e

    if-eq p0, p1, :cond_0

    goto :goto_1

    :cond_0
    cmpl-float p0, p2, v3

    if-lez p0, :cond_4

    goto :goto_0

    :cond_1
    cmpg-float p0, p1, v3

    if-gez p0, :cond_4

    goto :goto_0

    :cond_2
    cmpg-float p0, p2, v3

    if-gez p0, :cond_4

    goto :goto_0

    :cond_3
    cmpl-float p0, p1, v3

    if-lez p0, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method public getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    return-object p0
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 3
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/Collection;

    .line 5
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;->PRO_PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 7
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final getVerticalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UP:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    .line 2
    iget p0, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    const/16 v4, 0x5a

    if-eq p0, v4, :cond_2

    const/16 v4, 0xb4

    if-eq p0, v4, :cond_1

    const/16 p2, 0x10e

    if-eq p0, p2, :cond_0

    goto :goto_1

    :cond_0
    cmpl-float p0, p1, v3

    if-lez p0, :cond_4

    goto :goto_0

    :cond_1
    cmpg-float p0, p2, v3

    if-gez p0, :cond_4

    goto :goto_0

    :cond_2
    cmpg-float p0, p1, v3

    if-gez p0, :cond_4

    goto :goto_0

    :cond_3
    cmpl-float p0, p2, v3

    if-lez p0, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method public getYOffsetIfNotWideScreen()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getYOffsetIfNotWideScreen()F

    move-result p0

    return p0
.end method

.method public getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/Controller;->getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F

    move-result p0

    return p0
.end method

.method public getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result p0

    return p0
.end method

.method public final initViewStubComponents(Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;->SplashDrawingComplete:Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a036f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;->SetRepeatingComplete:Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0370

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 8
    invoke-static {}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->values()[Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    move-result-object v0

    iget-object v5, p0, Lcom/motorola/camera/ui/UIManager;->mRootView:Landroid/view/ViewGroup;

    .line 9
    invoke-static {v0, p1, v5, p0}, Lcom/motorola/camera/ui/uicomponents/UIComponentFactory;->getComponents([Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;Landroid/view/View;Lcom/motorola/camera/EventListener;)Ljava/util/Collection;

    move-result-object v0

    .line 10
    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    .line 11
    invoke-interface {v6}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->resume()V

    .line 12
    iget v7, p0, Lcom/motorola/camera/ui/UIManager;->mInitOrientation:I

    iget v8, p0, Lcom/motorola/camera/ui/UIManager;->mTexOrientation:I

    if-eq v7, v8, :cond_2

    .line 13
    invoke-interface {v6, v8}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->rotate(I)V

    .line 14
    :cond_2
    iget-object v7, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    check-cast v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-virtual {v7, v6}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    goto :goto_1

    .line 15
    :cond_3
    sget-boolean v5, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v5, :cond_4

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inflate dur:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " initViewStubComponents dur:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " order:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UIManager"

    .line 18
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-void
.end method

.method public isCliDisplay()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result p0

    return p0
.end method

.method public final mapPointsInViewMatrix(Landroid/view/View;[F)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_0
    const/4 p0, 0x0

    .line 3
    aget v0, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    aput v0, p2, p0

    const/4 p0, 0x1

    .line 4
    aget v0, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    aput v0, p2, p0

    return-void
.end method

.method public declared-synchronized onRotationChanged(II)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-boolean v1, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, p2

    .line 3
    rem-int/lit16 p2, p1, 0x168

    :goto_0
    iput p2, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    .line 4
    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mIgnoreRotationChanges:Z

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mRotateUIRunnable:Ljava/lang/Runnable;

    .line 6
    iget-object p2, v0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mDelayRotateUI:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mRotateUIRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    .line 9
    iget-object p2, v0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 10
    :cond_1
    iget p1, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/UIManager;->rotateUI(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mDetector:Lcom/motorola/camera/ui/GestureRecognizer;

    .line 2
    iget p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 4
    :try_start_0
    const-class p1, Landroid/view/MotionEvent;

    const-string v2, "scale"

    new-array v3, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    .line 5
    iget v3, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "GestureRecognizer"

    const-string v3, "MotionEvent.scale failed"

    .line 6
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 8
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 9
    iget-object v3, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    .line 10
    invoke-virtual {v3, p1}, Lcom/motorola/camera/ui/UIManager;->dispatchUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    if-eqz v3, :cond_1

    goto/16 :goto_6

    .line 12
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v0, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    iput-boolean v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    goto :goto_2

    .line 15
    :cond_3
    iget-boolean p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x3

    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    const/4 v10, 0x0

    .line 18
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 19
    iget-object v3, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 21
    iput-boolean v1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    .line 22
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mPinchDetector:Lcom/motorola/camera/ui/PinchDetector;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const-string v6, "ENABLE"

    if-eq v5, v2, :cond_7

    const/4 v7, 0x5

    if-eq v5, v7, :cond_6

    const/4 v7, 0x6

    if-eq v5, v7, :cond_5

    goto/16 :goto_5

    :cond_5
    if-ne v4, v2, :cond_a

    const/4 v2, 0x0

    .line 25
    iput v2, p1, Lcom/motorola/camera/ui/PinchDetector;->mPinchBegin:F

    .line 26
    iget-object p1, p1, Lcom/motorola/camera/ui/PinchDetector;->mListener:Lcom/motorola/camera/ui/PinchDetector$PinchListener;

    check-cast p1, Lcom/motorola/camera/ui/GestureRecognizer$MyPinchListener;

    .line 27
    iget-object p1, p1, Lcom/motorola/camera/ui/GestureRecognizer$MyPinchListener;->this$0:Lcom/motorola/camera/ui/GestureRecognizer;

    .line 28
    iget-object p1, p1, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    .line 29
    check-cast p1, Lcom/motorola/camera/ui/UIManager;

    .line 30
    iget-boolean v2, p1, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    if-eqz v2, :cond_a

    .line 31
    invoke-static {v6, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    .line 32
    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v4, v3, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 33
    iget-object p1, p1, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 34
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_5

    .line 35
    :cond_6
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/PinchDetector;->getSpan(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p1, Lcom/motorola/camera/ui/PinchDetector;->mPinchBegin:F

    goto :goto_5

    :cond_7
    if-lt v4, v2, :cond_a

    .line 36
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/PinchDetector;->getSpan(Landroid/view/MotionEvent;)F

    move-result v4

    .line 37
    iget v5, p1, Lcom/motorola/camera/ui/PinchDetector;->mPinchBegin:F

    sub-float/2addr v5, v4

    .line 38
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v7, 0x3a83126f    # 0.001f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_a

    .line 39
    iget-object p1, p1, Lcom/motorola/camera/ui/PinchDetector;->mListener:Lcom/motorola/camera/ui/PinchDetector$PinchListener;

    check-cast p1, Lcom/motorola/camera/ui/GestureRecognizer$MyPinchListener;

    .line 40
    iget-object p1, p1, Lcom/motorola/camera/ui/GestureRecognizer$MyPinchListener;->this$0:Lcom/motorola/camera/ui/GestureRecognizer;

    .line 41
    iget-object p1, p1, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    .line 42
    check-cast p1, Lcom/motorola/camera/ui/UIManager;

    .line 43
    iput-boolean v0, p1, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    .line 44
    iput v0, p1, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    .line 45
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v7, "VALUE"

    .line 46
    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v5, "TYPE"

    .line 47
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    iget v2, p1, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    const-string v5, "ORIENTATION"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    iget-object v2, p1, Lcom/motorola/camera/ui/UIManager;->mDownCameraType:Lcom/motorola/camera/settings/CameraType;

    const-string v5, "CAMERA_TYPE"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 51
    iget-object v2, p1, Lcom/motorola/camera/ui/UIManager;->mDownCameraType:Lcom/motorola/camera/settings/CameraType;

    if-eqz v2, :cond_9

    .line 52
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/UIManager;->getCameraType(Landroid/view/MotionEvent;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    if-ne v2, v5, :cond_8

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_4

    :cond_9
    :goto_3
    move v2, v0

    :goto_4
    const-string v5, "SAME_ID"

    .line 53
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    iget-boolean v2, p1, Lcom/motorola/camera/ui/UIManager;->mVideoRecording:Z

    const-string v5, "VIDEO_RECORDING"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 56
    iget-object p1, p1, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 57
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 58
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->checkZoomDisabledHints()Z

    .line 59
    :cond_a
    :goto_5
    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mDownUpDetector:Lcom/motorola/camera/ui/DownUpDetector;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_c

    if-eq p1, v0, :cond_b

    const/4 v2, 0x3

    if-eq p1, v2, :cond_b

    goto :goto_6

    .line 61
    :cond_b
    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/DownUpDetector;->setState(ZLandroid/view/MotionEvent;)V

    goto :goto_6

    .line 62
    :cond_c
    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/DownUpDetector;->setState(ZLandroid/view/MotionEvent;)V

    :goto_6
    return v0
.end method

.method public onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    aput p1, v1, v4

    aput p1, v1, v3

    goto :goto_1

    :cond_0
    new-array v0, v0, [F

    .line 3
    aget v2, v1, v3

    aput v2, v0, v3

    .line 4
    aget v2, v1, v4

    aput v2, v0, v4

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/UIManager;->mapPointsInViewMatrix(Landroid/view/View;[F)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 7
    :goto_0
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 8
    check-cast p1, Landroid/view/View;

    .line 9
    aget v2, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    aput v2, v0, v3

    .line 10
    aget v2, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    aput v2, v0, v4

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/UIManager;->mapPointsInViewMatrix(Landroid/view/View;[F)V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_1
    aget p1, v0, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    aput p1, v1, v3

    .line 14
    aget p1, v0, v4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    aput p1, v1, v4

    .line 15
    :goto_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 16
    aget p2, v1, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mRootLocationOnWindow:[I

    aget v2, v0, v3

    int-to-float v2, v2

    sub-float/2addr p2, v2

    aput p2, v1, v3

    .line 17
    aget p2, v1, v4

    aget v0, v0, v4

    int-to-float v0, v0

    sub-float/2addr p2, v0

    aput p2, v1, v4

    .line 18
    aget p2, v1, v3

    aget v0, v1, v4

    invoke-virtual {p1, p2, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    const/4 p2, 0x0

    .line 19
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/UIManager;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 20
    iput-boolean v4, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public playHaptic(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method public final processKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "KEY_EVENT"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    const-string v3, "ON_DOWN"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    const-string v1, "ON_UP"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6
    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 7
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    const-string v3, "TIMER"

    .line 10
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v3, "CAPTURE_TRIGGER"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const-string v3, "KEY_CODE"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    const/16 v1, 0x80

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string p1, "LONG_PRESS"

    .line 14
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    return-void
.end method

.method public registerStateChangeListener(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/motorola/camera/fsm/camera/StateChangeListener;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Ljava/util/Collection;)V

    return-void
.end method

.method public final rotateUI(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/UIManager;->mTexOrientation:I

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    .line 3
    invoke-interface {v0, p1}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->rotate(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    .line 2
    iput v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->orientation:I

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/motorola/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Camera;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 2
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    :cond_0
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    new-instance v4, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v3}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/UIManager;I)V

    .line 5
    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    :cond_1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupCaptureAndUiSettings()V

    goto/16 :goto_2

    .line 9
    :cond_2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 11
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 12
    iput-boolean v3, p0, Lcom/motorola/camera/ui/UIManager;->mDelayRotateUI:Z

    .line 13
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 16
    :cond_3
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    iget-object v2, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 18
    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p1, :cond_12

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mDetector:Lcom/motorola/camera/ui/GestureRecognizer;

    .line 21
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getUIScaleFactor()F

    move-result p1

    .line 22
    iput p1, v0, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    goto/16 :goto_2

    .line 23
    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    iput-boolean v3, p0, Lcom/motorola/camera/ui/UIManager;->mIgnoreRotationChanges:Z

    .line 25
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 26
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    .line 27
    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 28
    :cond_5
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 29
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_1

    .line 30
    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;->PRO_PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 31
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_0

    .line 32
    :cond_7
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 33
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_2

    .line 34
    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 36
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 37
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 38
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v2, "ON_UP"

    .line 39
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_2

    .line 40
    :cond_9
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 41
    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mDelayRotateUI:Z

    goto/16 :goto_2

    .line 42
    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 43
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 44
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    .line 45
    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 46
    :cond_b
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 47
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 48
    new-instance v0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/UIManager;I)V

    .line 49
    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 50
    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 51
    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mVideoRecording:Z

    goto :goto_2

    .line 52
    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 53
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 54
    :cond_e
    iput-boolean v3, p0, Lcom/motorola/camera/ui/UIManager;->mVideoRecording:Z

    goto :goto_2

    .line 55
    :cond_f
    :goto_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mIgnoreRotationChanges:Z

    if-eqz p1, :cond_10

    .line 56
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 57
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    .line 58
    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    :cond_10
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 60
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 61
    check-cast p1, Lcom/motorola/camera/settings/CaptureIntent;

    if-eqz p1, :cond_12

    .line 62
    invoke-virtual {p1}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 63
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v0, "KEY_CODE"

    const/16 v1, 0x1b

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 66
    iget-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 67
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_2

    .line 68
    :cond_11
    :goto_1
    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mIgnoreRotationChanges:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_12
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterStateChangeListener(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/motorola/camera/fsm/camera/StateChangeListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Ljava/util/Collection;)V

    return-void
.end method