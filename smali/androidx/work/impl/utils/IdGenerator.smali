.class public Landroidx/work/impl/utils/IdGenerator;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# instance fields
.field public final mWorkDatabase:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workDatabase"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/utils/IdGenerator;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final nextId(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 2
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Landroidx/work/impl/model/PreferenceDao;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/model/PreferenceDao_Impl;

    invoke-virtual {v0, p1}, Landroidx/work/impl/model/PreferenceDao_Impl;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 6
    :goto_1
    iget-object v2, p0, Landroidx/work/impl/utils/IdGenerator;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Landroidx/work/impl/model/PreferenceDao;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/model/Preference;

    int-to-long v4, v1

    invoke-direct {v3, p1, v4, v5}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;J)V

    check-cast v2, Landroidx/work/impl/model/PreferenceDao_Impl;

    invoke-virtual {v2, v3}, Landroidx/work/impl/model/PreferenceDao_Impl;->insertPreference(Landroidx/work/impl/model/Preference;)V

    .line 7
    iget-object p1, p0, Landroidx/work/impl/utils/IdGenerator;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p0, p0, Landroidx/work/impl/utils/IdGenerator;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 9
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return v0

    :catchall_0
    move-exception p1

    .line 10
    iget-object p0, p0, Landroidx/work/impl/utils/IdGenerator;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 11
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 12
    throw p1
.end method

.method public nextJobSchedulerIdWithRange(II)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "minInclusive",
            "maxInclusive"
        }
    .end annotation

    .line 1
    const-class v0, Landroidx/work/impl/utils/IdGenerator;

    monitor-enter v0

    :try_start_0
    const-string v1, "next_job_scheduler_id"

    .line 2
    invoke-virtual {p0, v1}, Landroidx/work/impl/utils/IdGenerator;->nextId(Ljava/lang/String;)I

    move-result v1

    if-lt v1, p1, :cond_1

    if-le v1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "next_job_scheduler_id"

    add-int/lit8 v1, p1, 0x1

    .line 3
    iget-object p0, p0, Landroidx/work/impl/utils/IdGenerator;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Landroidx/work/impl/model/PreferenceDao;

    move-result-object p0

    new-instance v2, Landroidx/work/impl/model/Preference;

    int-to-long v3, v1

    invoke-direct {v2, p2, v3, v4}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;J)V

    check-cast p0, Landroidx/work/impl/model/PreferenceDao_Impl;

    invoke-virtual {p0, v2}, Landroidx/work/impl/model/PreferenceDao_Impl;->insertPreference(Landroidx/work/impl/model/Preference;)V

    .line 4
    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
