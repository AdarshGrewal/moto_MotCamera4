.class public final synthetic Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/fsm/camera/StateChangeListener;Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;

    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/io/IOException;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 2
    throw p0

    .line 3
    :pswitch_1
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Exception;

    .line 4
    iget v2, v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, v2, v0, p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;->onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V

    return-void

    .line 5
    :pswitch_2
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/QueryInterceptorDatabase;

    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/sqlite/db/SupportSQLiteQuery;

    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    check-cast p0, Landroidx/room/QueryInterceptorProgram;

    .line 6
    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object p0, p0, Landroidx/room/QueryInterceptorProgram;->mBindArgsCache:Ljava/util/List;

    .line 8
    invoke-interface {v0, v1, p0}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 9
    :goto_0
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/StateChangeListener;

    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    iget-object v3, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    iget-object v3, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
