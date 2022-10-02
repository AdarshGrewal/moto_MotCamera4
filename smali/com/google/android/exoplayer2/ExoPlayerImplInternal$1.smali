.class public Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Renderer$WakeupListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSleep(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wakeupDeadlineMs"
        }
    .end annotation

    const-wide/16 v0, 0x7d0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->requestForRendererSleep:Z

    :cond_0
    return-void
.end method

.method public onWakeup()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x2

    .line 3
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method
