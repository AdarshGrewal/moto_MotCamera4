.class public final Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler;
.super Landroid/os/Handler;
.source "TimerCountdownManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/countdown/TimerCountdownManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CountdownHandler"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimerCountdownManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimerCountdownManager.kt\ncom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n1849#2,2:76\n1849#2,2:78\n*S KotlinDebug\n*F\n+ 1 TimerCountdownManager.kt\ncom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler\n*L\n58#1:76,2\n69#1:78,2\n*E\n"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    sget p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    .line 3
    div-int/lit16 p0, p0, 0x3e8

    .line 4
    sget-object p1, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/countdown/TimerCountdownCallback;

    .line 6
    sget v1, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    .line 7
    invoke-interface {v0, v1, p0}, Lcom/motorola/camera/countdown/TimerCountdownCallback;->onCountdown(II)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->INSTANCE:Lcom/motorola/camera/countdown/TimerCountdownManager;

    .line 9
    sget p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    add-int/lit16 p0, p0, -0x3e8

    .line 10
    sput p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    const-wide/16 v0, 0x3e8

    const/4 p1, 0x0

    if-lez p0, :cond_2

    .line 11
    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler;

    if-nez p0, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    .line 13
    :cond_2
    sput-boolean p1, Lcom/motorola/camera/countdown/TimerCountdownManager;->isRunning:Z

    .line 14
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 15
    sget-object p1, Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler$$ExternalSyntheticLambda0;

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
