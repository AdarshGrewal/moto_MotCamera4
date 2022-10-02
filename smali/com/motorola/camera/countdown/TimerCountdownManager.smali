.class public final Lcom/motorola/camera/countdown/TimerCountdownManager;
.super Ljava/lang/Object;
.source "TimerCountdownManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimerCountdownManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimerCountdownManager.kt\ncom/motorola/camera/countdown/TimerCountdownManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n1849#2,2:76\n*S KotlinDebug\n*F\n+ 1 TimerCountdownManager.kt\ncom/motorola/camera/countdown/TimerCountdownManager\n*L\n26#1:76,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/countdown/TimerCountdownManager;

.field public static final callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/motorola/camera/countdown/TimerCountdownCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static handler:Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler;

.field public static isRunning:Z

.field public static timer:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/countdown/TimerCountdownManager;

    invoke-direct {v0}, Lcom/motorola/camera/countdown/TimerCountdownManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->INSTANCE:Lcom/motorola/camera/countdown/TimerCountdownManager;

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final registerCallback(Lcom/motorola/camera/countdown/TimerCountdownCallback;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final start(I)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->isRunning:Z

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler;

    invoke-direct {p0}, Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler;-><init>()V

    sput-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler;

    .line 3
    sput p1, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x1

    .line 5
    sput-boolean p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->isRunning:Z

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    :goto_0
    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/countdown/TimerCountdownCallback;

    .line 4
    invoke-interface {v1}, Lcom/motorola/camera/countdown/TimerCountdownCallback;->onCountDownStop()V

    .line 5
    sget-object v2, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_1
    sput-boolean v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->isRunning:Z

    .line 7
    sput v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    const/4 p0, 0x0

    .line 8
    sput-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler;

    return-void
.end method
