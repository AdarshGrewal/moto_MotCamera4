.class public Lcom/motorola/camera/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/Notifier$Listener;,
        Lcom/motorola/camera/Notifier$TYPE;
    }
.end annotation


# static fields
.field public static sNotifier:Lcom/motorola/camera/Notifier;


# instance fields
.field public mHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/Notifier;

    invoke-direct {v0}, Lcom/motorola/camera/Notifier;-><init>()V

    sput-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/Notifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/motorola/camera/Notifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->AI_SCENE:Lcom/motorola/camera/Notifier$TYPE;

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    iget-object p0, p1, Lcom/motorola/camera/Notifier$TYPE;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Notifier;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->AI_SCENE:Lcom/motorola/camera/Notifier$TYPE;

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    iget-object p0, p1, Lcom/motorola/camera/Notifier$TYPE;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
