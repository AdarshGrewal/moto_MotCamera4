.class public final Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;
.super Ljava/lang/Object;
.source "FilePlaceholder.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/FilePlaceholder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilePlaceholderData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u001f\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u00c6\u0001J\t\u0010\t\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u000b\u001a\u00020\nH\u00d6\u0001J\u0013\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;",
        "",
        "",
        "component1",
        "",
        "component2",
        "id",
        "fullPath",
        "copy",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "J",
        "getId",
        "()J",
        "Ljava/lang/String;",
        "getFullPath",
        "()Ljava/lang/String;",
        "<init>",
        "(JLjava/lang/String;)V",
        "MotCamera-MCF_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final fullPath:Ljava/lang/String;

.field private final id:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->id:J

    iput-object p3, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->fullPath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;JLjava/lang/String;ILjava/lang/Object;)Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->id:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->fullPath:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->copy(JLjava/lang/String;)Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->fullPath:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(JLjava/lang/String;)Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;
    .locals 0

    new-instance p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;-><init>(JLjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;

    iget-wide v3, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->id:J

    iget-wide v5, p1, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->fullPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->fullPath:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFullPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->fullPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->fullPath:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FilePlaceholderData(id="

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fullPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;->fullPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
