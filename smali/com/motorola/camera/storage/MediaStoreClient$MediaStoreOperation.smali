.class public abstract Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;
.super Ljava/lang/Object;
.source "MediaStoreClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/storage/MediaStoreClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MediaStoreOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract doOperation()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final execute()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;->doOperation()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    if-eqz v0, :cond_4

    const-string v0, "e"

    .line 2
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, v2, Lcom/motorola/camera/storage/exception/DisconnectedException;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, v2, Lcom/motorola/camera/storage/exception/VolumeNotFoundException;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;->uri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "getVolumeName(uri)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "external"

    .line 6
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "external_primary"

    .line 7
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-wide/16 v5, 0xfa

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    :goto_1
    move v3, v4

    :cond_2
    if-eqz v3, :cond_4

    if-ltz v1, :cond_3

    move v0, v1

    goto :goto_0

    .line 9
    :cond_3
    sget-object p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation$execute$1;->INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation$execute$1;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lkotlin/jvm/internal/Lambda;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_4
    throw v2
.end method
