.class public final Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;
.super Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;
.source "BgCaptureRecordDataBase_Impl.java"


# instance fields
.field public volatile _bgCaptureRecordDao:Lcom/motorola/camera/background/provider/BgCaptureRecordDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;-><init>()V

    return-void
.end method


# virtual methods
.method public captureRecordDao()Lcom/motorola/camera/background/provider/BgCaptureRecordDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;->_bgCaptureRecordDao:Lcom/motorola/camera/background/provider/BgCaptureRecordDao;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;->_bgCaptureRecordDao:Lcom/motorola/camera/background/provider/BgCaptureRecordDao;

    return-object p0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;->_bgCaptureRecordDao:Lcom/motorola/camera/background/provider/BgCaptureRecordDao;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;

    invoke-direct {v0, p0}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;->_bgCaptureRecordDao:Lcom/motorola/camera/background/provider/BgCaptureRecordDao;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;->_bgCaptureRecordDao:Lcom/motorola/camera/background/provider/BgCaptureRecordDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "bgCaptureRecord_table"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$1;-><init>(Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;I)V

    const-string p0, "05137d4f629c59e4b0ee3e70048ba1d8"

    const-string v2, "68be0534a0050a469f1b030ad256a60f"

    invoke-direct {v0, p1, v1, p0, v2}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 3
    new-instance v3, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    invoke-direct {v3, p0, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Z)V

    .line 4
    iget-object p0, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p0, v3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must set a non-null context to create the configuration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRequiredTypeConverters()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-class v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method