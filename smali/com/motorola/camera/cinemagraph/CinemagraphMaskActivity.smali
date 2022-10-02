.class public Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;
.super Landroid/app/Activity;
.source "CinemagraphMaskActivity.java"

# interfaces
.implements Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;
.implements Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;
.implements Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;
.implements Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;
.implements Lcom/motorola/camera/ActivityStarter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback;,
        Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TimelineTooltipWindow;,
        Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$ClearAllTooltipWindow;,
        Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;,
        Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;,
        Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;,
        Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadPreviewFrameRunnable;,
        Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;,
        Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBitmapPreview:Landroid/graphics/Bitmap;

.field public final mCancellableTaskToken:Ljava/lang/Object;

.field public mCinemagraphHandler:Landroid/os/Handler;

.field public mCinemagraphThread:Landroid/os/HandlerThread;

.field public mClearButton:Landroid/widget/TextView;

.field public mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

.field public mDrawButton:Landroid/widget/ImageButton;

.field public mDrawMaskCallback:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback;

.field public volatile mEditDone:Z

.field public mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

.field public mEraseButton:Landroid/widget/ImageButton;

.field public mExitButton:Landroid/widget/ImageButton;

.field public mFrameNum:I

.field public mHeight:I

.field public volatile mIsActivityRunning:Z

.field public mIsBounce:Z

.field public volatile mIsDiscarded:Z

.field public mIsDrawErasingMode:Z

.field public mIsVideo:Z

.field public final mLockBitmapPreview:Ljava/lang/Object;

.field public mLoopButton:Landroid/widget/LinearLayout;

.field public mLoopIcon:Landroid/widget/ImageView;

.field public mLoopText:Landroid/widget/TextView;

.field public mMainLayout:Landroid/view/View;

.field public mMultiWindowView:Landroid/view/View;

.field public mPreviewButton:Landroid/widget/TextView;

.field public mPreviewInterval:I

.field public mRejectButton:Landroid/widget/ImageButton;

.field public mSaveButton:Landroid/widget/TextView;

.field public mSaveFormatBar:Landroid/widget/LinearLayout;

.field public volatile mSaving:Z

.field public mSelectedBitmap:Landroid/graphics/Bitmap;

.field public mSpinner:Landroid/widget/ProgressBar;

.field public mSpinnerText:Landroid/widget/TextView;

.field public final mTooltipsList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;",
            ">;"
        }
    .end annotation
.end field

.field public mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

.field public final mUiHandler:Landroid/os/Handler;

