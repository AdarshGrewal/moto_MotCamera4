.class public Lcom/motorola/camera/analytics/WidgetTapEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "WidgetTapEvent.java"


# static fields
.field public static final FIRST_TIME:Lcom/motorola/camera/analytics/Attributes/iAttribute;
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
    .locals 3

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "FRSTTME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/WidgetTapEvent;->FIRST_TIME:Lcom/motorola/camera/analytics/Attributes/iAttribute;

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
    .locals 0

    .line 1
    check-cast p3, Lcom/motorola/camera/analytics/WidgetTapData;

    .line 2
    sget-object p0, Lcom/motorola/camera/analytics/WidgetTapEvent;->FIRST_TIME:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public getEventType$enumunboxing$()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method
