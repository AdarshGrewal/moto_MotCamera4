.class public Lcom/motorola/camera/fsm/camera/FsmContext;
.super Ljava/lang/Object;
.source "FsmContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;,
        Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;
    }
.end annotation


# instance fields
.field public mBundles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/fsm/camera/iCameraFsm<",
            "Lcom/motorola/camera/fsm/camera/Trigger;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mIdentifier:Ljava/lang/Object;

.field public mLastError:Ljava/lang/Object;

.field public mModeSetupMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/motorola/camera/fsm/camera/modes/AbstractMode;",
            ">;"
        }
    .end annotation
.end field

.field public mSubStateMachineMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;",
            "Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field public mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

.field public mVideoSessionData:Landroidx/constraintlayout/core/Cache;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/iCameraFsm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/iCameraFsm<",
            "Lcom/motorola/camera/fsm/camera/Trigger;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/SurfaceManager;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/SurfaceManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 4
    invoke-static {}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->values()[Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 6
    invoke-static {}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->values()[Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    .line 8
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    .line 9
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "FsmContext"

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 12
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mIdentifier:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clearBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method public clearModesBuilders()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->clearBuilders()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
    .locals 1

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x25

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->initModeSetup(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getSubStateMachines()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final initModeSetup(I)V
    .locals 5

    const/16 v0, 0x22

    const/16 v1, 0xd

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_a

    if-eq p1, v1, :cond_a

    if-ne p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/ProPhotoMode;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/modes/ProPhotoMode;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    const/16 v0, 0x13

    if-ne p1, v0, :cond_5

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/CinemagraphMode;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/modes/CinemagraphMode;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    const/16 v0, 0x25

    if-ne p1, v0, :cond_6

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/BeautyVideoMode;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/modes/BeautyVideoMode;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    const/16 v0, 0x29

    const/16 v1, 0x26

    if-eq p1, v1, :cond_9

    if-ne p1, v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_8

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/CUDVideoMode;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/modes/CUDVideoMode;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 8
    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/4 v0, 0x6

    .line 10
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 11
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/16 v0, 0x10

    .line 13
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 14
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/16 v0, 0x12

    .line 16
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 17
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/16 v0, 0x11

    .line 19
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 20
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/4 v0, 0x7

    .line 22
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 23
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/16 v0, 0xc

    .line 25
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 26
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/16 v0, 0x27

    .line 28
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 29
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/16 v0, 0x28

    .line 31
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 32
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/16 v0, 0x18

    .line 34
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 35
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/16 v0, 0x1f

    .line 37
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 38
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/16 v0, 0x1d

    .line 40
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 41
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/16 v0, 0x20

    .line 43
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 44
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/16 v0, 0x21

    .line 46
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 47
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/16 v0, 0x23

    .line 49
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 50
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    const/16 p1, 0x24

    .line 52
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 53
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 54
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/fsm/camera/modes/DualCaptureMode;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/modes/DualCaptureMode;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    .line 56
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 57
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 58
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;-><init>()V

    invoke-virtual {p1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    .line 60
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 61
    invoke-virtual {p1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    .line 63
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 64
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    .line 66
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    .line 67
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public isCliDisplay()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "IS_CLI_DISPLAY"

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "FsmContext{}"

    return-object p0
.end method
