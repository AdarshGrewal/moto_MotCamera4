.class public final synthetic Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget p0, Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler;->$r8$clinit:I

    .line 1
    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/countdown/TimerCountdownCallback;

    .line 3
    invoke-interface {v0}, Lcom/motorola/camera/countdown/TimerCountdownCallback;->onCountDownFinish()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->INSTANCE:Lcom/motorola/camera/countdown/TimerCountdownManager;

    const/4 p0, 0x0

    .line 5
    sput-boolean p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->isRunning:Z

    .line 6
    sput p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    const/4 p0, 0x0

    .line 7
    sput-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler;

    return-void
.end method
