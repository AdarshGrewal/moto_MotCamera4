.class public final Lcom/google/zxing/qrcode/encoder/QRCode;
.super Ljava/lang/Object;
.source "QRCode.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final synthetic $r8$classId:I

.field public ecLevel:Ljava/lang/Object;

.field public maskPattern:I

.field public matrix:Ljava/lang/Object;

.field public mode:Ljava/lang/Object;

.field public version:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/backends/BackendResponse;Ljava/lang/Iterable;Lcom/google/android/datatransport/runtime/TransportContext;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Ljava/lang/Object;

    iput p5, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    iget-object v2, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Iterable;

    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/datatransport/runtime/TransportContext;

    iget p0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    .line 1
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->getStatus()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    move-result-object v4

    sget-object v5, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->TRANSIENT_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->recordFailure(Ljava/lang/Iterable;)V

    .line 3
    iget-object v0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    add-int/2addr p0, v6

    invoke-interface {v0, v3, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;->schedule(Lcom/google/android/datatransport/runtime/TransportContext;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {p0, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->recordSuccess(Ljava/lang/Iterable;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->getStatus()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    move-result-object p0

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->OK:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    if-ne p0, v2, :cond_1

    .line 6
    iget-object p0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    iget-object v2, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->clock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 7
    invoke-interface {v2}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->getNextRequestWaitMillis()J

    move-result-wide v1

    add-long/2addr v1, v4

    .line 8
    invoke-interface {p0, v3, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->recordNextCallTime(Lcom/google/android/datatransport/runtime/TransportContext;J)V

    .line 9
    :cond_1
    iget-object p0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {p0, v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->hasPendingEventsFor(Lcom/google/android/datatransport/runtime/TransportContext;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 10
    iget-object p0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    invoke-interface {p0, v3, v6, v6}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;->schedule(Lcom/google/android/datatransport/runtime/TransportContext;IZ)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<<\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Ljava/lang/Object;

    check-cast v1, Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n ecLevel: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Ljava/lang/Object;

    check-cast v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n version: "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:Ljava/lang/Object;

    check-cast v1, Lcom/google/zxing/qrcode/decoder/Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n maskPattern: "

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/ArrayQueue;

    if-nez v1, :cond_0

    const-string p0, "\n matrix: null\n"

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\n matrix:\n"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/internal/ArrayQueue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, ">>\n"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