.field public mVideoBar:Landroid/widget/LinearLayout;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mUiHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsVideo:Z

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsBounce:Z

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEditDone:Z

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaving:Z

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsDiscarded:Z

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsActivityRunning:Z

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLockBitmapPreview:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCancellableTaskToken:Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static synthetic access$301(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final cleanup()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLockBitmapPreview:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mBitmapPreview:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    iput-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mBitmapPreview:Landroid/graphics/Bitmap;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSelectedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    iput-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSelectedBitmap:Landroid/graphics/Bitmap;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->release()V

    .line 14
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsDiscarded:Z

    if-nez v1, :cond_5

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {v1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalizeEngine()V

    .line 16
    :cond_5
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->unregisterClient(Ljava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawMaskCallback:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback;

    if-eqz v1, :cond_6

    .line 18
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mUiHandler:Landroid/os/Handler;

    .line 19
    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback;->mEmptyMaskRunnable:Ljava/lang/Runnable;

    .line 20
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hideSystemUi()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3
    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public final hideTooltips()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->isFirstTime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final isFirstTime()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_CLEAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 4
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_TIMELINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 7
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsDrawErasingMode:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->showUi()V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11008d

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1104fd

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110080

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 10
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 11
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    .line 13
    invoke-virtual {v1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method public onChange()V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->FEATURES:Ljava/util/EnumSet;

    const-string v0, "BatterySaverHandler"

    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isHandlerLimited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 3
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v2, 0x7f11008a

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalizeEngine()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getInstance()Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getCount()I

    move-result p1

    if-gtz p1, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->registerClient(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v0, 0x9

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v0, 0x400

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0x200000

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/16 v0, 0x80

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->setupWindow(Landroid/view/Window;)V

    .line 12
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "brightness"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->hideSystemUi()V

    .line 15
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getWaterfallDisplayDimensionX()I

    move-result p1

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "com.motorola.cinemagraph.intent.width"

    .line 18
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mWidth:I

    const-string v3, "com.motorola.cinemagraph.intent.height"

    .line 19
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mHeight:I

    const-string v3, "com.motorola.cinemagraph.intent.frameCount"

    .line 20
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mFrameNum:I

    const-string v3, "com.motorola.cinemagraph.intent.interval"

    .line 21
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewInterval:I

    :cond_1
    const v0, 0x7f0d002e

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0a00de

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    .line 24
    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    iget v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mWidth:I

    iget v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mHeight:I

    .line 26
    iput v3, v0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWidth:I

    .line 27
    iput v4, v0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mHeight:I

    mul-int/lit8 v5, v4, 0x5

    .line 28
    div-int/lit8 v5, v5, 0x64

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    iput v5, v0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mOffsetHeight:I

    mul-int/lit8 v6, v3, 0x5

    .line 29
    div-int/lit8 v6, v6, 0x64

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v3, v6

    iput v6, v0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mOffsetWidth:I

    sub-int/2addr v3, v6

    .line 30
    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMarginX:I

    sub-int/2addr v4, v5

    .line 31
    div-int/lit8 v4, v4, 0x2

    iput v4, v0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMarginY:I

    .line 32
    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->getOffsetWidth()I

    move-result v0

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    .line 33
    invoke-virtual {v3}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->getOffsetheight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 34
    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mBitmapPreview:Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 36
    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsDrawErasingMode:Z

    .line 37
    iput-boolean v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEditDone:Z

    const v0, 0x7f0a00d4

    .line 38
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mMainLayout:Landroid/view/View;

    const v0, 0x7f0a00d5

    .line 39
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mMultiWindowView:Landroid/view/View;

    const v0, 0x7f0a0363

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinner:Landroid/widget/ProgressBar;

    const v0, 0x7f0a03bf

    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinnerText:Landroid/widget/TextView;

    const v0, 0x7f0a00d6

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    .line 43
    new-instance v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v3, v4, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 45
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 46
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/MarginUtil;->setMarginEnd(ILandroid/view/View;)V

    const v0, 0x7f0a00cf

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    .line 48
    new-instance v6, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00ce

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 51
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/MarginUtil;->setMarginEnd(ILandroid/view/View;)V

    const v0, 0x7f0a00d1

    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a00d2

    .line 54
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopText:Landroid/widget/TextView;

    const v0, 0x7f0a00d3

    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopButton:Landroid/widget/LinearLayout;

    .line 56
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->updateLoopButton()V

    .line 58
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopIcon:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/MarginUtil;->setMarginStart(ILandroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopText:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/MarginUtil;->setMarginStart(ILandroid/view/View;)V

    const v0, 0x7f0a00d8

    .line 60
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveButton:Landroid/widget/TextView;

    .line 61
    new-instance v6, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 63
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 64
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveButton:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/MarginUtil;->setMarginEnd(ILandroid/view/View;)V

    const v0, 0x7f0a00d7

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mRejectButton:Landroid/widget/ImageButton;

    .line 66
    new-instance v3, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mRejectButton:Landroid/widget/ImageButton;

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/MarginUtil;->setMarginStart(ILandroid/view/View;)V

    const v0, 0x7f0a00cd

    .line 68
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    .line 69
    new-instance v3, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/MarginUtil;->setMarginStart(ILandroid/view/View;)V

    const v0, 0x7f0a00d0

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mExitButton:Landroid/widget/ImageButton;

    .line 72
    new-instance v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mExitButton:Landroid/widget/ImageButton;

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/MarginUtil;->setMarginStart(ILandroid/view/View;)V

    const v0, 0x7f0a00e1

    .line 74
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mVideoBar:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00e0

    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    .line 76
    invoke-virtual {v0, p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setOnFrameUpdateCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;)V

    .line 77
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewInterval:I

    invoke-virtual {v0, v3}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setFrameInterval(I)V

    .line 78
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mFrameNum:I

    invoke-virtual {v0, v3}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setFrameCount(I)V

    .line 79
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setOnTimelineEditCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;)V

    .line 80
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setOnTrimCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;)V

    .line 81
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/MarginUtil;->setMarginStart(ILandroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/MarginUtil;->setMarginEnd(ILandroid/view/View;)V

    const p1, 0x7f0a00d9

    .line 83
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveFormatBar:Landroid/widget/LinearLayout;

    const p1, 0x7f0a00dd

    .line 84
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    .line 85
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 86
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 87
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 88
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsVideo:Z

    const v0, 0x7f0a00dc

    .line 90
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 91
    :goto_0
    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 92
    invoke-virtual {p0, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->setButtonsEnabled(Z)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->setMaskButtonsEnabled(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->isFirstTime()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 95
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 96
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_TIMELINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 97
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 98
    check-cast p1, Ljava/lang/Boolean;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 100
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TimelineTooltipWindow;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TimelineTooltipWindow;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 101
    :cond_4
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_CLEAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 102
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 103
    check-cast p1, Ljava/lang/Boolean;

    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 105
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$ClearAllTooltipWindow;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$ClearAllTooltipWindow;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 106
    :cond_5
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 107
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 108
    check-cast p1, Ljava/lang/Boolean;

    .line 109
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 110
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 111
    :cond_6
    :goto_1
    new-instance p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;)V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawMaskCallback:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback;

    .line 112
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->setDrawMaskCallback(Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView$DrawMaskCallback;)V

    .line 113
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "cinemagraphPreviewThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphThread:Landroid/os/HandlerThread;

    .line 114
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_7
    :goto_2
    const-string p1, "CinemagraphMaskActivity"

    const-string v0, "Cinemagraph Engine not initialized, closing mask activity"

    .line 117
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 119
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 120
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->cleanup()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onFrameUpdate(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCancellableTaskToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;

    invoke-direct {v2, p0, p1}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCancellableTaskToken:Ljava/lang/Object;

    invoke-virtual {p2, v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadPreviewFrameRunnable;

    invoke-direct {v2, p0, p1}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadPreviewFrameRunnable;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCancellableTaskToken:Ljava/lang/Object;

    invoke-virtual {p2, v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :goto_0
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->updateUiForMultiWindowMode(Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ActivityUtilKt;->showOnLockScreen(Landroid/app/Activity;Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 4
    iget-boolean v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEditDone:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->startPreview()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->start()V

    .line 6
    invoke-static {p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->registerListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->updateUiForMultiWindowMode(Z)V

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsActivityRunning:Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->stopPreview()V

    .line 4
    invoke-static {p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->unregisterListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    .line 5
    invoke-static {}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->stop()V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->hideTooltips()V

    .line 7
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsActivityRunning:Z

    .line 9
    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEditDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaving:Z

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->cleanup()V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onTimelineEdited(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->stopPreview()V

    .line 3
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;II)V

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCancellableTaskToken:Ljava/lang/Object;

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public onTrim(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mIsMaskDrawingEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->setMaskDrawingEnabled(Z)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->setMaskDrawingEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsActivityRunning:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->hideSystemUi()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->showTooltips()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final selectDrawButton()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->setPaintColor(Z)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void
.end method

.method public final setButtonsEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public final setMaskButtonsEnabled(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;

    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    .line 2
    iget-object v2, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    .line 4
    iget-object v3, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->mTargetViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 6
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz v1, :cond_3

    .line 7
    iget-object v2, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->mTargetViews:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_4
    return-void
.end method

.method public final showTooltips()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->isFirstTime()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->showToolTip()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showUi()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsDrawErasingMode:Z

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mVideoBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mRejectButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveFormatBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->setMaskDrawingEnabled(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->showTooltips()V

    return-void
.end method

.method public startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/motorola/camera/utility/ActivityUtilKt;->launchGallery(Landroid/app/Activity;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void
.end method

.method public final startPreview()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCancellableTaskToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinnerText:Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinnerText:Landroid/widget/TextView;

    const v2, 0x7f110091

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinnerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->hasThumbnails()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;)V

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCancellableTaskToken:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 10
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->play()V

    :goto_0
    return-void
.end method

.method public final stopPreview()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->stop()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCancellableTaskToken:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateLoopButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 2
    iget-boolean v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsBounce:Z

    if-eqz v1, :cond_0

    const v1, 0x7f08017b

    goto :goto_0

    :cond_0
    const v1, 0x7f08017c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopText:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsBounce:Z

    if-eqz p0, :cond_1

    const p0, 0x7f11008b

    goto :goto_1

    :cond_1
    const p0, 0x7f110093

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method

.method public final updateUiForMultiWindowMode(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mMainLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mMultiWindowView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->hideTooltips()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mMainLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mMultiWindowView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f0802e8

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->startPreview()V

    :goto_0
    return-void
.end method
