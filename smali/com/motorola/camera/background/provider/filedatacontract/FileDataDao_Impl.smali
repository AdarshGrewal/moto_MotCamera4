.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;
.super Ljava/lang/Object;
.source "FileDataDao_Impl.java"

# interfaces
.implements Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao;


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __insertionAdapterOfFileData:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/motorola/camera/background/provider/filedatacontract/FileData;",
            ">;"
        }
    .end annotation
.end field

.field public final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

.field public final __preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

.field public final __updateAdapterOfFileData:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/motorola/camera/background/provider/filedatacontract/FileData;",
            ">;"
        }
    .end annotation
.end field


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
    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$1;-><init>(Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__insertionAdapterOfFileData:Landroidx/room/EntityInsertionAdapter;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$3;-><init>(Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__updateAdapterOfFileData:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 6
    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$4;-><init>(Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$6;-><init>(Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public deleteAll()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 4
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 5
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 9
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    .line 11
    iget-object v2, p0, Landroidx/room/SharedSQLiteStatement;->mStmt:Landroidx/sqlite/db/SupportSQLiteStatement;

    if-ne v0, v2, :cond_0

    .line 12
    iget-object p0, p0, Landroidx/room/SharedSQLiteStatement;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return v1

    :catchall_0
    move-exception v1

    .line 13
    iget-object v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 14
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 16
    throw v1
.end method

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
    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

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
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 10
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

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
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 15
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

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

.method public insert(Lcom/motorola/camera/background/provider/filedatacontract/FileData;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 4
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__insertionAdapterOfFileData:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 8
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 10
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 11
    throw p1
.end method

.method public selectAllCursors()Landroid/database/Cursor;
    .locals 2

    const-string v0, "SELECT * FROM fileData_table"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public selectByIdCursor(J)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    const-string v0, "SELECT * FROM fileData_table WHERE id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public update(Lcom/motorola/camera/background/provider/filedatacontract/FileData;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 4
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__updateAdapterOfFileData:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 8
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return p1

    :catchall_0
    move-exception p1

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 10
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 11
    throw p1
.end method
