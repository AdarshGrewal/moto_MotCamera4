.class public Lcom/motorola/camera/PreviewRatio;
.super Ljava/lang/Object;
.source "PreviewRatio.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public cropBegin:F

.field public cropEnd:F

.field public current:F

.field public ratio:F

.field public source:F

.field public target:F

.field public translate:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/PreviewRatio;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crop(FFFFF)Lcom/motorola/camera/PreviewRatio;
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/PreviewRatio;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewRatio;-><init>()V

    .line 2
    iput p0, v0, Lcom/motorola/camera/PreviewRatio;->source:F

    .line 3
    iput p1, v0, Lcom/motorola/camera/PreviewRatio;->current:F

    .line 4
    iput p2, v0, Lcom/motorola/camera/PreviewRatio;->target:F

    const/high16 p0, -0x40800000    # -1.0f

    .line 5
    iput p0, v0, Lcom/motorola/camera/PreviewRatio;->ratio:F

    const/4 p0, 0x0

    .line 6
    iput p0, v0, Lcom/motorola/camera/PreviewRatio;->translate:F

    .line 7
    iput p3, v0, Lcom/motorola/camera/PreviewRatio;->cropBegin:F

    .line 8
    iput p4, v0, Lcom/motorola/camera/PreviewRatio;->cropEnd:F

    return-object v0
.end method

.method public static isSameAspectRatio(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3dcccccd    # 0.1f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static scal(FFFFFF)Lcom/motorola/camera/PreviewRatio;
    .locals 0

    .line 1
    new-instance p3, Lcom/motorola/camera/PreviewRatio;

    invoke-direct {p3}, Lcom/motorola/camera/PreviewRatio;-><init>()V

    .line 2
    iput p0, p3, Lcom/motorola/camera/PreviewRatio;->source:F

    .line 3
    iput p1, p3, Lcom/motorola/camera/PreviewRatio;->current:F

    .line 4
    iput p2, p3, Lcom/motorola/camera/PreviewRatio;->target:F

    .line 5
    iput p4, p3, Lcom/motorola/camera/PreviewRatio;->ratio:F

    .line 6
    iput p5, p3, Lcom/motorola/camera/PreviewRatio;->translate:F

    const/high16 p0, -0x40800000    # -1.0f

    .line 7
    iput p0, p3, Lcom/motorola/camera/PreviewRatio;->cropBegin:F

    .line 8
    iput p0, p3, Lcom/motorola/camera/PreviewRatio;->cropEnd:F

    return-object p3
.end method


# virtual methods
.method public clone()Lcom/motorola/camera/PreviewRatio;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/PreviewRatio;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewRatio"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    new-instance p0, Lcom/motorola/camera/PreviewRatio;

    invoke-direct {p0}, Lcom/motorola/camera/PreviewRatio;-><init>()V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/PreviewRatio;->clone()Lcom/motorola/camera/PreviewRatio;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "PreviewRatio{source="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/PreviewRatio;->source:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/PreviewRatio;->current:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/PreviewRatio;->target:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/PreviewRatio;->ratio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cropBegin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/PreviewRatio;->cropBegin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cropEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/PreviewRatio;->cropEnd:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", translate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/PreviewRatio;->translate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
