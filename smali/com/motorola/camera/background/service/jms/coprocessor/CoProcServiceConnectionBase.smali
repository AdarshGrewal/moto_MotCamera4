.class public abstract Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;
.super Ljava/lang/Object;
.source "CoProcServiceConnectionBase.kt"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mClientIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;

.field public mCoproReady:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase$mClientIntf$1;

    invoke-direct {p2, p3, p1}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase$mClientIntf$1;-><init>(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/RegisteredProcDef;)V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->mClientIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public final getMCoproReady()Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->mCoproReady:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mCoproReady"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
