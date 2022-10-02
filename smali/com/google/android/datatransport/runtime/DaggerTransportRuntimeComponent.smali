.class public final Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;
.super Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;
.source "DaggerTransportRuntimeComponent.java"


# instance fields
.field public executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public metadataBackendRegistryProvider:Ljavax/inject/Provider;

.field public sQLiteEventStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;",
            ">;"
        }
    .end annotation
.end field

.field public setApplicationContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public transportRuntimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/datatransport/runtime/TransportRuntime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent$1;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;-><init>()V

    .line 2
    sget-object v2, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    sget-object v3, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    .line 3
    instance-of v3, v2, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    invoke-direct {v3, v2}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;-><init>(Ljavax/inject/Provider;)V

    move-object v2, v3

    .line 5
    :goto_0
    iput-object v2, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->executorProvider:Ljavax/inject/Provider;

    .line 6
    new-instance v2, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    const-string v3, "instance cannot be null"

    .line 7
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-direct {v2, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v2, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:Ljavax/inject/Provider;

    .line 10
    sget-object v1, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    sget-object v12, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    .line 11
    new-instance v3, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v3, v2, v1, v12}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 12
    new-instance v4, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v4, v2, v3}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 13
    instance-of v2, v4, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    new-instance v2, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    invoke-direct {v2, v4}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;-><init>(Ljavax/inject/Provider;)V

    move-object v4, v2

    .line 15
    :goto_1
    iput-object v4, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->metadataBackendRegistryProvider:Ljavax/inject/Provider;

    .line 16
    iget-object v2, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:Ljavax/inject/Provider;

    sget-object v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory;

    sget-object v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_SchemaVersionFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_SchemaVersionFactory;

    .line 17
    new-instance v8, Landroidx/viewpager2/widget/FakeDrag;

    invoke-direct {v8, v2, v3, v4}, Landroidx/viewpager2/widget/FakeDrag;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 18
    sget-object v7, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_StoreConfigFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_StoreConfigFactory;

    .line 19
    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, v1

    move-object v6, v12

    invoke-direct/range {v4 .. v9}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    .line 20
    instance-of v3, v2, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    if-eqz v3, :cond_2

    goto :goto_2

    .line 21
    :cond_2
    new-instance v3, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    invoke-direct {v3, v2}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;-><init>(Ljavax/inject/Provider;)V

    move-object v2, v3

    .line 22
    :goto_2
    iput-object v2, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->sQLiteEventStoreProvider:Ljavax/inject/Provider;

    .line 23
    new-instance v6, Landroidx/transition/ViewOverlayApi18;

    invoke-direct {v6, v1}, Landroidx/transition/ViewOverlayApi18;-><init>(Ljavax/inject/Provider;)V

    .line 24
    iget-object v11, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:Ljavax/inject/Provider;

    .line 25
    new-instance v13, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;

    const/4 v8, 0x1

    move-object v3, v13

    move-object v4, v11

    move-object v5, v2

    move-object v7, v12

    invoke-direct/range {v3 .. v8}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    .line 26
    iget-object v3, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->executorProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->metadataBackendRegistryProvider:Ljavax/inject/Provider;

    .line 27
    new-instance v15, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;

    const/4 v10, 0x1

    move-object v4, v15

    move-object v5, v3

    move-object v6, v14

    move-object v7, v13

    move-object v8, v2

    move-object v9, v2

    invoke-direct/range {v4 .. v10}, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    .line 28
    new-instance v16, Lcom/google/android/play/core/appupdate/zzaa;

    move-object/from16 v4, v16

    move-object v5, v11

    move-object v7, v2

    move-object v8, v13

    move-object v9, v3

    move-object v10, v2

    move-object v11, v1

    invoke-direct/range {v4 .. v11}, Lcom/google/android/play/core/appupdate/zzaa;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 29
    new-instance v9, Landroidx/constraintlayout/core/Cache;

    invoke-direct {v9, v3, v2, v13, v2}, Landroidx/constraintlayout/core/Cache;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 30
    new-instance v2, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;

    const/4 v10, 0x0

    move-object v4, v2

    move-object v5, v1

    move-object v6, v12

    move-object v7, v15

    move-object/from16 v8, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    .line 31
    instance-of v1, v2, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    if-eqz v1, :cond_3

    goto :goto_3

    .line 32
    :cond_3
    new-instance v1, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    invoke-direct {v1, v2}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;-><init>(Ljavax/inject/Provider;)V

    move-object v2, v1

    .line 33
    :goto_3
    iput-object v2, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->transportRuntimeProvider:Ljavax/inject/Provider;

    return-void
.end method
