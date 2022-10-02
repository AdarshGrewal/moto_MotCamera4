.class public Lcom/motorola/camera/analytics/UserExitAppEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "UserExitAppEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;
    }
.end annotation


# static fields
.field public static final APP_TIME:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAPTURED_PICS:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAPTURED_VIDS:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXITTYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HELP_LAUNCHED:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_STATUS:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MCF_QUEUE_SIZE:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODETUT:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_ADD:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final MODE_CAROUSEL_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_LAUNCH:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_REMOVE:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final MODE_SORT:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_SUM:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_OPENED:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZOOM_PINCH:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZOOM_SCROLL:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "EXITTYP"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 2
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "APPTIME"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->APP_TIME:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 3
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "ERRTYP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 4
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "SETTINGSLAUNCH"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->SETTINGS_OPENED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 5
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "NUMPIC"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_PICS:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 6
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "NUMVID"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_VIDS:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 7
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "LENSSTAT"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->LENS_STATUS:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 8
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "OUTQUSIZ"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MCF_QUEUE_SIZE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 9
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "PINCHZOOM"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_PINCH:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 10
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "SCROLLZOOM"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_SCROLL:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 11
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "HELPLAUNCH"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->HELP_LAUNCHED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 12
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

    const-string v1, "MODEADD"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_ADD:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 13
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

    const-string v1, "MODEREMOVE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_REMOVE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 14
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "MODELAUNCH"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_LAUNCH:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 15
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "MODESORT"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SORT:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 16
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "MODESUM"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SUM:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 17
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "MODETUT"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODETUT:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_CAROUSEL_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/analytics/LogEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public addData(Lcom/google/android/exoplayer2/FormatHolder;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 9

    .line 1
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 2
    iget-object p3, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    check-cast p3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 6
    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 7
    iget-object v1, v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/FormatHolder;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->ERROR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 9
    :cond_0
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->APP_TIME:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    check-cast v1, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 11
    iget-object v4, v1, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->mName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 12
    iget-object v7, p1, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Ljava/lang/Object;

    check-cast v7, [B

    monitor-enter v7

    .line 13
    :try_start_1
    iget-object v8, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v8, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v2, v4

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 15
    invoke-virtual {v1, p2, v2}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    .line 16
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->MCF_QUEUE_SIZE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v1, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 17
    iget-object v2, v1, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 18
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_PICS:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v1, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 19
    iget-object v2, v1, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 20
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_VIDS:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v1, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 21
    iget-object v2, v1, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 22
    iget-object v1, v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/FormatHolder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/String;)V

    if-nez p3, :cond_1

    const-string p3, "MISC"

    goto :goto_0

    .line 23
    :cond_1
    iget-object p3, p3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->mCheckinName:Ljava/lang/String;

    .line 24
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 25
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->HELP_LAUNCHED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 26
    iget-object p3, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 27
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->SETTINGS_OPENED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 28
    iget-object p3, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 29
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_PINCH:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 30
    iget-object p3, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 31
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_SCROLL:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 32
    iget-object p3, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 33
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_ADD:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;->record(Landroid/os/Bundle;Lcom/google/android/exoplayer2/FormatHolder;)V

    .line 34
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_REMOVE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;->record(Landroid/os/Bundle;Lcom/google/android/exoplayer2/FormatHolder;)V

    .line 35
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_LAUNCH:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 36
    iget-object p3, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 37
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SORT:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 38
    iget-object p3, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 39
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SUM:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 40
    iget-object p3, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 41
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODETUT:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    const-string p3, "TUTORIAL_OPENED_MODE_LIST"

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/FormatHolder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 42
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 43
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->LENS_STATUS:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 44
    iget-object p3, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/FormatHolder;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 46
    iget-object p3, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 48
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 49
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 50
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public getEventType$enumunboxing$()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "3.5"

    return-object p0
.end method
