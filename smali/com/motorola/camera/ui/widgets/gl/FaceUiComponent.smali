.class public Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "FaceUiComponent.java"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;
.implements Lcom/motorola/camera/Notifier$Listener;
.implements Lcom/motorola/camera/ui/widgets/gl/FaceUiCompCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;,
        Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;,
        Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicy;,
        Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchRoiFaceCallback;,
        Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;
    }
.end annotation


# static fields
.field public static final WHITE_COLOR:I


# instance fields
.field public focusRunnable:Ljava/lang/Runnable;

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

.field public mCameraFacing:I

.field public mCameraToDisplayOrientation:I

.field public mDeferredOrientation:I

.field public mDeferredRotate:Z

.field public mFaceMatrix:[F

.field public mFacePolicy:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicy;

.field public mFaceTextureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mFlags:Lcom/motorola/camera/utility/Flags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/utility/Flags<",
            "Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;",
            ">;"
        }
    .end annotation
.end field

.field public mIsAlwaysShowFaces:Z

.field public mLastFaceDetectionTime:J

.field public mLoaded:Z

.field public mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

.field public mPreviewOffset:Landroid/graphics/Point;

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mPreviousFocus:Z

.field public mShouldKeepHidden:Z

.field public mShowTipsRunnable:Ljava/lang/Runnable;

