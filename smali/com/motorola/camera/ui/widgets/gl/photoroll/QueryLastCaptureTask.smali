.class public Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;
.super Landroid/os/AsyncTask;
.source "QueryLastCaptureTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$LastCaptureHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/motorola/camera/CameraData;",
        ">;"
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public final mEventListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mLastCaptureHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$LastCaptureHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

    const-string v1, "_id"

    const-string v2, "datetaken"

    const-string v3, "date_modified"

    const-string/jumbo v4, "volume_name"

    const-string v5, "_display_name"

    const-string/jumbo v6, "width"

    const-string v7, "_data"

    const-string v8, "height"

    const-string v9, "orientation"

    .line 2
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/EventListener;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$LastCaptureHandler;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->mLastCaptureHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v1, p0

    .line 1
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    const-string v2, "date_modified"

    const-string v3, "datetaken"

    const-string v4, "_data"

    const-string v5, "_display_name"

    const-string v6, "_id"

    const-string v7, "height"

    const-string/jumbo v8, "width"

    const-string v9, "orientation"

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->queryLastCapture(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_1

    .line 5
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 6
    invoke-virtual {v1, v11}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->queryPrimary(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v11

    .line 7
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 8
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 9
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 10
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 11
    invoke-static {v12, v13, v14}, Lcom/motorola/camera/Util;->getSize(III)Landroid/util/Size;

    move-result-object v12

    .line 12
    new-instance v25, Lcom/motorola/camera/CameraData;

    .line 13
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v13, v13

    .line 14
    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 15
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 16
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 17
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 18
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 19
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v21

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v22

    const/16 v24, 0x0

    move-object/from16 v13, v25

    invoke-direct/range {v13 .. v24}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object/from16 v25, v10

    goto :goto_0

    :cond_2
    move-object v11, v10

    move-object/from16 v25, v11

    :goto_0
    if-eqz v11, :cond_4

    .line 20
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v11, v10

    .line 21
    :goto_1
    :try_start_2
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->handleSqlLiteException(Landroid/database/sqlite/SQLiteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v11, :cond_3

    .line 22
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v25, v10

    .line 23
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_5

    .line 24
    :cond_5
    :try_start_3
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->queryLastCapture(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 26
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 27
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 28
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 29
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 30
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 31
    invoke-static {v8, v7, v9}, Lcom/motorola/camera/Util;->getSize(III)Landroid/util/Size;

    move-result-object v7

    .line 32
    new-instance v8, Lcom/motorola/camera/CameraData;

    .line 33
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v12, v6

    .line 34
    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 35
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 36
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 37
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 38
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 39
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v21

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v22

    const/16 v24, 0x1

    move-object v13, v8

    invoke-direct/range {v13 .. v24}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :cond_6
    move-object v8, v10

    :goto_3
    if-eqz v11, :cond_8

    .line 40
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    .line 41
    :try_start_4
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->handleSqlLiteException(Landroid/database/sqlite/SQLiteException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v11, :cond_7

    .line 42
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v8, v10

    .line 43
    :cond_8
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_5

    :cond_9
    const-wide/16 v0, 0x0

    if-eqz v25, :cond_c

    if-eqz v8, :cond_c

    .line 44
    invoke-virtual/range {v25 .. v25}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_a

    invoke-virtual {v8}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_b

    .line 45
    :cond_a
    invoke-virtual/range {v25 .. v25}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_d

    .line 46
    :cond_b
    invoke-virtual/range {v25 .. v25}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_c

    invoke-virtual {v8}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_c

    .line 47
    invoke-virtual/range {v25 .. v25}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_d

    :cond_c
    if-eqz v25, :cond_e

    if-nez v8, :cond_e

    :cond_d
    move-object/from16 v10, v25

    goto :goto_5

    :cond_e
    if-eqz v25, :cond_11

    .line 48
    invoke-virtual/range {v25 .. v25}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_f

    invoke-virtual {v8}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_10

    .line 49
    :cond_f
    invoke-virtual/range {v25 .. v25}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_12

    .line 50
    :cond_10
    invoke-virtual/range {v25 .. v25}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_11

    invoke-virtual {v8}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_11

    .line 51
    invoke-virtual/range {v25 .. v25}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v0

    invoke-virtual {v8}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    :cond_11
    if-nez v25, :cond_13

    if-eqz v8, :cond_13

    :cond_12
    move-object v10, v8

    :cond_13
    :goto_5
    return-object v10

    :goto_6
    if-eqz v11, :cond_14

    .line 52
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_14
    throw v0

    :catchall_2
    move-exception v0

    move-object v10, v11

    :goto_7
    if-eqz v10, :cond_15

    .line 54
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_15
    throw v0
.end method

.method public final handleSqlLiteException(Landroid/database/sqlite/SQLiteException;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->mEventListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/EventListener;

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/motorola/camera/CameraData;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->mLastCaptureHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$LastCaptureHandler;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$LastCaptureHandler;->handleLastCapture(Lcom/motorola/camera/CameraData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final queryLastCapture(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 4

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getMediaVolumes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/storage/MediaVolume;

    .line 3
    sget-object v2, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    const-string v2, "mediaVolume"

    .line 4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v3, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    .line 6
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "DCIM/Camera"

    const-string v3, "relativePath"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getPathFile(Lcom/motorola/camera/storage/MediaVolume;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file.path"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "ROOT"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 11
    array-length v1, p0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const-string v3, " OR "

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, "bucket_id = ?"

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android:query-arg-sql-selection"

    .line 17
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android:query-arg-sql-selection-args"

    .line 18
    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p0, "android:query-arg-sql-sort-order"

    const-string v0, "CASE WHEN datetaken NOT NULL THEN datetaken ELSE date_modified*1000 END DESC"

    .line 19
    invoke-virtual {v1, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "android:query-arg-sql-limit"

    const-string v0, "1"

    .line 20
    invoke-virtual {v1, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->PROJECTION:[Ljava/lang/String;

    invoke-static {p1, p0, v1}, Lcom/motorola/camera/storage/MediaStoreClient;->queryOrNull(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public final queryPrimary(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 5

    const-string v0, "_display_name"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lcom/motorola/camera/BurstShotFileUtils;->isPrimaryBySuffix(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "volume_name"

    .line 3
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->PROJECTION:[Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/motorola/camera/provider/photos/PhotosProvider;->queryFilesOnVolume(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 6
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 7
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/motorola/camera/BurstShotFileUtils;->isPrimaryBySuffix(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_1
    move-object p0, v1

    move-object v1, p1

    :goto_0
    if-ne v1, p1, :cond_2

    if-eqz p0, :cond_3

    .line 10
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object p1, v1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->handleSqlLiteException(Landroid/database/sqlite/SQLiteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 13
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    return-object p1

    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 14
    :cond_5
    throw p0
.end method
