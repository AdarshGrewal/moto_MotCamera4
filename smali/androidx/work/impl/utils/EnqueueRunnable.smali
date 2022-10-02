.class public Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "EnqueueRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mOperation:Landroidx/work/impl/OperationImpl;

.field public final mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    .line 1
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkContinuationImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workContinuation"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 3
    new-instance p1, Landroidx/work/impl/OperationImpl;

    invoke-direct {p1}, Landroidx/work/impl/OperationImpl;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    return-void
.end method

.method public static processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workContinuation"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/work/impl/WorkContinuationImpl;->mParents:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/impl/WorkContinuationImpl;

    .line 3
    iget-boolean v6, v5, Landroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    if-nez v6, :cond_0

    .line 4
    invoke-static {v5}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    .line 6
    iget-object v5, v5, Landroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/List;

    const-string v9, ", "

    .line 7
    invoke-static {v9, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v2

    const-string v5, "Already enqueued work ids (%s)."

    .line 8
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Throwable;

    invoke-virtual {v6, v7, v5, v8}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move v4, v2

    .line 9
    :cond_2
    invoke-static/range {p0 .. p0}, Landroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/Set;

    move-result-object v1

    .line 10
    iget-object v5, v0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 11
    iget-object v6, v0, Landroidx/work/impl/WorkContinuationImpl;->mWork:Ljava/util/List;

    new-array v7, v2, [Ljava/lang/String;

    .line 12
    invoke-interface {v1, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 13
    iget-object v7, v0, Landroidx/work/impl/WorkContinuationImpl;->mName:Ljava/lang/String;

    .line 14
    iget v8, v0, Landroidx/work/impl/WorkContinuationImpl;->mExistingWorkPolicy:I

    .line 15
    sget-object v9, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    sget-object v11, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    sget-object v12, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    sget-object v13, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 17
    iget-object v10, v5, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    if-eqz v1, :cond_3

    .line 18
    array-length v2, v1

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_8

    .line 19
    array-length v3, v1

    move/from16 v17, v4

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    :goto_2
    if-ge v4, v3, :cond_9

    move/from16 v21, v3

    aget-object v3, v1, v4

    .line 20
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    if-nez v0, :cond_4

    .line 21
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v4, v2

    const-string v3, "Prerequisite %s doesn\'t exist; not enqueuing"

    .line 22
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    .line 23
    invoke-virtual {v0, v1, v3, v4}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 24
    :cond_4
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    if-ne v0, v11, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    and-int v20, v20, v3

    if-ne v0, v13, :cond_6

    const/16 v19, 0x1

    goto :goto_4

    :cond_6
    if-ne v0, v12, :cond_7

    const/16 v18, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v21

    goto :goto_2

    :cond_8
    move/from16 v17, v4

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 25
    :cond_9
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_a

    if-nez v2, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_1c

    .line 26
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v3

    check-cast v3, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v3, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 27
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    const/4 v4, 0x3

    if-eq v8, v4, :cond_10

    const/4 v4, 0x4

    if-ne v8, v4, :cond_b

    goto :goto_8

    :cond_b
    const/4 v4, 0x2

    if-ne v8, v4, :cond_e

    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 29
    iget-object v8, v8, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    if-eq v8, v9, :cond_d

    sget-object v11, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v8, v11, :cond_c

    :cond_d
    :goto_6
    const/4 v2, 0x0

    goto/16 :goto_18

    .line 30
    :cond_e
    new-instance v4, Landroidx/work/impl/utils/CancelWorkRunnable$3;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v7, v8}, Landroidx/work/impl/utils/CancelWorkRunnable$3;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Z)V

    .line 31
    invoke-virtual {v4}, Landroidx/work/impl/utils/CancelWorkRunnable;->run()V

    .line 32
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v4

    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 34
    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    move-object v8, v4

    check-cast v8, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v8, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    move/from16 v22, v0

    move v0, v2

    move-object/from16 v24, v9

    const/4 v2, 0x1

    const/4 v9, 0x0

    goto/16 :goto_11

    .line 35
    :cond_10
    :goto_8
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v2

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/impl/model/WorkSpec$IdAndState;

    move-object/from16 v21, v3

    .line 38
    iget-object v3, v5, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    move/from16 v22, v0

    move-object v0, v2

    check-cast v0, Landroidx/work/impl/model/DependencyDao_Impl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v23, v2

    const-string v2, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    move-object/from16 v24, v9

    const/4 v9, 0x1

    .line 39
    invoke-static {v2, v9}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v3, :cond_11

    .line 40
    invoke-virtual {v2, v9}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_a

    .line 41
    :cond_11
    invoke-virtual {v2, v9, v3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 42
    :goto_a
    iget-object v3, v0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 43
    iget-object v0, v0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v2, v9, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 44
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 45
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_b

    :cond_12
    move v0, v9

    .line 46
    :goto_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 47
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    if-nez v0, :cond_16

    .line 48
    iget-object v0, v5, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    if-ne v0, v11, :cond_13

    const/4 v2, 0x1

    goto :goto_c

    :cond_13
    move v2, v9

    :goto_c
    and-int v2, v20, v2

    if-ne v0, v13, :cond_14

    const/16 v19, 0x1

    goto :goto_d

    :cond_14
    if-ne v0, v12, :cond_15

    const/16 v18, 0x1

    .line 49
    :cond_15
    :goto_d
    iget-object v0, v5, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v20, v2

    :cond_16
    move-object/from16 v3, v21

    move/from16 v0, v22

    move-object/from16 v2, v23

    move-object/from16 v9, v24

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 50
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 51
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 52
    throw v0

    :cond_17
    move/from16 v22, v0

    move-object/from16 v24, v9

    const/4 v0, 0x4

    const/4 v9, 0x0

    if-ne v8, v0, :cond_1a

    if-nez v18, :cond_18

    if-eqz v19, :cond_1a

    .line 53
    :cond_18
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    .line 54
    check-cast v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v0, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 55
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 56
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    goto :goto_e

    .line 57
    :cond_19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move v2, v9

    move/from16 v19, v2

    goto :goto_f

    :cond_1a
    move/from16 v2, v18

    .line 58
    :goto_f
    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    .line 59
    array-length v0, v1

    move/from16 v18, v2

    if-lez v0, :cond_1b

    const/4 v2, 0x1

    goto :goto_10

    :cond_1b
    move v2, v9

    goto :goto_10

    :cond_1c
    move/from16 v22, v0

    move-object/from16 v24, v9

    const/4 v9, 0x0

    :goto_10
    move v0, v2

    move v2, v9

    .line 60
    :goto_11
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/WorkRequest;

    .line 61
    iget-object v5, v4, Landroidx/work/WorkRequest;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    if-eqz v0, :cond_1f

    if-nez v20, :cond_1f

    if-eqz v19, :cond_1d

    .line 62
    iput-object v13, v5, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_13

    :cond_1d
    if-eqz v18, :cond_1e

    .line 63
    iput-object v12, v5, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_13

    .line 64
    :cond_1e
    sget-object v6, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    iput-object v6, v5, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_13

    .line 65
    :cond_1f
    invoke-virtual {v5}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v6

    if-nez v6, :cond_20

    .line 66
    iput-wide v14, v5, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    :goto_13
    move-object v6, v10

    goto :goto_14

    :cond_20
    move-object v6, v10

    const-wide/16 v9, 0x0

    .line 67
    iput-wide v9, v5, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 68
    :goto_14
    iget-object v8, v5, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    move-object/from16 v9, v24

    if-ne v8, v9, :cond_21

    const/4 v2, 0x1

    .line 69
    :cond_21
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v8

    check-cast v8, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 70
    iget-object v10, v8, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v10}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 71
    iget-object v10, v8, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 72
    invoke-virtual {v10}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 73
    invoke-virtual {v10}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 74
    :try_start_1
    iget-object v10, v8, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v10, v5}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 75
    iget-object v5, v8, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 76
    iget-object v5, v8, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 77
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    if-eqz v0, :cond_22

    .line 78
    array-length v5, v1

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v5, :cond_22

    aget-object v10, v1, v8

    .line 79
    new-instance v11, Landroidx/work/impl/model/Dependency;

    move/from16 v16, v0

    invoke-virtual {v4}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0, v10}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/work/impl/model/DependencyDao_Impl;

    .line 81
    iget-object v0, v10, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 82
    iget-object v0, v10, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 83
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 84
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 85
    :try_start_2
    iget-object v0, v10, Landroidx/work/impl/model/DependencyDao_Impl;->__insertionAdapterOfDependency:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, v11}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 86
    iget-object v0, v10, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    iget-object v0, v10, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 88
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v16

    goto :goto_15

    :catchall_1
    move-exception v0

    .line 89
    iget-object v1, v10, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 90
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 91
    throw v0

    :cond_22
    move/from16 v16, v0

    .line 92
    iget-object v0, v4, Landroidx/work/WorkRequest;->mTags:Ljava/util/Set;

    .line 93
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 94
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao;

    move-result-object v8

    new-instance v10, Landroidx/work/impl/model/WorkTag;

    invoke-virtual {v4}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v5, v11}, Landroidx/work/impl/model/WorkTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v8, Landroidx/work/impl/model/WorkTagDao_Impl;

    .line 95
    iget-object v5, v8, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 96
    iget-object v5, v8, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 97
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 98
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 99
    :try_start_3
    iget-object v5, v8, Landroidx/work/impl/model/WorkTagDao_Impl;->__insertionAdapterOfWorkTag:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v5, v10}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 100
    iget-object v5, v8, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 101
    iget-object v5, v8, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 102
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    goto :goto_16

    :catchall_2
    move-exception v0

    .line 103
    iget-object v1, v8, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 104
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 105
    throw v0

    :cond_23
    if-eqz v22, :cond_24

    .line 106
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->workNameDao()Landroidx/work/impl/model/WorkNameDao;

    move-result-object v0

    new-instance v5, Landroidx/work/impl/model/WorkName;

    invoke-virtual {v4}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v7, v4}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Landroidx/work/impl/model/WorkNameDao_Impl;

    .line 107
    iget-object v0, v4, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 108
    iget-object v0, v4, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 109
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 110
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 111
    :try_start_4
    iget-object v0, v4, Landroidx/work/impl/model/WorkNameDao_Impl;->__insertionAdapterOfWorkName:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, v5}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 112
    iget-object v0, v4, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 113
    iget-object v0, v4, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 114
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    goto :goto_17

    :catchall_3
    move-exception v0

    .line 115
    iget-object v1, v4, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 116
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 117
    throw v0

    :cond_24
    :goto_17
    move-object v10, v6

    move-object/from16 v24, v9

    move/from16 v0, v16

    const/4 v9, 0x0

    goto/16 :goto_12

    :catchall_4
    move-exception v0

    .line 118
    iget-object v1, v8, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 119
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 120
    throw v0

    :cond_25
    :goto_18
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 121
    iput-boolean v1, v0, Landroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    or-int v0, v17, v2

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Landroidx/work/impl/WorkContinuationImpl;->hasCycles(Landroidx/work/impl/WorkContinuationImpl;Ljava/util/Set;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 4
    iget-object v0, v0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 5
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 6
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 7
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v2, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-static {v2}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v2

    .line 9
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    if-eqz v2, :cond_0

    .line 11
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 12
    iget-object v0, v0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 13
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mContext:Landroid/content/Context;

    .line 14
    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v2, v1}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 15
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 16
    iget-object v0, v0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 17
    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 18
    iget-object v2, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 19
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    .line 20
    invoke-static {v1, v2, v0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    sget-object v1, Landroidx/work/Operation;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {v0, v1}, Landroidx/work/impl/OperationImpl;->setState(Landroidx/work/Operation$State;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 22
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 23
    throw v1

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "WorkContinuation has cycles (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    aput-object v4, v1, v3

    .line 25
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 26
    iget-object p0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    new-instance v1, Landroidx/work/Operation$State$FAILURE;

    invoke-direct {v1, v0}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Landroidx/work/impl/OperationImpl;->setState(Landroidx/work/Operation$State;)V

    :goto_0
    return-void
.end method
