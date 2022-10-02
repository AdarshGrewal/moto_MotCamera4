.class public Lcom/motorola/camera/analytics/AlwaysAwareEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "AlwaysAwareEvent.java"


# static fields
.field public static final ACTION:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final GEO_AVAILABLE:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_SUBTYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_TYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUM_FIELDS:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final OBJECT_TYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCAN_DURATION:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_AT_DETECTION:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "SCNTME"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->SCAN_DURATION:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 2
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "TYPE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->OBJECT_TYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 3
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "ACTION"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->ACTION:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 4
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "FLDS"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NUM_FIELDS:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 5
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "EVTTME"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->TIME_AT_DETECTION:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 6
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "NETTYPE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NETWORK_TYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 7
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "NETSUB"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NETWORK_SUBTYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 8
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "GEO"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->GEO_AVAILABLE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

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
    .locals 2

    .line 1
    check-cast p3, Lcom/motorola/camera/analytics/AlwaysAwareData;

    .line 2
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->SCAN_DURATION:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    iget-wide v0, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    .line 4
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->OBJECT_TYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 5
    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->mType:I

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 8
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->ACTION:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->action:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 9
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 10
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NUM_FIELDS:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    iget-wide v0, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->totFields:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 11
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    const-string p0, "false"

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->TIME_AT_DETECTION:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    iget-wide v0, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->detectionTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 14
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    .line 15
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NETWORK_TYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 16
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 17
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->NETWORK_SUBTYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkSubtype:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 18
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 19
    sget-object p0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;->GEO_AVAILABLE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    iget-boolean p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->geoAvailable:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 20
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    return-void
.end method

.method public getEventType$enumunboxing$()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.6"

    return-object p0
.end method
