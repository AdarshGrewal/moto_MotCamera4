.class public Landroidx/room/DatabaseConfiguration;
.super Ljava/lang/Object;
.source "DatabaseConfiguration.java"


# instance fields
.field public final allowDestructiveMigrationOnDowngrade:Z

.field public final allowMainThreadQueries:Z

.field public final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public final context:Landroid/content/Context;

.field public final journalMode:I

.field public final migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

.field public final name:Ljava/lang/String;

.field public final queryExecutor:Ljava/util/concurrent/Executor;

.field public final requireMigration:Z

.field public final sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

.field public final typeConverters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "name",
            "sqliteOpenHelperFactory",
            "migrationContainer",
            "callbacks",
            "allowMainThreadQueries",
            "journalMode",
            "queryExecutor",
            "transactionExecutor",
            "multiInstanceInvalidation",
            "requireMigration",
            "allowDestructiveMigrationOnDowngrade",
            "migrationNotRequiredFrom",
            "copyFromAssetPath",
            "copyFromFile",
            "copyFromInputStream",
            "prepackagedDatabaseCallback",
            "typeConverters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
            "Landroidx/room/RoomDatabase$MigrationContainer;",
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;Z",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p3

    .line 2
    iput-object v1, v0, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    move-object v1, p1

    .line 3
    iput-object v1, v0, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    move v1, p6

    .line 7
    iput-boolean v1, v0, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    move v1, p7

    .line 8
    iput v1, v0, Landroidx/room/DatabaseConfiguration;->journalMode:I

    move-object v1, p8

    .line 9
    iput-object v1, v0, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    move v1, p11

    .line 10
    iput-boolean v1, v0, Landroidx/room/DatabaseConfiguration;->requireMigration:Z

    move v1, p12

    .line 11
    iput-boolean v1, v0, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationOnDowngrade:Z

    if-nez p17, :cond_0

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p17

    :goto_0
    iput-object v1, v0, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isMigrationRequired(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromVersion",
            "toVersion"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget-boolean p1, p0, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationOnDowngrade:Z

    if-eqz p1, :cond_1

    return v1

    .line 2
    :cond_1
    iget-boolean p0, p0, Landroidx/room/DatabaseConfiguration;->requireMigration:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method
