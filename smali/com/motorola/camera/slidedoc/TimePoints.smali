.class public Lcom/motorola/camera/slidedoc/TimePoints;
.super Ljava/lang/Object;
.source "TimePoints.java"


# instance fields
.field public points:[Landroid/graphics/Point;

.field public upMillis:J


# direct methods
.method public constructor <init>(J[Landroid/graphics/Point;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/motorola/camera/slidedoc/TimePoints;->upMillis:J

    .line 3
    iput-wide p1, p0, Lcom/motorola/camera/slidedoc/TimePoints;->upMillis:J

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/slidedoc/TimePoints;->points:[Landroid/graphics/Point;

    return-void
.end method
