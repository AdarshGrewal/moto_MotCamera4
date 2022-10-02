.class public final Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;
.super Ljava/lang/Object;
.source "PlayerControlView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;
.implements Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->nextButton:Landroid/view/View;

    if-ne v2, p1, :cond_1

    .line 4
    iget-object p0, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    .line 5
    check-cast p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekToNext()V

    goto/16 :goto_5

    .line 7
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->previousButton:Landroid/view/View;

    if-ne v2, p1, :cond_2

    .line 8
    iget-object p0, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    .line 9
    check-cast p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekToPrevious()V

    goto/16 :goto_5

    .line 11
    :cond_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    if-ne v2, p1, :cond_3

    .line 12
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    .line 13
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 14
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    .line 15
    check-cast p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekForward()V

    goto/16 :goto_5

    .line 17
    :cond_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    if-ne v2, p1, :cond_4

    .line 18
    iget-object p0, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    .line 19
    check-cast p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekBack()V

    goto/16 :goto_5

    .line 21
    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->playButton:Landroid/view/View;

    if-ne v2, p1, :cond_5

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->dispatchPlay(Lcom/google/android/exoplayer2/Player;)V

    goto/16 :goto_5

    .line 23
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->pauseButton:Landroid/view/View;

    const/4 v3, 0x0

    if-ne v2, p1, :cond_6

    .line 24
    iget-object p0, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    check-cast p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    goto :goto_5

    .line 26
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    const/4 v4, 0x1

    if-ne v2, p1, :cond_d

    .line 27
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    .line 28
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 29
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->repeatToggleModes:I

    move v2, v4

    :goto_0
    const/4 v5, 0x2

    if-gt v2, v5, :cond_c

    add-int v6, v0, v2

    .line 30
    rem-int/lit8 v6, v6, 0x3

    if-eqz v6, :cond_a

    if-eq v6, v4, :cond_8

    if-eq v6, v5, :cond_7

    goto :goto_1

    :cond_7
    and-int/lit8 v5, p0, 0x2

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_8
    and-int/lit8 v5, p0, 0x1

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    :goto_1
    move v5, v3

    goto :goto_3

    :cond_a
    :goto_2
    move v5, v4

    :goto_3
    if-eqz v5, :cond_b

    move v0, v6

    goto :goto_4

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_c
    :goto_4
    check-cast p1, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    goto :goto_5

    .line 33
    :cond_d
    iget-object p0, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-ne p0, p1, :cond_e

    .line 34
    iget-object p0, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    .line 35
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result p1

    xor-int/2addr p1, v4

    check-cast p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/Player;->setShuffleModeEnabled(Z)V

    :cond_e
    :goto_5
    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "player",
            "events"
        }
    .end annotation

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updatePlayPauseButton()V

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgress()V

    :cond_1
    const/16 v0, 0x9

    .line 7
    iget-object v1, p2, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 8
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateRepeatModeButton()V

    :cond_2
    const/16 v0, 0xa

    .line 11
    iget-object v1, p2, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 12
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateShuffleButton()V

    :cond_3
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_2

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateNavigation()V

    :cond_4
    new-array p1, p1, [I

    .line 18
    fill-array-data p1, :array_3

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateTimeline()V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x5
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x6
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x9
        0xa
        0xc
        0x0
        0xe
    .end array-data

    :array_3
    .array-data 4
        0xc
        0x0
    .end array-data
.end method

.method public onScrubMove(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeBar",
            "position"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    .line 5
    invoke-static {v0, p0, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onScrubStart(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeBar",
            "position"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->scrubbing:Z

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    .line 6
    invoke-static {v0, p0, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onScrubStop(Lcom/google/android/exoplayer2/ui/TimeBar;JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeBar",
            "position",
            "canceled"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->scrubbing:Z

    if-nez p4, :cond_3

    .line 3
    iget-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz p4, :cond_3

    .line 4
    invoke-interface {p4}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->multiWindowTimeBar:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v2

    cmp-long v4, p2, v2

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v1, -0x1

    if-ne p1, v4, :cond_1

    move-wide p2, v2

    goto :goto_1

    :cond_1
    sub-long/2addr p2, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p4}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result p1

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    check-cast v0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->updateProgress()V

    :cond_3
    return-void
.end method
