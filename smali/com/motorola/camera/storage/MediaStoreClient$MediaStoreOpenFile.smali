.class public final Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOpenFile;
.super Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;
.source "MediaStoreClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/storage/MediaStoreClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaStoreOpenFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaStoreClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaStoreClient.kt\ncom/motorola/camera/storage/MediaStoreClient$MediaStoreOpenFile\n+ 2 MediaStoreClient.kt\ncom/motorola/camera/storage/MediaStoreClient\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,356:1\n125#2,4:357\n1#3:361\n*S KotlinDebug\n*F\n+ 1 MediaStoreClient.kt\ncom/motorola/camera/storage/MediaStoreClient$MediaStoreOpenFile\n*L\n299#1:357,4\n299#1:361\n*E\n"
.end annotation


# instance fields
.field public final mode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;-><init>(Landroid/net/Uri;)V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOpenFile;->mode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doOperation()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient;

    .line 2
    :try_start_0
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v1, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOpenFile$doOperation$$inlined$runOnExecutor$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOpenFile$doOperation$$inlined$runOnExecutor$1;-><init>(Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOpenFile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    check-cast p0, Landroid/os/ParcelFileDescriptor;

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cause is null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "MediaStoreOpenFile(uri="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;->uri:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOpenFile;->mode:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