.field public mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mTipVisible:Z

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->WHITE_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 5
    invoke-static {p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    .line 7
    new-instance p1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {p1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 8
    new-instance p1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {p1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    .line 10
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewOffset:Landroid/graphics/Point;

    .line 11
    new-instance p1, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->focusRunnable:Ljava/lang/Runnable;

    .line 12
    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 13
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShowTipsRunnable:Ljava/lang/Runnable;

    .line 14
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    return-void
.end method

.method public static access$300(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    .line 4
    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result v1

    .line 5
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraFacing:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraToDisplayOrientation:I

    if-eq v2, v1, :cond_1

    .line 6
    :cond_0
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraFacing:I

    .line 7
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraToDisplayOrientation:I

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateFaceMatrix()V

    :cond_1
    return-void
.end method

.method public static access$700(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentPhotoTypeMode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 3
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public animateFocus(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-nez v0, :cond_0

    const/16 v0, 0x5dc

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(ZI)V

    :cond_0
    return-void
.end method

.method public final animateFocusArea(ZI)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviousFocus:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->focusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->runFadeRunnable(Z)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->focusRunnable:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviousFocus:Z

    return-void
.end method

.method public declared-synchronized clearFaces()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->animationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->renderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->component:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->focusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 5
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

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

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FaceUiComponent"

    return-object p0
.end method

.method public final getTextPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 2
    invoke-direct {p0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v0

    const/high16 v2, 0x42a00000    # 80.0f

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 5
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    .line 6
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v2

    .line 7
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 8
    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v8

    .line 9
    invoke-static {v5, v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getTopYPosition(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;FFZ)F

    move-result v5

    .line 10
    new-instance v6, Landroid/graphics/Rect;

    .line 11
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    iget-object v7, v7, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 13
    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 14
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 15
    invoke-direct {v7, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 16
    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v8, :cond_4

    const/16 v2, 0x5a

    if-eq v8, v2, :cond_3

    const/16 v2, 0xb4

    if-eq v8, v2, :cond_2

    const/16 v2, 0x10e

    if-eq v8, v2, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    sub-float/2addr p0, v3

    invoke-virtual {v7, p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr p0, v0

    .line 19
    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    add-float/2addr p0, v3

    invoke-virtual {v7, v1, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    goto :goto_0

    .line 20
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v3

    invoke-virtual {v7, p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    goto :goto_0

    .line 21
    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p0, v0

    .line 22
    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    sub-float/2addr p0, v3

    invoke-virtual {v7, v1, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :goto_0
    return-object v7
.end method

.method public final isFrontCamera()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized loadTextures()Z
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_DETECT_ALWAYS_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    .line 6
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    invoke-direct {v1, p0, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;ILcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFacePolicy:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    monitor-exit p0

    const/4 v0, 0x0

    move v1, v0

    .line 8
    :goto_1
    invoke-static {}, Lcom/motorola/camera/Util;->isProductionBuild()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    move v4, v3

    :goto_2
    if-ge v1, v4, :cond_2

    .line 9
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget v7, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->WHITE_COLOR:I

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    .line 10
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->loadTexture()V

    .line 11
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    invoke-interface {v5, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_2
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLoaded:Z

    .line 13
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 14
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v4, 0x7f1103ea

    .line 15
    invoke-virtual {v2, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v2, 0x0

    const/high16 v4, -0x1000000

    const/high16 v5, 0x3f800000    # 1.0f

    .line 16
    invoke-virtual {v1, v5, v2, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    .line 18
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateLayout()V

    .line 21
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 22
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 24
    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDraw([F[F[F)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ENABLE_DRAW:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    .line 4
    iget-object p3, p3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_1

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;

    .line 7
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onFaceDetected([Landroid/hardware/camera2/params/Face;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;[Landroid/hardware/camera2/params/Face;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized onPreDraw([F[F[F)Z
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->animationUpdate([F)Z

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ENABLE_DRAW:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRotate(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mDeferredRotate:Z

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mDeferredOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;

    .line 7
    iput p1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateLayout()V

    .line 9
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateFaceMatrix()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/PreviewSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/PreviewSize;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    .line 4
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mDeferredRotate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mDeferredRotate:Z

    .line 6
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mDeferredOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->onRotate(I)V

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    .line 9
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewOffset:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateFaceMatrix()V

    .line 11
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;

    .line 12
    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateLayout()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->IN_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ENABLE_DRAW:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 11
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_2

    :cond_0
    if-ne v3, v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    :goto_0
    if-nez v3, :cond_4

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    return v2

    .line 15
    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;

    .line 16
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_6
    return v2

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateLayout()V

    return-void
.end method

.method public final runFadeRunnable(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e8

    :goto_0
    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    move v6, p1

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$3;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V

    int-to-long v3, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    const/4 v9, 0x0

    .line 3
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 4
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 5
    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    new-array v1, v9, [Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final sendFaceDetected(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TOUCH_TO_EXPOSE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 3
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 5
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchRoiFaceCallback;

    .line 6
    invoke-interface {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchRoiFaceCallback;->facesDetected(Z)V

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setTipVisibility(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipVisible:Z

    if-ne v2, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipVisible:Z

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShowTipsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShowTipsRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :goto_1
    return-void
.end method

.method public final shouldShowTip()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 2
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ENABLE_DRAW:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateFlags(Z)V

    goto/16 :goto_6

    .line 3
    :cond_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateFlags(Z)V

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 6
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 8
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 9
    :cond_1
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    .line 11
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->sendFaceDetected(Z)V

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    .line 13
    :goto_0
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v2, :cond_5

    .line 15
    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object v2

    const-string v5, "com.motorola.motcameradesktop"

    .line 16
    invoke-virtual {v2, v5, v4}, Lcom/motorola/camera/shared/PackageUtility;->getLongVersionForPackage(Ljava/lang/String;Z)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/32 v7, 0x18c7c

    cmp-long v2, v5, v7

    if-ltz v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    move v1, v3

    :cond_5
    if-nez v1, :cond_6

    .line 18
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-eqz v1, :cond_17

    .line 19
    :cond_6
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 20
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 21
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 22
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 23
    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_6

    .line 25
    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 26
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 27
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 28
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 29
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_5

    .line 30
    :cond_9
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 31
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 32
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 33
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 34
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 35
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    .line 36
    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 38
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    .line 39
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipVisible:Z

    .line 40
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    .line 41
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->sendFaceDetected(Z)V

    .line 42
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 43
    iput-boolean v4, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto/16 :goto_6

    .line 44
    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 45
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 46
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2

    .line 47
    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 48
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 49
    :cond_d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    .line 50
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 51
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 52
    :cond_e
    :goto_2
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 53
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 54
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    .line 55
    :cond_f
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    goto/16 :goto_6

    .line 57
    :cond_10
    :goto_3
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 58
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 59
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "TIMER"

    .line 60
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4

    :cond_11
    move v4, v3

    .line 61
    :goto_4
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12

    if-eqz v4, :cond_17

    .line 62
    :cond_12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 63
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->sendFaceDetected(Z)V

    .line 65
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    goto :goto_6

    .line 66
    :cond_13
    :goto_5
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 67
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 68
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 69
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisableRoiMode()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_14

    .line 70
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 71
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->sendFaceDetected(Z)V

    .line 73
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    goto :goto_6

    .line 74
    :cond_14
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-nez v0, :cond_15

    const/4 v0, 0x2

    .line 76
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x9

    .line 77
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 78
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-nez v0, :cond_16

    .line 79
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    move v3, v4

    :cond_16
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->FACE_ENABLED:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    .line 80
    invoke-virtual {p1, v3, v0}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    .line 81
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 82
    iget-object v2, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    .line 84
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 85
    iget-object v0, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 86
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ALLOW_UPDATES:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    .line 87
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :try_start_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->shouldShowTip()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    :cond_17
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 90
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unloadTextures()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLoaded:Z

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipVisible:Z

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput v0, v2, Lcom/motorola/camera/PreviewSize;->width:I

    iput v0, v1, Lcom/motorola/camera/PreviewSize;->width:I

    .line 8
    iput v0, v2, Lcom/motorola/camera/PreviewSize;->height:I

    iput v0, v1, Lcom/motorola/camera/PreviewSize;->height:I

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 10
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 11
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateFaceMatrix()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraFacing:I

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 4
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 5
    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    const/4 v7, 0x0

    invoke-static {v3, v6, v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->scale([FFFF)V

    .line 6
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraToDisplayOrientation:I

    int-to-float v6, v6

    invoke-static {v3, v6, v7, v7, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->rotate([FFFFF)V

    .line 7
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_5

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_3

    .line 9
    :cond_5
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraToDisplayOrientation:I

    if-eqz v3, :cond_6

    const/16 v6, 0xb4

    if-ne v3, v6, :cond_4

    .line 10
    :cond_6
    :goto_3
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    iget-boolean v3, v3, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v3, :cond_7

    move v2, v1

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    move v4, v5

    .line 12
    :goto_4
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v3, :cond_14

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v6, :cond_14

    .line 13
    invoke-static {v3}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v3}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_a

    .line 14
    :cond_9
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/PreviewSize;->isSameAspectRatio(Lcom/motorola/camera/PreviewSize;)Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_5
    move v3, v5

    goto :goto_6

    :cond_a
    if-eqz v2, :cond_b

    goto :goto_5

    .line 15
    :cond_b
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v3

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v6

    div-float/2addr v3, v6

    .line 16
    :goto_6
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v6, v8}, Lcom/motorola/camera/PreviewSize;->isSameAspectRatio(Lcom/motorola/camera/PreviewSize;)Z

    move-result v6

    if-eqz v6, :cond_c

    :goto_7
    move v2, v5

    goto :goto_8

    :cond_c
    if-nez v2, :cond_d

    goto :goto_7

    .line 17
    :cond_d
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v2

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v6

    div-float/2addr v2, v6

    .line 18
    :goto_8
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    sget-object v8, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v6, v8}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 19
    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    if-eqz v6, :cond_e

    move v2, v3

    move v3, v5

    .line 20
    :cond_e
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 21
    iget-boolean v6, v6, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v6, :cond_11

    .line 22
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 23
    invoke-static {v2, v3, v1}, Lcom/motorola/camera/Util;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)Lcom/motorola/camera/Util$PreviewFitTransform;

    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    iget-object v6, v2, Lcom/motorola/camera/Util$PreviewFitTransform;->rotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget v8, v6, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    iget v9, v6, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iget v10, v6, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    invoke-static {v3, v8, v9, v10, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->rotate([FFFFF)V

    .line 25
    iget-object v3, v2, Lcom/motorola/camera/Util$PreviewFitTransform;->rotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/high16 v6, 0x42b40000    # 90.0f

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_f

    const/high16 v6, 0x43870000    # 270.0f

    cmpl-float v3, v3, v6

    if-nez v3, :cond_10

    .line 26
    :cond_f
    iget-object v3, v2, Lcom/motorola/camera/Util$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v8, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v9, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v3, v6, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 27
    :cond_10
    iget-object v2, v2, Lcom/motorola/camera/Util$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v3, v6

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v9, v8, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v9, v9

    div-float/2addr v3, v9

    .line 28
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v2, v6

    iget v6, v8, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    move v11, v3

    move v3, v2

    move v2, v11

    .line 29
    :cond_11
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v9, v8, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x44fa0000    # 2000.0f

    div-float/2addr v9, v10

    mul-float/2addr v9, v2

    mul-float/2addr v9, v4

    iget v2, v8, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-static {v6, v9, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->scale([FFFF)V

    .line 30
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mPreviewOffset:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_12

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-eqz v4, :cond_13

    .line 31
    :cond_12
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-static {v4, v3, v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->translate([FFFF)V

    .line 32
    :cond_13
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;

    .line 33
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceMatrix:[F

    .line 34
    monitor-enter v3

    .line 35
    :try_start_0
    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mFaceMatrix:[F

    array-length v6, v4

    invoke-static {v4, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->updateTouchRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v3

    .line 38
    iput-boolean v0, v3, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mMirror:Z

    goto :goto_9

    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v3

    throw p0

    :cond_14
    :goto_a
    return-void
.end method

.method public declared-synchronized updateFlags(Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->sendFaceDetected(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ENABLE_DRAW:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ALLOW_UPDATES:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateLayout()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->getTextPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    const/4 v2, 0x4

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x42a00000    # 80.0f

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    if-lez v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
