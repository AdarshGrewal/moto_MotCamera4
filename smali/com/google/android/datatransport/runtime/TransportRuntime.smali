.class public Lcom/google/android/datatransport/runtime/TransportRuntime;
.super Ljava/lang/Object;
.source "TransportRuntime.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/TransportInternal;


# static fields
.field public static volatile instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;


# instance fields
.field public final eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field public final scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

.field public final uploader:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field public final uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/Scheduler;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->uploader:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    .line 6
    iget-object p0, p5, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->executor:Ljava/util/concurrent/Executor;

    .line 7
    new-instance p1, Lcom/google/mlkit/common/sdkinternal/zzl;

    invoke-direct {p1, p5}, Lcom/google/mlkit/common/sdkinternal/zzl;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V

    .line 8
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    .line 3
    iget-object v0, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->transportRuntimeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/TransportRuntime;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/google/android/datatransport/runtime/TransportRuntime;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Landroid/content/Context;

    .line 6
    new-instance v1, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent$1;)V

    .line 7
    sput-object v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public newFactory(Lcom/google/android/datatransport/runtime/EncodedDestination;)Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    .line 2
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/EncodedDestination;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/CCTDestination;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    .line 5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lcom/google/android/datatransport/Encoding;

    const-string v2, "proto"

    invoke-direct {v1, v2}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 8
    :goto_0
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportContext;->builder()Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v2

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cct"

    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setBackendName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    .line 10
    check-cast p1, Lcom/google/android/datatransport/cct/CCTDestination;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->getExtras()[B

    move-result-object p1

    check-cast v2, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;

    .line 11
    iput-object p1, v2, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->extras:[B

    .line 12
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->build()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;-><init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/TransportInternal;)V

    return-object v0
.end method
