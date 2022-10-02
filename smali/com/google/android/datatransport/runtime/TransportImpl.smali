.class public final Lcom/google/android/datatransport/runtime/TransportImpl;
.super Ljava/lang/Object;
.source "TransportImpl.java"

# interfaces
.implements Lcom/google/android/datatransport/Transport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/Transport<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final payloadEncoding:Lcom/google/android/datatransport/Encoding;

.field public final transformer:Lcom/google/android/datatransport/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/Transformer<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field public final transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

.field public final transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/TransportContext;Ljava/lang/String;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;Lcom/google/android/datatransport/runtime/TransportInternal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/TransportContext;",
            "Ljava/lang/String;",
            "Lcom/google/android/datatransport/Encoding;",
            "Lcom/google/android/datatransport/Transformer<",
            "TT;[B>;",
            "Lcom/google/android/datatransport/runtime/TransportInternal;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->name:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->payloadEncoding:Lcom/google/android/datatransport/Encoding;

    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transformer:Lcom/google/android/datatransport/Transformer;

    .line 6
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;

    return-void
.end method


# virtual methods
.method public send(Lcom/google/android/datatransport/Event;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/TransportImpl$$Lambda$1;->instance:Lcom/google/android/datatransport/runtime/TransportImpl$$Lambda$1;

    .line 2
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;

    .line 3
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    const-string v3, "Null transportContext"

    .line 4
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->name:Ljava/lang/String;

    const-string v4, "Null transportName"

    .line 6
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v4, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transformer:Lcom/google/android/datatransport/Transformer;

    const-string v5, "Null transformer"

    .line 8
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->payloadEncoding:Lcom/google/android/datatransport/Encoding;

    const-string v5, "Null encoding"

    .line 10
    invoke-static {p0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    check-cast v1, Lcom/google/android/datatransport/runtime/TransportRuntime;

    .line 12
    iget-object v5, v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

    .line 13
    check-cast p1, Lcom/google/android/datatransport/AutoValue_Event;

    .line 14
    iget-object v6, p1, Lcom/google/android/datatransport/AutoValue_Event;->priority:Lcom/google/android/datatransport/Priority;

    .line 15
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportContext;->builder()Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v7

    .line 16
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setBackendName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    .line 17
    invoke-virtual {v7, v6}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setPriority(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    move-result-object v2

    check-cast v7, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;

    .line 19
    iput-object v2, v7, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->extras:[B

    .line 20
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->build()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object v2

    .line 21
    new-instance v6, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;

    invoke-direct {v6}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 22
    iput-object v7, v6, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->autoMetadata:Ljava/util/Map;

    .line 23
    iget-object v7, v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 24
    invoke-interface {v7}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->setEventMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    iget-object v1, v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 25
    invoke-interface {v1}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->setUptimeMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 26
    invoke-virtual {v6, v3}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->setTransportName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    new-instance v1, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 27
    iget-object p1, p1, Lcom/google/android/datatransport/AutoValue_Event;->payload:Ljava/lang/Object;

    .line 28
    invoke-interface {v4, p1}, Lcom/google/android/datatransport/Transformer;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 29
    invoke-direct {v1, p0, p1}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    invoke-virtual {v6, v1}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->setEncodedPayload(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    const/4 p0, 0x0

    .line 30
    iput-object p0, v6, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->code:Ljava/lang/Integer;

    .line 31
    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object p0

    .line 32
    invoke-interface {v5, v2, p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/Scheduler;->schedule(Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;Lcom/google/android/datatransport/TransportScheduleCallback;)V

    return-void
.end method
