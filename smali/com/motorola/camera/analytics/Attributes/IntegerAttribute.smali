.class public Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;
.super Ljava/lang/Object;
.source "IntegerAttribute.java"

# interfaces
.implements Lcom/motorola/camera/analytics/Attributes/iAttribute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final mDefault:I

.field public final mMandatory:Z

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mDefault:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mMandatory:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mDefault:I

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mMandatory:Z

    return-void
.end method


# virtual methods
.method public record(Landroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mMandatory:Z

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    .line 3
    iget v1, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mDefault:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_3

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method
