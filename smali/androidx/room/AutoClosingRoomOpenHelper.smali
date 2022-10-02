.class public final Landroidx/room/AutoClosingRoomOpenHelper;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelper.java"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.implements Landroidx/room/DelegatingOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;,
        Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;
    }
.end annotation


# instance fields
.field public final mAutoClosingDb:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

.field public final mDelegateOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;


# virtual methods
.method public close()V
    .locals 0

    const/4 p0, 0x0

    .line 1
    :try_start_0
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 2
    throw p0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper;->mDelegateOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper;->mDelegateOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object p0
.end method

.method public getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper;->mAutoClosingDb:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper;->mDelegateOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
