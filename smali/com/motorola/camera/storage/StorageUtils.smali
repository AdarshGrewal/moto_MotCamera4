.class public final Lcom/motorola/camera/storage/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorageUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorageUtils.kt\ncom/motorola/camera/storage/StorageUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,378:1\n1#2:379\n286#3,2:380\n*S KotlinDebug\n*F\n+ 1 StorageUtils.kt\ncom/motorola/camera/storage/StorageUtils\n*L\n348#1:380,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

.field public static deleteTemporaryFilesCoroutine:Lkotlinx/coroutines/Job;

.field public static tempFilesList:[Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/storage/StorageUtils;

    invoke-direct {v0}, Lcom/motorola/camera/storage/StorageUtils;-><init>()V

    sput-object v0, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/motorola/camera/storage/StorageUtils$deleteTemporaryFilesCoroutine$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/motorola/camera/storage/StorageUtils$deleteTemporaryFilesCoroutine$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFilesCoroutine:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final copyTemporaryFileToMediaFile(Ljava/io/File;Lcom/motorola/camera/storage/MediaFile;)Z
    .locals 11

    const-string/jumbo v0, "temporaryFile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    .line 2
    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/nio/file/OpenOption;

    .line 3
    sget-object v4, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v3, v0

    invoke-static {p0, v3}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    move-object v5, v1

    move-object v6, p0

    move-wide v9, v3

    .line 6
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    .line 8
    :try_start_3
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {p0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return v2

    .line 9
    :cond_0
    :try_start_5
    new-instance v2, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transferred "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " out of "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    .line 10
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v2

    :try_start_9
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 11
    :catch_0
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    return v0
.end method

.method public static final createFileDescriptorWithFallback(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/io/FileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 2
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v2}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "captureRecord.mFileName.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/motorola/camera/storage/SharedMediaFile;->setFileName(Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 4
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static final createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 3
    invoke-interface {p0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 4
    sget-object v2, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaFilePath;->getMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v3

    const-string v4, "mediaVolume"

    .line 5
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v2, v1}, Lcom/motorola/camera/storage/StorageUtils;->setCurrentStorage(I)V

    .line 8
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Lcom/motorola/camera/storage/MediaFilePath;->withMediaVolume(Lcom/motorola/camera/storage/MediaVolume;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object p0

    .line 10
    sget v0, Lcom/motorola/camera/storage/MediaFile;->$r8$clinit:I

    const-string v0, "mediaFilePath"

    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-direct {v0, p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;-><init>(Lcom/motorola/camera/storage/MediaFilePath;)V

    const-string v1, "createMediaFileWithFallback: using fallback volume: "

    .line 13
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "StorageUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :try_start_1
    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    .line 15
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 16
    throw p0

    .line 17
    :cond_2
    throw v0

    .line 18
    :cond_3
    throw v0
.end method

.method public static final createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/StorageUtils;->getTemporaryDirectory()Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/motorola/camera/saving/FileName;

    invoke-direct {v1, p0}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    const/16 p0, 0x2000

    invoke-virtual {v1, p0}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1

    .line 5
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "Failed to create temporary file: "

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/motorola/camera/storage/MediaFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static final deleteTemporaryFile(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const-string v0, "Temporary file could not be deleted: "

    .line 2
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "StorageUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static final ensureDirectoryOrNull(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static final getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;
    .locals 3

    const-string v0, "fileName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/motorola/camera/storage/MediaFilePath;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolumeWithFallback(Lcom/motorola/camera/storage/OnMediaVolumeFallbackListener;)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v1

    const-string v2, "DCIM/Camera"

    .line 3
    invoke-direct {v0, v1, v2, p0}, Lcom/motorola/camera/storage/MediaFilePath;-><init>(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getCurrentMediaVolume()Lcom/motorola/camera/storage/MediaVolume;
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/StorageUtils;->isCurrentStorageInternal()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v0

    return-object v0
.end method

.method public static final getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/storage/StorageUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "Dump"

    invoke-static {v0, v1}, Lcom/motorola/camera/storage/StorageUtils;->ensureDirectoryOrNull(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-static {v0, p0}, Lcom/motorola/camera/storage/StorageUtils;->ensureDirectoryOrNull(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaFilePath;->getMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getPathFile(Lcom/motorola/camera/storage/MediaVolume;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaFilePath;->getRelativePath()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static final getMediaRecorderMaxFileSize()J
    .locals 7

    .line 1
    sget-boolean v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->isFreeBytesUpdated:Z

    const-wide v1, 0xffffffffL

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getCurrentMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 3
    :goto_0
    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-virtual {v0}, Lcom/motorola/camera/ShotType;->getMinimumFreeBytes()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x40000

    .line 4
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 5
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getMediaStoreUri(Lcom/motorola/camera/CameraData;)Landroid/net/Uri;
    .locals 3

    const-string v0, "cameraData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mPhotosVersion:[I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v0

    const-string v1, "image/*"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "video/*"

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    const-string/jumbo v0, "withAppendedId(contentUri, cameraData.id)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getMediaVolumeWithFallback(Lcom/motorola/camera/storage/OnMediaVolumeFallbackListener;)Lcom/motorola/camera/storage/MediaVolume;
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/StorageUtils;->isCurrentStorageInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object p0, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/motorola/camera/storage/StorageUtils;->setCurrentStorage(I)V

    if-nez p0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable$MediaVolumeFallbackDetector;

    .line 6
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable$MediaVolumeFallbackDetector;->mFallback:Z

    .line 7
    :goto_0
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/storage/MediaVolume;->PRIMARY:Lcom/motorola/camera/storage/MediaVolume;

    :goto_0
    return-object v0
.end method

.method public static final isFreeBytesSufficient(Lcom/motorola/camera/ShotType;J)Z
    .locals 2

    const-string v0, "shotType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/storage/StorageUtils;->getRequiredFreeBytes(Lcom/motorola/camera/ShotType;)J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isFreeBytesSufficientWithFallback(Lcom/motorola/camera/ShotType;)Z
    .locals 1

    const-string v0, "shotType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficientWithFallback(Lcom/motorola/camera/ShotType;Lcom/motorola/camera/storage/OnMediaVolumeFallbackListener;)Z

    move-result p0

    return p0
.end method

.method public static final isFreeBytesSufficientWithFallback(Lcom/motorola/camera/ShotType;Lcom/motorola/camera/storage/OnMediaVolumeFallbackListener;)Z
    .locals 8

    const-string v0, "shotType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/storage/StorageUtils;->getRequiredFreeBytes(Lcom/motorola/camera/ShotType;)J

    move-result-wide v1

    .line 3
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolumeWithFallback(Lcom/motorola/camera/storage/OnMediaVolumeFallbackListener;)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-nez v3, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result p0

    if-nez p0, :cond_4

    .line 6
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)J

    move-result-wide v6

    cmp-long p0, v6, v1

    if-ltz p0, :cond_1

    move v4, v5

    :cond_1
    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v0, v5}, Lcom/motorola/camera/storage/StorageUtils;->setCurrentStorage(I)V

    if-nez p1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable$MediaVolumeFallbackDetector;

    .line 10
    iput-boolean v5, p1, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable$MediaVolumeFallbackDetector;->mFallback:Z

    :cond_3
    :goto_1
    move v3, v4

    :cond_4
    return v3
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "getInstance()"

    .line 2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getMediaVolumes()Ljava/util/Set;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/storage/MediaVolume;

    .line 3
    invoke-virtual {v1}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_1
    check-cast v0, Lcom/motorola/camera/storage/MediaVolume;

    return-object v0
.end method

.method public final getRequiredFreeBytes(Lcom/motorola/camera/ShotType;)J
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/ShotType;->getMinimumFreeBytes()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/ShotType;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x3c

    .line 3
    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getMediaRecorderDataForCurrentMode()Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    move-result-object v2

    .line 4
    iget v3, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    iget v2, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    add-int/2addr v3, v2

    int-to-long v2, v3

    long-to-double p0, p0

    const-wide v4, 0x3ff199999999999aL    # 1.1

    mul-double/2addr p0, v4

    long-to-double v2, v2

    mul-double/2addr p0, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr p0, v2

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    add-long/2addr v0, p0

    :cond_0
    return-wide v0
.end method

.method public final getTemporaryDirectory()Ljava/io/File;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/storage/StorageUtils;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v0, "getContext().filesDir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isCurrentStorageInternal()Z
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final setCurrentStorage(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/storage/StorageUtils;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f1101c4

    goto :goto_0

    :cond_0
    const p1, 0x7f110181

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.getString(if (st\u2026ternal_storage\n        })"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f110123

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "context.getString(R.string.dialog_switch_storage)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "java.lang.String.format(format, *args)"

    invoke-static {v1, v0, p0, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline1;->m([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 6
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method
