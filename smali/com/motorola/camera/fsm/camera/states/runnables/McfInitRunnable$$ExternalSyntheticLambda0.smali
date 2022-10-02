.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->INSTANCE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    .line 2
    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    :cond_0
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 5
    sget-object v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    invoke-virtual {v7, v6}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6
    sget-object v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->INSTANCE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    invoke-virtual {v8, v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelData(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    :cond_1
    if-eqz p0, :cond_2

    :try_start_2
    const-string p0, "ContentAiProviderHelper"

    const-string v3, "loadAllModels dur:"

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v2

    array-length v2, v2

    if-eq v1, v2, :cond_3

    .line 9
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    :try_start_3
    invoke-virtual {p0}, Ljava/util/EnumMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :try_start_4
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 12
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
