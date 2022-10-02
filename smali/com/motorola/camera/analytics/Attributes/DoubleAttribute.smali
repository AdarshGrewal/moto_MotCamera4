.class public Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;
.super Ljava/lang/Object;
.source "DoubleAttribute.java"

# interfaces
.implements Lcom/motorola/camera/analytics/Attributes/iAttribute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field public final mDefault:D

.field public final mMandatory:Z

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;->mName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;->mDefault:D

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;->mMandatory:Z

    return-void
.end method


# virtual methods
.method public record(Landroid/os/Bundle;Ljava/lang/Double;)V
    .locals 4

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;->mMandatory:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;->mDefault:D

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_3
    return-void
.end method
