.class public final Lcom/motorola/camera/utility/LensApiHelper;
.super Ljava/lang/Object;
.source "LensApiHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;,
        Lcom/motorola/camera/utility/LensApiHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLensApiHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LensApiHelper.kt\ncom/motorola/camera/utility/LensApiHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,208:1\n1#2:209\n37#3,2:210\n37#3,2:212\n*S KotlinDebug\n*F\n+ 1 LensApiHelper.kt\ncom/motorola/camera/utility/LensApiHelper\n*L\n102#1:210,2\n123#1:212,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

.field public static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/motorola/camera/utility/LensApiHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final arStickersCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final googleLensCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;",
            ">;"
        }
    .end annotation
.end field

.field public googleLensStatusChecked:Z

.field public isARStickersReady:Z

.field public final isARStickersSupported:Z

.field public final isARStickersV2Supported:Z

.field public isGoogleLensAvailable:Z

.field public isInitialized:Z

.field public lensApi:Lcom/google/lens/sdk/LensApi;

.field public final stickerParameters$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/LensApiHelper$Companion$instance$2;->INSTANCE:Lcom/motorola/camera/utility/LensApiHelper$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/LensApiHelper;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "synchronizedSet(HashSet())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->arStickersCallbacks:Ljava/util/Set;

    .line 4
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 7
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->GOOGLE_AR_STICKERS:Lcom/motorola/camera/AppFeatures$Feature;

    .line 8
    iget-object v2, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 9
    iput-boolean v1, p0, Lcom/motorola/camera/utility/LensApiHelper;->isARStickersSupported:Z

    .line 10
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->GOOGLE_AR_STICKERS_V2:Lcom/motorola/camera/AppFeatures$Feature;

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->isARStickersV2Supported:Z

    .line 14
    sget-object v0, Lcom/motorola/camera/utility/LensApiHelper$stickerParameters$2;->INSTANCE:Lcom/motorola/camera/utility/LensApiHelper$stickerParameters$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->stickerParameters$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final getInstance()Lcom/motorola/camera/utility/LensApiHelper;
    .locals 1

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized checkGoogleLensAvailability(Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->googleLensStatusChecked:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;->onStatusChecked()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    :goto_0
    iget-boolean p1, p0, Lcom/motorola/camera/utility/LensApiHelper;->isInitialized:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/utility/LensApiHelper;->initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized initialize()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    new-instance v2, Lcom/google/lens/sdk/LensApi;

    .line 4
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    invoke-direct {v2, v3}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/camera/utility/LensApiHelper;->lensApi:Lcom/google/lens/sdk/LensApi;

    .line 6
    new-instance v3, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/utility/LensApiHelper;J)V

    invoke-virtual {v2, v3}, Lcom/google/lens/sdk/LensApi;->checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    .line 7
    iget-boolean v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->isARStickersSupported:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->lensApi:Lcom/google/lens/sdk/LensApi;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/utility/LensApiHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/lens/sdk/LensApi;->checkArStickersAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->isInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isARStickersV1Available()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->isARStickersSupported:Z

    if-eqz v0, :cond_0

    const-string v0, "com.google.ar.lens"

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/shared/PackageUtility;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->isARStickersReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isARStickersV2Available()Z
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->isARStickersV2Supported:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "com.google.ar.lens"

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/shared/PackageUtility;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.google.ar.lens"

    .line 6
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/32 v5, 0xbf372c9

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    :try_start_2
    monitor-exit p0

    if-eqz v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    move v1, v2

    .line 8
    :goto_1
    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isGoogleLensAvailable()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
