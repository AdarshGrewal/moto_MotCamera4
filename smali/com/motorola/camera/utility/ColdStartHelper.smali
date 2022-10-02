.class public final Lcom/motorola/camera/utility/ColdStartHelper;
.super Ljava/lang/Object;
.source "ColdStartHelper.kt"

# interfaces
.implements Lcom/motorola/camera/device/callables/GetCharacteristicsListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColdStartHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColdStartHelper.kt\ncom/motorola/camera/utility/ColdStartHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n1#2:70\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/utility/ColdStartHelper;

.field public static final characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

.field public static cliDisplay:Z

.field public static realSize:Landroid/graphics/Point;

.field public static triggered:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/utility/ColdStartHelper;

    invoke-direct {v0}, Lcom/motorola/camera/utility/ColdStartHelper;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/ColdStartHelper;->INSTANCE:Lcom/motorola/camera/utility/ColdStartHelper;

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/utility/ColdStartHelper;->characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized onActivityCreate(Landroid/graphics/Point;Z)V
    .locals 2

    const-class v0, Lcom/motorola/camera/utility/ColdStartHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/utility/ColdStartHelper;->INSTANCE:Lcom/motorola/camera/utility/ColdStartHelper;

    sput-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->realSize:Landroid/graphics/Point;

    .line 2
    sput-boolean p1, Lcom/motorola/camera/utility/ColdStartHelper;->cliDisplay:Z

    .line 3
    sget-boolean p0, Lcom/motorola/camera/utility/ColdStartHelper;->triggered:Z

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/utility/ColdStartHelper;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    .line 5
    sput-boolean p0, Lcom/motorola/camera/utility/ColdStartHelper;->triggered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    sget-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->realSize:Landroid/graphics/Point;

    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/motorola/camera/utility/ColdStartHelper;->cliDisplay:Z

    invoke-static {p1, p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->processCharacteristics(Ljava/util/Map;Landroid/graphics/Point;Z)V

    .line 3
    sget-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    const-string p0, "realSize"

    .line 4
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
