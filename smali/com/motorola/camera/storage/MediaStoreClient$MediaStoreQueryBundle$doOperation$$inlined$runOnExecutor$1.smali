.class public final Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle$doOperation$$inlined$runOnExecutor$1;
.super Ljava/lang/Object;
.source "MediaStoreClient.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaStoreClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaStoreClient.kt\ncom/motorola/camera/storage/MediaStoreClient$runOnExecutor$1\n+ 2 MediaStoreClient.kt\ncom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle\n+ 3 MediaStoreClient.kt\ncom/motorola/camera/storage/MediaStoreClient\n*L\n1#1,356:1\n235#2:357\n236#2:360\n175#3,2:358\n177#3,5:361\n*S KotlinDebug\n*F\n+ 1 MediaStoreClient.kt\ncom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle\n*L\n235#1:358,2\n235#1:361,5\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle$doOperation$$inlined$runOnExecutor$1;->this$0:Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient;

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$acquireClientIfNeeded(Lcom/motorola/camera/storage/MediaStoreClient;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle$doOperation$$inlined$runOnExecutor$1;->this$0:Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;->uri:Landroid/net/Uri;

    .line 5
    iget-object v3, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;->projection:[Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;->queryArgs:Landroid/os/Bundle;

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 8
    invoke-virtual {v1, v2, v3, v4, p0}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    instance-of v1, p0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    .line 10
    invoke-static {v0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$closeClient(Lcom/motorola/camera/storage/MediaStoreClient;)V

    .line 11
    :cond_0
    invoke-static {v0, p0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$translateThrowable(Lcom/motorola/camera/storage/MediaStoreClient;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method
