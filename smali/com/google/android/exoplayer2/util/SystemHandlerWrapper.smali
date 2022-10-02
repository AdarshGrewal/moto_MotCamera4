.class public final Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;
.super Ljava/lang/Object;
.source "SystemHandlerWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/HandlerWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;
    }
.end annotation


# static fields
.field public static final messagePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final handler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->messagePool:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static obtainSystemMessage()Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->messagePool:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;-><init>(Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$1;)V

    goto :goto_0

    .line 4
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    :goto_0
    monitor-exit v0

    return-object v1

    .line 5
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public hasMessages(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->obtainSystemMessage()Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2
    iput-object p0, v0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    return-object v0
.end method

.method public obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "what",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->obtainSystemMessage()Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 7
    iput-object p0, v0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    return-object v0
.end method

.method public obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "what",
            "arg1",
            "arg2",
            "obj"
        }
    .end annotation

    .line 8
    invoke-static {}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->obtainSystemMessage()Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    return-object v0
.end method

.method public obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "what",
            "obj"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->obtainSystemMessage()Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 4
    iput-object p0, v0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    return-object v0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public removeMessages(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public sendEmptyMessage(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public sendEmptyMessageAtTime(IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "what",
            "uptimeMs"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p0

    return p0
.end method

.method public sendMessageAtFrontOfQueue(Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->recycle()V

    return p0
.end method
