.class public Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCameraData:Lcom/motorola/camera/CameraData;

.field public final mScreenSize:Landroid/graphics/Point;

.field public final mSize:Landroid/util/Size;

.field public final mThumbnailList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;",
            ">;"
        }
    .end annotation
.end field

.field public final mThumbnailManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->this$0:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance p1, Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailList:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailManager:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {p3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;->getCameraData()Lcom/motorola/camera/CameraData;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    .line 7
    invoke-interface {p3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;->getSize()Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mSize:Landroid/util/Size;

    .line 8
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/zzbg;->getMainDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mScreenSize:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mSize:Landroid/util/Size;

    invoke-static {p1}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result p1

    const/4 v2, 0x0

    const-string v3, "ThumbnailManager"

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mScreenSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int/2addr v5, p1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mSize:Landroid/util/Size;

    .line 5
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/2addr v5, p1

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mScreenSize:Landroid/graphics/Point;

    invoke-static {p1, v6, p0, v5}, Lcom/motorola/camera/Util;->loadThumbnail(Lcom/motorola/camera/CameraData;Landroid/util/Size;Landroid/graphics/Point;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto/16 :goto_1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result p1

    if-ne p1, v4, :cond_2

    .line 9
    new-instance p1, Landroid/util/Size;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mScreenSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-direct {p1, v6, v5}, Landroid/util/Size;-><init>(II)V

    .line 10
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_1

    const/16 v5, 0x5a

    goto :goto_0

    :cond_1
    move v5, v2

    .line 11
    :goto_0
    invoke-static {p1, v5}, Lcom/motorola/camera/utility/SizeUtility;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object p1

    .line 12
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    .line 13
    iget-object v6, v6, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v7, "FILE_PATH"

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/FormatHolder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/motorola/camera/Util;->createVideoThumbnail(Ljava/io/File;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 15
    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-static {p0, p1}, Lcom/motorola/camera/Util;->loadThumbnail(Lcom/motorola/camera/CameraData;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-static {p1}, Lcom/motorola/camera/Util;->loadThumbnail(Lcom/motorola/camera/CameraData;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 18
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".dng"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p1, p0}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, p1

    :goto_1
    if-eqz p0, :cond_5

    .line 20
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->isBitmapSafe(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 21
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->createSafeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, p1

    .line 23
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 24
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p1, :cond_6

    .line 25
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "LoadBitmapTask.doInBackground dur:%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object p0
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->this$0:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mSize:Landroid/util/Size;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->getTaskKey(Landroid/net/Uri;Landroid/util/Size;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    if-eqz p0, :cond_5

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadBitmapTaskMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 8
    monitor-exit p0

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_4

    .line 9
    :try_start_1
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    .line 10
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v2

    if-nez v2, :cond_2

    .line 11
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->PHOTO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->VIDEO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    .line 12
    :goto_0
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailList:Ljava/util/Set;

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;

    if-eqz v3, :cond_3

    .line 14
    invoke-interface {v3, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;->setBitmap(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadBitmapTaskMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_2
    return-void
.end method
