.class public final Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;
.super Ljava/lang/Object;
.source "BgCaptureRecordDao_Impl.java"

# interfaces
.implements Lcom/motorola/camera/background/provider/BgCaptureRecordDao;


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __insertionAdapterOfBgCaptureRecord:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/motorola/camera/background/provider/BgCaptureRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final __preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

.field public final __preparedStmtOfUpdate:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$1;-><init>(Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__insertionAdapterOfBgCaptureRecord:Landroidx/room/EntityInsertionAdapter;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 6
    new-instance v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$4;-><init>(Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    new-instance v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$6;-><init>(Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__preparedStmtOfUpdate:Landroidx/room/SharedSQLiteStatement;

    .line 9
    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public deleteById(J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 5
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 6
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    const/4 p1, 0x0

    .line 7
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p2

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 10
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    .line 12
    iget-object v1, p0, Landroidx/room/SharedSQLiteStatement;->mStmt:Landroidx/sqlite/db/SupportSQLiteStatement;

    if-ne v0, v1, :cond_0

    .line 13
    iget-object p0, p0, Landroidx/room/SharedSQLiteStatement;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return p2

    :catchall_0
    move-exception p2

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 15
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    .line 17
    iget-object v1, p0, Landroidx/room/SharedSQLiteStatement;->mStmt:Landroidx/sqlite/db/SupportSQLiteStatement;

    if-ne v0, v1, :cond_1

    .line 18
    iget-object p0, p0, Landroidx/room/SharedSQLiteStatement;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    :cond_1
    throw p2
.end method

.method public insert(Lcom/motorola/camera/background/provider/BgCaptureRecord;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "record"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 4
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__insertionAdapterOfBgCaptureRecord:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 8
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 10
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 11
    throw p1
.end method

.method public selectAll()Ljava/util/List;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/provider/BgCaptureRecord;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM bgCaptureRecord_table"

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 2
    iget-object v3, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    .line 4
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "mediaStoreUri"

    .line 5
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "ts"

    .line 6
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "expirationTime"

    .line 7
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "clientId"

    .line 8
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "sourceId"

    .line 9
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "targetId"

    .line 10
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "jobNum"

    .line 11
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "taskNum"

    .line 12
    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "priority"

    .line 13
    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v14, "useFifo"

    .line 14
    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "comment"

    .line 15
    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "progressLevel"

    .line 16
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "progressMax"

    .line 17
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string/jumbo v1, "thumbnailData"

    .line 18
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string/jumbo v1, "thumbnailUpdateTime"

    .line 19
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v19, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 22
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 23
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v23, 0x0

    goto :goto_1

    .line 24
    :cond_0
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    .line 25
    :goto_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 26
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 27
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 28
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 29
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 30
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 31
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 32
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 33
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move/from16 v36, v3

    goto :goto_2

    :cond_1
    const/16 v36, 0x0

    .line 34
    :goto_2
    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v37, 0x0

    goto :goto_3

    .line 35
    :cond_2
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v37, v3

    .line 36
    :goto_3
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    move/from16 v3, v19

    .line 37
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    move/from16 v19, v0

    move/from16 v0, v17

    .line 38
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_3

    move/from16 v17, v0

    move/from16 v0, v18

    const/16 v40, 0x0

    goto :goto_4

    .line 39
    :cond_3
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    move-object/from16 v40, v17

    move/from16 v17, v0

    move/from16 v0, v18

    .line 40
    :goto_4
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    move/from16 v18, v0

    .line 41
    new-instance v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v42}, Lcom/motorola/camera/background/provider/BgCaptureRecord;-><init>(JLjava/lang/String;JJIIIJJIZLjava/lang/String;II[BJ)V

    .line 42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v19

    move/from16 v19, v3

    goto/16 :goto_0

    .line 43
    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 44
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .line 45
    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 46
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 47
    throw v0
.end method

.method public update(J[BJ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "thumbnailData",
            "thumbnailUpdateTime"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__preparedStmtOfUpdate:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 3
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    :goto_0
    const/4 p3, 0x2

    .line 5
    invoke-interface {v0, p3, p4, p5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p3, 0x3

    .line 6
    invoke-interface {v0, p3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 8
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 9
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    const/4 p1, 0x0

    .line 10
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p2

    .line 11
    iget-object p3, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p3, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 13
    invoke-virtual {p3}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__preparedStmtOfUpdate:Landroidx/room/SharedSQLiteStatement;

    .line 15
    iget-object p3, p0, Landroidx/room/SharedSQLiteStatement;->mStmt:Landroidx/sqlite/db/SupportSQLiteStatement;

    if-ne v0, p3, :cond_1

    .line 16
    iget-object p0, p0, Landroidx/room/SharedSQLiteStatement;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return p2

    :catchall_0
    move-exception p2

    .line 17
    iget-object p3, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    invoke-virtual {p3}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__preparedStmtOfUpdate:Landroidx/room/SharedSQLiteStatement;

    .line 20
    iget-object p3, p0, Landroidx/room/SharedSQLiteStatement;->mStmt:Landroidx/sqlite/db/SupportSQLiteStatement;

    if-ne v0, p3, :cond_2

    .line 21
    iget-object p0, p0, Landroidx/room/SharedSQLiteStatement;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    :cond_2
    throw p2
.end method
