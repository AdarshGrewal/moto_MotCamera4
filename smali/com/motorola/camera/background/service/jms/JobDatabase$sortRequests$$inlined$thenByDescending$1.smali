.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$sortRequests$$inlined$thenByDescending$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/service/jms/JobDatabase;->sortRequests(Ljava/util/List;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$1\n+ 2 JobDatabase.kt\ncom/motorola/camera/background/service/jms/JobDatabase\n*L\n1#1,320:1\n440#2:321\n*E\n"
.end annotation


# instance fields
.field public final synthetic $this_thenByDescending:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$sortRequests$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$sortRequests$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    check-cast p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    const/4 p0, 0x0

    if-nez p2, :cond_1

    move-object p2, p0

    goto :goto_0

    .line 3
    :cond_1
    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->timeStamp:J

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :goto_0
    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    if-nez p1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-wide p0, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->timeStamp:J

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_1
    invoke-static {p2, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_2
    return p0
.end method
