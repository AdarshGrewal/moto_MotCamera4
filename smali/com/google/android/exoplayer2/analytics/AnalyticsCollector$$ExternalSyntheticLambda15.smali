.class public final synthetic Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda15;

.field public static final synthetic INSTANCE$androidx$room$AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$$InternalSyntheticLambda$0$534f5b107d27902f077def9fa42d048b55e80215171a5e6456d9060dee76a3b3$0:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda15;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda15;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda15;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda15;->INSTANCE$androidx$room$AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$$InternalSyntheticLambda$0$534f5b107d27902f077def9fa42d048b55e80215171a5e6456d9060dee76a3b3$0:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda15;

    new-instance v0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda15;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda15;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda15;->INSTANCE:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda15;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    return-void
.end method
