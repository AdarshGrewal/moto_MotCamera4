.class public final Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;
.super Ljava/lang/Object;
.source "BgServiceConnection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$BgJobResponseHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBgServiceConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BgServiceConnection.kt\ncom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,167:1\n1#2:168\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final connectionContext:Landroid/content/Context;

.field public handlerThread:Landroid/os/HandlerThread;

.field public isBound:Z

.field public final listener:Lcom/motorola/camera/shared/bgservice/BgJobConnectionIntf$TransferJobListener;

.field public messenger:Landroid/os/Messenger;

.field public final responseHandler:Landroid/os/Handler;

.field public service:Landroid/os/Messenger;

.field public final serviceComponentInfo:Landroid/content/ComponentName;

.field public final serviceConnection:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$serviceConnection$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/Handler;Lcom/motorola/camera/shared/bgservice/BgJobConnectionIntf$TransferJobListener;)V
    .locals 1

    const-string v0, "responseCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->connectionContext:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->responseHandler:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->serviceComponentInfo:Landroid/content/ComponentName;

    .line 5
    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->listener:Lcom/motorola/camera/shared/bgservice/BgJobConnectionIntf$TransferJobListener;

    .line 6
    new-instance p3, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$serviceConnection$1;

    invoke-direct {p3, p0}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$serviceConnection$1;-><init>(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;)V

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->serviceConnection:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$serviceConnection$1;

    .line 7
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 8
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p0, p3, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public processJob(ILandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3
    iget-boolean p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->isBound:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->service:Landroid/os/Messenger;

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->messenger:Landroid/os/Messenger;

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 5
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->service:Landroid/os/Messenger;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    move v3, v1

    .line 6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "task_id"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/common/TaskId;

    if-nez p1, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    iget-wide p1, p1, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 10
    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string p1, "EMPTY"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->responseHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$$ExternalSyntheticLambda0;

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$$ExternalSyntheticLambda0;-><init>(ILcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;JLandroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    return-void
.end method
