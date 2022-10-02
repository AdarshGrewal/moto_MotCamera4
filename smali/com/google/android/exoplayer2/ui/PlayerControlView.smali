.class public Lcom/google/android/exoplayer2/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerControlView$Api21;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$ProgressUpdateListener;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public adGroupTimesMs:[J

.field public final buttonAlphaDisabled:F

.field public final buttonAlphaEnabled:F

.field public final componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

.field public controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

.field public currentBufferedPosition:J

.field public currentPosition:J

.field public currentWindowOffset:J

.field public final durationView:Landroid/widget/TextView;

.field public extraAdGroupTimesMs:[J

.field public extraPlayedAdGroups:[Z

.field public final fastForwardButton:Landroid/view/View;

.field public final formatBuilder:Ljava/lang/StringBuilder;

.field public final formatter:Ljava/util/Formatter;

.field public final hideAction:Ljava/lang/Runnable;

.field public hideAtMs:J

.field public isAttachedToWindow:Z

.field public multiWindowTimeBar:Z

.field public final nextButton:Landroid/view/View;

.field public final pauseButton:Landroid/view/View;

.field public final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field public final playButton:Landroid/view/View;

.field public playedAdGroups:[Z

.field public player:Lcom/google/android/exoplayer2/Player;

.field public final positionView:Landroid/widget/TextView;

.field public final previousButton:Landroid/view/View;

.field public progressUpdateListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ProgressUpdateListener;

.field public final repeatAllButtonContentDescription:Ljava/lang/String;

.field public final repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final repeatOffButtonContentDescription:Ljava/lang/String;

.field public final repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final repeatOneButtonContentDescription:Ljava/lang/String;

.field public final repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final repeatToggleButton:Landroid/widget/ImageView;

.field public repeatToggleModes:I

.field public final rewindButton:Landroid/view/View;

.field public scrubbing:Z

.field public showFastForwardButton:Z

.field public showMultiWindowTimeBar:Z

.field public showNextButton:Z

.field public showPreviousButton:Z

.field public showRewindButton:Z

.field public showShuffleButton:Z

.field public showTimeoutMs:I

.field public final shuffleButton:Landroid/widget/ImageView;

.field public final shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final shuffleOffContentDescription:Ljava/lang/String;

.field public final shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final shuffleOnContentDescription:Ljava/lang/String;

.field public final timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

.field public timeBarMinUpdateIntervalMs:I

.field public final updateProgressAction:Ljava/lang/Runnable;

.field public final visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field public final vrButton:Landroid/view/View;

.field public final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "goog.exo.ui"

    .line 1
    sget-object v1, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModules:Ljava/util/HashSet;

    .line 2
    const-class v1, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v2, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModules:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "playbackAttrs"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x1388

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    const/16 v1, 0xc8

    .line 4
    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showRewindButton:Z

    .line 7
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showFastForwardButton:Z

    .line 8
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showPreviousButton:Z

    .line 9
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showNextButton:Z

    .line 10
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    const v1, 0x7f0d005b

    if-eqz p4, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView:[I

    .line 12
    invoke-virtual {v2, p4, v3, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    const/16 v2, 0x13

    .line 13
    :try_start_0
    iget v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    const/4 v2, 0x5

    .line 14
    invoke-virtual {p3, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 15
    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    const/16 v3, 0x8

    .line 16
    invoke-virtual {p3, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 17
    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    const/16 v2, 0x11

    .line 18
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showRewindButton:Z

    .line 19
    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showRewindButton:Z

    const/16 v2, 0xe

    .line 20
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showFastForwardButton:Z

    .line 21
    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showFastForwardButton:Z

    const/16 v2, 0x10

    .line 22
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showPreviousButton:Z

    .line 23
    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showPreviousButton:Z

    const/16 v2, 0xf

    .line 24
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showNextButton:Z

    .line 25
    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showNextButton:Z

    const/16 v2, 0x12

    .line 26
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    .line 27
    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    const/16 v2, 0x14

    .line 28
    iget v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 29
    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 30
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setTimeBarMinUpdateInterval(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    throw p0

    .line 33
    :cond_0
    :goto_0
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    new-instance p3, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 35
    new-instance p3, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 37
    new-instance v2, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    new-array p3, v0, [J

    .line 38
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    new-array p3, v0, [Z

    .line 39
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    new-array p3, v0, [J

    .line 40
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    new-array p3, v0, [Z

    .line 41
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    .line 42
    new-instance p3, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-direct {p3, p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$1;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    .line 43
    new-instance v2, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    .line 44
    new-instance v2, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 45
    new-instance v2, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v1, 0x40000

    .line 47
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    const v1, 0x7f0a0189

    .line 48
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/TimeBar;

    const v3, 0x7f0a018a

    .line 49
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 50
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 51
    new-instance v2, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-direct {v2, p1, p2, v0, p4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 55
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p4

    .line 56
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p2, v2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 58
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    goto :goto_1

    .line 59
    :cond_2
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    :goto_1
    const p2, 0x7f0a0174

    .line 60
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->durationView:Landroid/widget/TextView;

    const p2, 0x7f0a0187

    .line 61
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    .line 62
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz p2, :cond_3

    .line 63
    invoke-interface {p2, p3}, Lcom/google/android/exoplayer2/ui/TimeBar;->addListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V

    :cond_3
    const p2, 0x7f0a0184

    .line 64
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const p2, 0x7f0a0183

    .line 66
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 67
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const p2, 0x7f0a0188

    .line 68
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->previousButton:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const p2, 0x7f0a017f

    .line 70
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->nextButton:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 71
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const p2, 0x7f0a018c

    .line 72
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 73
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const p2, 0x7f0a0178

    .line 74
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 75
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const p2, 0x7f0a018b

    .line 76
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    .line 77
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const p2, 0x7f0a0190

    .line 78
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-eqz p2, :cond_b

    .line 79
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    const p2, 0x7f0a0198

    .line 80
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->vrButton:Landroid/view/View;

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowVrButton(Z)V

    .line 82
    invoke-virtual {p0, v0, v0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0015

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->buttonAlphaEnabled:F

    const p2, 0x7f0b0014

    .line 85
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->buttonAlphaDisabled:F

    const p2, 0x7f0800fe

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f0800ff

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f0800fd

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f080102

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f080101

    .line 90
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f11015c

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    const p2, 0x7f11015d

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    const p2, 0x7f11015b

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    const p2, 0x7f110163

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    const p2, 0x7f110162

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    const/16 v3, 0x58

    const/16 v4, 0x57

    const/16 v5, 0x7f

    const/16 v6, 0x7e

    const/16 v7, 0x4f

    const/16 v8, 0x55

    const/16 v9, 0x59

    const/16 v10, 0x5a

    const/4 v11, 0x1

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v12, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v12, v11

    :goto_1
    if-nez v12, :cond_2

    goto/16 :goto_4

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_c

    const/4 v12, 0x4

    if-ne v0, v10, :cond_3

    .line 4
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p1

    if-eq p1, v12, :cond_c

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    check-cast p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekForward()V

    goto/16 :goto_3

    :cond_3
    if-ne v0, v9, :cond_4

    .line 7
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    check-cast p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekBack()V

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_c

    if-eq v0, v7, :cond_9

    if-eq v0, v8, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    check-cast p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    goto :goto_3

    .line 12
    :cond_6
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->dispatchPlay(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_3

    .line 13
    :cond_7
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    check-cast p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekToPrevious()V

    goto :goto_3

    .line 15
    :cond_8
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    check-cast p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekToNext()V

    goto :goto_3

    .line 17
    :cond_9
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p1

    if-eq p1, v11, :cond_b

    if-eq p1, v12, :cond_b

    .line 18
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    .line 19
    :cond_a
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    check-cast p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    goto :goto_3

    .line 21
    :cond_b
    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->dispatchPlay(Lcom/google/android/exoplayer2/Player;)V

    :cond_c
    :goto_3
    return v11

    :cond_d
    :goto_4
    return v2
.end method

.method public final dispatchPlay(Lcom/google/android/exoplayer2/Player;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    check-cast v0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    check-cast v4, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p1, v0, v2, v3}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 7
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    check-cast p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAfterTimeout()V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/Player;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method public getRepeatToggleModes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    return p0
.end method

.method public getShowShuffleButton()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    return p0
.end method

.method public getShowTimeoutMs()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    return p0
.end method

.method public getShowVrButton()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->vrButton:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hide()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;->onVisibilityChange(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    :cond_1
    return-void
.end method

.method public final hideAfterTimeout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    :cond_1
    :goto_0
    return-void
.end method

.method public isVisible()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    .line 3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAtMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAfterTimeout()V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateAll()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final requestPlayPauseAccessibilityFocus()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shouldShowPauseButton()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final requestPlayPauseFocus()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shouldShowPauseButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlDispatcher"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    :cond_0
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 3
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 6
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz p1, :cond_5

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateAll()V

    return-void
.end method

.method public setProgressUpdateListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$ProgressUpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->progressUpdateListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ProgressUpdateListener;

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatToggleModes"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x0

    check-cast p1, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    check-cast p1, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    check-cast p1, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateRepeatModeButton()V

    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showFastForwardButton"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showFastForwardButton:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showMultiWindowTimeBar"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateTimeline()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showNextButton"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showNextButton:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showPreviousButton"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showPreviousButton:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showRewindButton"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showRewindButton:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showShuffleButton"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateShuffleButton()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showTimeoutMs"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showTimeoutMs:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hideAfterTimeout()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showVrButton"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->vrButton:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minUpdateIntervalMs"
        }
    .end annotation

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onClickListener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->vrButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getShowVrButton()Z

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->vrButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final shouldShowPauseButton()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 4
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final updateAll()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updatePlayPauseButton()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateRepeatModeButton()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateShuffleButton()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateTimeline()V

    return-void
.end method

.method public final updateButton(ZZLandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "visible",
            "enabled",
            "view"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_1

    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->buttonAlphaEnabled:F

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->buttonAlphaDisabled:F

    :goto_0
    invoke-virtual {p3, p0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/16 p0, 0x8

    .line 3
    :goto_1
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateNavigation()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    .line 3
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    const/4 v3, 0x6

    .line 4
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v3

    const/16 v4, 0xa

    .line 5
    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    const/16 v6, 0xb

    .line 6
    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    :cond_2
    const/16 v5, 0x8

    .line 8
    invoke-interface {v0, v5}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    move v7, v2

    move v2, v0

    move v0, v1

    move v1, v3

    move v3, v7

    goto :goto_1

    :cond_3
    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    .line 9
    :goto_1
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showPreviousButton:Z

    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->previousButton:Landroid/view/View;

    invoke-virtual {p0, v5, v1, v6}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 10
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showRewindButton:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    invoke-virtual {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 11
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showFastForwardButton:Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    invoke-virtual {p0, v1, v0, v4}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 12
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showNextButton:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->nextButton:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 13
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz p0, :cond_4

    .line 14
    invoke-interface {p0, v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->setEnabled(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final updatePlayPauseButton()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shouldShowPauseButton()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    const/16 v2, 0x8

    const/16 v3, 0x15

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    or-int/2addr v1, v5

    .line 5
    sget v6, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v6, v3, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 6
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    invoke-static {v6}, Lcom/google/android/exoplayer2/ui/PlayerControlView$Api21;->isAccessibilityFocused(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    or-int/2addr v6, v5

    .line 7
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    if-eqz v0, :cond_4

    move v8, v2

    goto :goto_2

    :cond_4
    move v8, v5

    :goto_2
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    move v1, v5

    move v6, v1

    .line 8
    :goto_3
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v7, :cond_a

    if-nez v0, :cond_6

    .line 9
    invoke-virtual {v7}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v4

    goto :goto_4

    :cond_6
    move v7, v5

    :goto_4
    or-int/2addr v1, v7

    .line 10
    sget v7, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v7, v3, :cond_7

    move v4, v1

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    .line 11
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView$Api21;->isAccessibilityFocused(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    move v4, v5

    :goto_5
    or-int/2addr v6, v4

    .line 12
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v0, :cond_9

    move v2, v5

    :cond_9
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    if-eqz v1, :cond_b

    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->requestPlayPauseFocus()V

    :cond_b
    if-eqz v6, :cond_c

    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->requestPlayPauseAccessibilityFocus()V

    :cond_c
    :goto_6
    return-void
.end method

.method public final updateProgress()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentWindowOffset:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 4
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentWindowOffset:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getContentBufferedPosition()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 5
    :goto_0
    iget-wide v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentPosition:J

    cmp-long v5, v1, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    move v5, v6

    .line 6
    :goto_1
    iget-wide v8, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentBufferedPosition:J

    cmp-long v8, v3, v8

    if-eqz v8, :cond_3

    move v6, v7

    .line 7
    :cond_3
    iput-wide v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentPosition:J

    .line 8
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentBufferedPosition:J

    .line 9
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->scrubbing:Z

    if-nez v9, :cond_4

    if-eqz v5, :cond_4

    .line 10
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v9, v10, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_4
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v8, :cond_5

    .line 12
    invoke-interface {v8, v1, v2}, Lcom/google/android/exoplayer2/ui/TimeBar;->setPosition(J)V

    .line 13
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v8, v3, v4}, Lcom/google/android/exoplayer2/ui/TimeBar;->setBufferedPosition(J)V

    .line 14
    :cond_5
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->progressUpdateListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$ProgressUpdateListener;

    if-eqz v8, :cond_7

    if-nez v5, :cond_6

    if-eqz v6, :cond_7

    .line 15
    :cond_6
    invoke-interface {v8, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ui/PlayerControlView$ProgressUpdateListener;->onProgressUpdate(JJ)V

    .line 16
    :cond_7
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-nez v0, :cond_8

    move v3, v7

    goto :goto_2

    .line 17
    :cond_8
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v3

    :goto_2
    const-wide/16 v4, 0x3e8

    if-eqz v0, :cond_b

    .line 18
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 19
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->getPreferredUpdateDelay()J

    move-result-wide v6

    goto :goto_3

    :cond_9
    move-wide v6, v4

    .line 20
    :goto_3
    rem-long/2addr v1, v4

    sub-long v1, v4, v1

    .line 21
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 22
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_a

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v4, v1

    :cond_a
    move-wide v6, v4

    .line 23
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    int-to-long v8, v0

    const-wide/16 v10, 0x3e8

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_b
    const/4 v0, 0x4

    if-eq v3, v0, :cond_c

    if-eq v3, v7, :cond_c

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_4
    return-void
.end method

.method public final updateRepeatModeButton()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, v2, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0, v3, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0, v3, v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 9
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final updateShuffleButton()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showShuffleButton:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p0, v3, v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0, v2, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 10
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 13
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_4
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 16
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final updateTimeline()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    .line 3
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_1

    :goto_0
    const/4 v2, 0x0

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    .line 6
    invoke-virtual {v2, v9, v7}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v10

    iget-wide v10, v10, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v10, v10, v3

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    move v2, v6

    :goto_2
    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 7
    :goto_3
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->multiWindowTimeBar:Z

    const-wide/16 v7, 0x0

    .line 8
    iput-wide v7, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentWindowOffset:J

    .line 9
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    .line 11
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v1

    .line 12
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->multiWindowTimeBar:Z

    if-eqz v9, :cond_5

    const/4 v10, 0x0

    goto :goto_4

    :cond_5
    move v10, v1

    :goto_4
    if-eqz v9, :cond_6

    .line 13
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v9

    sub-int/2addr v9, v6

    goto :goto_5

    :cond_6
    move v9, v1

    :goto_5
    move-wide v11, v7

    const/4 v13, 0x0

    :goto_6
    if-gt v10, v9, :cond_10

    if-ne v10, v1, :cond_7

    .line 14
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->currentWindowOffset:J

    .line 15
    :cond_7
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v2, v10, v14}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 16
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v7, v14, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v7, v7, v3

    if-nez v7, :cond_8

    .line 17
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->multiWindowTimeBar:Z

    xor-int/2addr v1, v6

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    goto/16 :goto_c

    .line 18
    :cond_8
    iget v7, v14, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    :goto_7
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v14, v8, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-gt v7, v14, :cond_f

    .line 19
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v7, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 20
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 21
    iget-object v8, v8, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v14, v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    .line 22
    iget v8, v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    :goto_8
    if-ge v14, v8, :cond_e

    .line 23
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v15, v14}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v15

    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v18, v15, v18

    if-nez v18, :cond_a

    .line 24
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v5, v15, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v15, v5, v3

    if-nez v15, :cond_9

    const-wide/16 v5, 0x0

    goto :goto_a

    :cond_9
    move-wide v15, v5

    .line 25
    :cond_a
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 26
    iget-wide v5, v5, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v15, v5

    const-wide/16 v5, 0x0

    cmp-long v17, v15, v5

    if-ltz v17, :cond_d

    .line 27
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    array-length v4, v3

    if-ne v13, v4, :cond_c

    .line 28
    array-length v4, v3

    if-nez v4, :cond_b

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    .line 29
    :goto_9
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    .line 30
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    .line 31
    :cond_c
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    add-long/2addr v15, v11

    invoke-static/range {v15 .. v16}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v15

    aput-wide v15, v3, v13

    .line 32
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 33
    iget-object v4, v4, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v4, v14}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->hasUnplayedAds()Z

    move-result v4

    const/4 v15, 0x1

    xor-int/2addr v4, v15

    .line 34
    aput-boolean v4, v3, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v15, 0x1

    :goto_b
    add-int/lit8 v14, v14, 0x1

    move v6, v15

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_8

    :cond_e
    move v15, v6

    const-wide/16 v5, 0x0

    add-int/lit8 v7, v7, 0x1

    move v6, v15

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_7

    :cond_f
    move v15, v6

    const-wide/16 v5, 0x0

    .line 35
    iget-wide v3, v8, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    add-long/2addr v11, v3

    add-int/lit8 v10, v10, 0x1

    move-wide v7, v5

    move v6, v15

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_6

    :cond_10
    :goto_c
    move-wide v7, v11

    goto :goto_d

    :cond_11
    move-wide v5, v7

    const/4 v13, 0x0

    .line 36
    :goto_d
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v1

    .line 37
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->durationView:Landroid/widget/TextView;

    if-eqz v3, :cond_12

    .line 38
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_12
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v3, :cond_14

    .line 40
    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/ui/TimeBar;->setDuration(J)V

    .line 41
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    array-length v1, v1

    add-int v2, v13, v1

    .line 42
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    array-length v4, v3

    if-le v2, v4, :cond_13

    .line 43
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    .line 44
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    .line 45
    :cond_13
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v3, v5, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->adGroupTimesMs:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/ui/TimeBar;->setAdGroupTimesMs([J[ZI)V

    .line 48
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgress()V

    return-void
.end method
