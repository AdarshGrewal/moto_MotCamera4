.class public Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$QcMfnrBurstRefCount;
.super Ljava/lang/Object;
.source "McfStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QcMfnrBurstRefCount"
.end annotation


# instance fields
.field public mMaxCount:I

.field public mNumOutstandingCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$QcMfnrBurstRefCount;->mNumOutstandingCount:I

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMfnrBurstNumBuffers()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$QcMfnrBurstRefCount;->mMaxCount:I

    return-void
.end method


# virtual methods
.method public declared-synchronized block()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$QcMfnrBurstRefCount;->mMaxCount:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$QcMfnrBurstRefCount;->mNumOutstandingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized decCount(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$QcMfnrBurstRefCount;->mNumOutstandingCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$QcMfnrBurstRefCount;->mNumOutstandingCount:I

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$QcMfnrBurstRefCount;->mNumOutstandingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
