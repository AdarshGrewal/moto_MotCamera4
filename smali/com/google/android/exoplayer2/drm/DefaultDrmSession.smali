.class public Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException;
    }
.end annotation


# instance fields
.field public final callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

.field public currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

.field public currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

.field public final eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset<",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field public final isPlaceholderSession:Z

.field public final keyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

.field public final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field public mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

.field public final mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

.field public final mode:I

.field public offlineLicenseKeySetId:[B

.field public final playClearSamplesWithoutKeys:Z

.field public final provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

.field public referenceCount:I

.field public final referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;

.field public requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

.field public requestHandlerThread:Landroid/os/HandlerThread;

.field public final responseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

.field public final schemeDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field public sessionId:[B

.field public state:I

.field public final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uuid",
            "mediaDrm",
            "provisioningManager",
            "referenceCountListener",
            "schemeDatas",
            "mode",
            "playClearSamplesWithoutKeys",
            "isPlaceholderSession",
            "offlineLicenseKeySetId",
            "keyRequestParameters",
            "callback",
            "playbackLooper",
            "loadErrorHandlingPolicy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;IZZ[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    const/4 v0, 0x3

    if-ne p6, v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    .line 7
    iput p6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    .line 8
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    .line 9
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isPlaceholderSession:Z

    if-eqz p9, :cond_2

    .line 10
    iput-object p9, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    .line 14
    :goto_0
    iput-object p10, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    .line 15
    iput-object p11, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .line 16
    new-instance p1, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    .line 17
    iput-object p13, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    const/4 p1, 0x2

    .line 18
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 19
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    invoke-direct {p1, p0, p12}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->responseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    return-void
.end method


# virtual methods
.method public acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventDispatcher"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-eqz p1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    .line 3
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 4
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    .line 7
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    .line 8
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-virtual {v5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    .line 11
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 13
    :cond_3
    :goto_2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    if-ne v0, v2, :cond_5

    .line 14
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 15
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ExoPlayer:DrmRequestHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 16
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 17
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openInternal()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    .line 21
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 22
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    .line 23
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;

    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

    .line 24
    iget-object v0, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 25
    iget-wide v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    .line 26
    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    .line 27
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 28
    iget-object p1, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 29
    iget-object p1, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final doLicense(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowRetry"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isPlaceholderSession:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto/16 :goto_6

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v1, :cond_3

    .line 10
    :try_start_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v5, v0, v1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {p0, v1, v4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    :goto_0
    if-eqz v2, :cond_d

    .line 12
    :cond_3
    invoke-virtual {p0, v0, v3, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto/16 :goto_6

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v1, :cond_5

    .line 14
    invoke-virtual {p0, v0, v4, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto/16 :goto_6

    .line 15
    :cond_5
    iget v5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_6

    .line 16
    :try_start_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v5, v0, v1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v4

    goto :goto_1

    :catch_1
    move-exception v1

    .line 17
    invoke-virtual {p0, v1, v4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    :goto_1
    if-eqz v2, :cond_d

    .line 18
    :cond_6
    sget-object v1, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_4

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->queryKeyStatus()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_3

    .line 20
    :cond_8
    new-instance v2, Landroid/util/Pair;

    const-string v4, "LicenseDurationRemaining"

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    :try_start_2
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 22
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    :cond_9
    move-wide v4, v7

    .line 23
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "PlaybackDurationRemaining"

    .line 24
    :try_start_3
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 25
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 26
    :catch_3
    :cond_a
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 27
    :goto_3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 29
    :goto_4
    iget v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    if-nez v4, :cond_b

    const-wide/16 v4, 0x3c

    cmp-long v4, v1, v4

    if-gtz v4, :cond_b

    const-string v4, "DefaultDrmSession"

    const/16 v5, 0x58

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0, v0, v3, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_6

    :cond_b
    const-wide/16 v4, 0x0

    cmp-long p1, v1, v4

    if-gtz p1, :cond_c

    .line 33
    new-instance p1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    goto :goto_6

    .line 34
    :cond_c
    iput v6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 35
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    .line 36
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 37
    :try_start_4
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 38
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 39
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    goto :goto_5

    :cond_d
    :goto_6
    return-void

    :catchall_0
    move-exception p0

    .line 40
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    return-object p0
.end method

.method public final getSchemeUuid()Ljava/util/UUID;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    return-object p0
.end method

.method public final getState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    return p0
.end method

.method public final isOpen()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

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

.method public final onError(Ljava/lang/Exception;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "e",
            "errorSource"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 2
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/DrmUtil$PlatformOperationsWrapperV21;->isMediaDrmStateException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/DrmUtil$PlatformOperationsWrapperV21;->mediaDrmStateExceptionToErrorCode(Ljava/lang/Throwable;)I

    move-result p2

    goto :goto_2

    :cond_0
    const/16 v2, 0x17

    const/16 v4, 0x1776

    if-lt v1, v2, :cond_1

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/DrmUtil$PlatformOperationsWrapperV23;->isMediaDrmResetException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move p2, v4

    goto :goto_2

    :cond_1
    const/16 v2, 0x1772

    const/16 v5, 0x12

    if-lt v1, v5, :cond_2

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/DrmUtil$PlatformOperationsWrapperV18;->isNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    move p2, v2

    goto :goto_2

    :cond_2
    if-lt v1, v5, :cond_3

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/DrmUtil$PlatformOperationsWrapperV18;->isDeniedByServerException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p2, 0x1777

    goto :goto_2

    .line 7
    :cond_3
    instance-of v1, p1, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    if-eqz v1, :cond_4

    const/16 p2, 0x1771

    goto :goto_2

    .line 8
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz v1, :cond_5

    const/16 p2, 0x1773

    goto :goto_2

    .line 9
    :cond_5
    instance-of v1, p1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    if-eqz v1, :cond_6

    const/16 p2, 0x1778

    goto :goto_2

    :cond_6
    if-ne p2, v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    if-ne p2, v1, :cond_8

    const/16 p2, 0x1774

    goto :goto_2

    :cond_8
    const/4 v1, 0x3

    if-ne p2, v1, :cond_b

    goto :goto_1

    .line 10
    :goto_2
    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    const-string p2, "DefaultDrmSession"

    const-string v0, "DRM session error"

    .line 11
    invoke-static {p2, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    .line 13
    iget-object v0, p2, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p2, p2, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 17
    :cond_9
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_a

    .line 18
    iput v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    :cond_a
    return-void

    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 20
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final onKeysError(Ljava/lang/Exception;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "e",
            "thrownByExoMediaDrm"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    .line 3
    iget-object p2, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    if-eqz p2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iput-object p0, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provision()V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    .line 7
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    :goto_1
    return-void
.end method

.method public final openInternal()Z
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->createMediaCrypto([B)Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    .line 6
    iget-object v3, v2, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 9
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catchall_0
    move-exception v0

    .line 12
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/media/NotProvisionedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    goto :goto_1

    .line 14
    :catch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    .line 15
    iget-object v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    iput-object p0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provision()V

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public playClearSamplesWithoutKeys()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    return p0
.end method

.method public final postKeyRequest([BIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scope",
            "type",
            "allowRetry"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    invoke-interface {v1, p1, v2, p2, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p2, v0, p1, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->post(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;Z)V

    :goto_0
    return-void
.end method

.method public provision()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->post(ILjava/lang/Object;Z)V

    return-void
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventDispatcher"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 3
    iput v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->responseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->isReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    .line 10
    iput-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 12
    iput-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 13
    iput-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    .line 14
    iput-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 15
    iput-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    .line 16
    iput-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    if-eqz v0, :cond_1

    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->closeSession([B)V

    .line 19
    iput-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    throw p0

    :cond_1
    :goto_1
    if-eqz p1, :cond_4

    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    .line 22
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_1
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_2

    .line 24
    monitor-exit v1

    goto :goto_3

    .line 25
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    .line 28
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_3

    .line 29
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 32
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    goto :goto_2

    .line 33
    :cond_3
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_4

    .line 36
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    goto :goto_4

    :catchall_1
    move-exception p0

    .line 37
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 38
    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v0, v2, :cond_5

    .line 39
    iget-object v1, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 40
    iget v2, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-lez v2, :cond_5

    .line 41
    iget-wide v6, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_5

    .line 42
    iget-object v0, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    .line 43
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 45
    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    .line 46
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 49
    iget-wide v4, v4, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    add-long/2addr v2, v4

    .line 50
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_5

    :cond_5
    if-nez v0, :cond_9

    .line 51
    iget-object v0, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 52
    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 53
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 55
    iget-object v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    if-ne v1, p0, :cond_6

    .line 56
    iput-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 57
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    if-ne v1, p0, :cond_7

    .line 58
    iput-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 59
    :cond_7
    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    .line 60
    iget-object v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    if-ne v1, p0, :cond_8

    .line 62
    iput-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 63
    iget-object v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 64
    iget-object v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iput-object v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 65
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provision()V

    .line 66
    :cond_8
    iget-object v0, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 67
    iget-wide v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_9

    .line 68
    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    .line 69
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 72
    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    .line 73
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 74
    :cond_9
    :goto_5
    iget-object p0, p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 75
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->maybeReleaseMediaDrm()V

    return-void
.end method
