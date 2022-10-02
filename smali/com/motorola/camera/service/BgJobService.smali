.class public final Lcom/motorola/camera/service/BgJobService;
.super Landroid/app/Service;
.source "BgJobService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/service/BgJobService$MessageHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBgJobService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BgJobService.kt\ncom/motorola/camera/service/BgJobService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,506:1\n1052#2:507\n1849#2:508\n1849#2,2:509\n1850#2:511\n1849#2,2:512\n1#3:514\n*S KotlinDebug\n*F\n+ 1 BgJobService.kt\ncom/motorola/camera/service/BgJobService\n*L\n151#1:507\n153#1:508\n237#1:509,2\n153#1:511\n292#1:512,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/service/BgJobService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "MessageHandler",
        "MotCamera4-v9.0.12.67_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final messenger:Landroid/os/Messenger;

.field public final responseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/background/common/TaskId;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field public final saveListener:Lcom/motorola/camera/saving/SaveListener;

.field public final subTaskCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/background/common/TaskId;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/service/BgJobService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/service/BgJobService;->subTaskCount:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/motorola/camera/service/BgJobService$MessageHandler;

    invoke-direct {v1, p0}, Lcom/motorola/camera/service/BgJobService$MessageHandler;-><init>(Lcom/motorola/camera/service/BgJobService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/camera/service/BgJobService;->messenger:Landroid/os/Messenger;

    .line 5
    new-instance v0, Lcom/motorola/camera/service/BgJobService$saveListener$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/service/BgJobService$saveListener$1;-><init>(Lcom/motorola/camera/service/BgJobService;)V

    iput-object v0, p0, Lcom/motorola/camera/service/BgJobService;->saveListener:Lcom/motorola/camera/saving/SaveListener;

    return-void
.end method


# virtual methods
.method public final acknowledgeJob(Landroid/os/Message;Lcom/motorola/camera/background/common/TaskId;)V
    .locals 2

    .line 1
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "task_id"

    .line 3
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    .line 5
    iput v1, v0, Landroid/os/Message;->what:I

    .line 6
    invoke-virtual {v0, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Can Not acknowledge job "

    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BgJobService"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final addMetadataToJpeg(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Landroid/os/Bundle;)V
    .locals 5

    const-string p0, "JOB_CONTEXT"

    .line 1
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p2, :cond_8

    const-string p2, "metadataContext"

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    const/4 v2, 0x0

    const-string v3, "BgJobContext"

    if-eqz v1, :cond_2

    const-string p0, "Cannot parse empty string"

    .line 4
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 5
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Missing metadataContext object"

    .line 7
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 8
    :cond_3
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "makerNotes"

    .line 9
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string p0, "Missing makernotes object"

    .line 10
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 11
    :cond_4
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    :goto_2
    add-int/lit8 v3, v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    if-lt v3, v2, :cond_5

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_2

    .line 16
    :cond_6
    :goto_3
    new-instance v2, Lcom/motorola/camera/background/provider/BgJobContext$MetadataContext;

    invoke-direct {v2, p2}, Lcom/motorola/camera/background/provider/BgJobContext$MetadataContext;-><init>(Ljava/nio/ByteBuffer;)V

    :goto_4
    if-nez v2, :cond_7

    goto :goto_5

    .line 17
    :cond_7
    new-instance p0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 18
    iget-object p2, v2, Lcom/motorola/camera/background/provider/BgJobContext$MetadataContext;->makerNotesData:Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteByteArray([B)V

    .line 20
    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 21
    iput-object p0, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBuffer:Ljava/nio/ByteBuffer;

    :cond_8
    :goto_5
    return-void
.end method

.method public final cancelSaveImage(Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "task_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/common/TaskId;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    const-string v1, "BgJobService"

    if-eqz p1, :cond_1

    .line 3
    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 4
    new-instance v3, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p1}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/background/common/TaskId;)V

    .line 5
    iget-object v4, v2, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object v2, v2, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 6
    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/service/BgJobService;->getResponseMessage(ILcom/motorola/camera/background/common/TaskId;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string p0, "resultReceiver is null"

    .line 7
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "Missing taskID/callback information"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final getResponseMessage(ILcom/motorola/camera/background/common/TaskId;)Landroid/os/Message;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    .line 2
    iput p1, p0, Landroid/os/Message;->what:I

    .line 3
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 4
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "task_id"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public final getTaskID(Landroid/os/Bundle;)Lcom/motorola/camera/background/common/TaskId;
    .locals 0

    .line 1
    const-class p0, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo p0, "task_id"

    .line 2
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/TaskId;

    return-object p0
.end method

.method public final isValidData(Landroid/os/Bundle;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string/jumbo p0, "task_id"

    .line 1
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/TaskId;

    if-eqz p0, :cond_1

    .line 2
    sget-object p1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    .line 4
    iget-wide v0, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    long-to-int p0, v0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/CameraData;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TaskID data can not be null "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bundle data can not be null "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final loadAuxiliaryData(JLjava/util/ArrayList;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;",
            ">;",
            "Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0, p1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 5
    :try_start_0
    iget-object p1, p4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->parseFromJson(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object p1, p4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object p2, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/mcf/McfDepthRender;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 p2, -0x1

    move-wide v0, p2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    iget-object v3, v2, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->category:Ljava/lang/String;

    const-string v4, "ORIGIN"

    .line 10
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    iget-wide v0, v2, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    goto :goto_0

    :cond_1
    cmp-long p1, v0, p2

    if-eqz p1, :cond_2

    .line 12
    sget-object p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;

    .line 13
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 14
    invoke-static {p0, v0, v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object p0

    .line 15
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 16
    iget-object p1, p4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    .line 17
    sget-object p2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->DEPTH_RENDER_ORIGINAL:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    .line 18
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string p0, "missing origin image for depth capture"

    const-string p1, "BgJobService"

    .line 19
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 21
    throw p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/service/BgJobService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/service/BgJobService;->saveListener:Lcom/motorola/camera/saving/SaveListener;

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final retrieveCaptureData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "DB_URI"

    .line 1
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-static {p1, p0}, Lcom/motorola/camera/utility/FileUtility$FileContentProviderUtility;->readByteRecord(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 4
    new-instance p0, Lcom/google/gson/GsonBuilder;

    invoke-direct {p0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 6
    new-instance v1, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;

    invoke-direct {v1}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p0

    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 10
    const-class v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {p0, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    .line 12
    div-long/2addr v0, v2
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v0, p0

    :goto_0
    const-string p0, "GsonUtility"

    const-string v2, "failed while converting json to media record. Error : "

    .line 13
    invoke-static {p0, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    .line 15
    invoke-static {p1, v0}, Lcom/motorola/camera/utility/FileUtility$FileContentProviderUtility;->readByteRecord(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object p1

    .line 16
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 19
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to deserialize json to CapturedImageMediaData."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DB URL can not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
