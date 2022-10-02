.class public Lcom/motorola/camera/PreviewSize;
.super Ljava/lang/Object;
.source "PreviewSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/PreviewSize$AspectRatio;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIOS_3x4:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASPECT_RATIOS_9x16:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASPECT_RATIOS_FULL:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    sget-object v2, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v2, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_PHOTO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/PreviewSize;->ASPECT_RATIOS_3x4:Ljava/util/Collection;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_VIDEO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/PreviewSize;->ASPECT_RATIOS_9x16:Ljava/util/Collection;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->EQUIRECTANGULAR:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE18V7P7:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE19P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE20V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE20P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/PreviewSize;->ASPECT_RATIOS_FULL:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    .line 3
    iput v0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    .line 6
    iput p2, p0, Lcom/motorola/camera/PreviewSize;->height:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 13
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    .line 14
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    .line 16
    iput p1, p0, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Size;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 8
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    .line 9
    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    iput p1, p0, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    .line 11
    iput p1, p0, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    .line 19
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    .line 21
    iput p1, p0, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_0
    return-void
.end method

.method public static getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0, p0}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedAspectRatio(Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/PreviewSize$AspectRatio;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/motorola/camera/PreviewSize$AspectRatio;->values()[Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Ljava/lang/Float;Ljava/util/List;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedAspectRatio(Ljava/lang/Float;Ljava/util/List;)Lcom/motorola/camera/PreviewSize$AspectRatio;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            ">;)",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/PreviewSize$AspectRatio;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 6
    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    :cond_3
    return-object v0
.end method

.method public static hasAspectRatio(Ljava/util/Collection;F)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            ">;F)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result v0

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isAspectRatio(IILcom/motorola/camera/PreviewSize$AspectRatio;)Z
    .locals 0

    .line 3
    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result p2

    if-le p1, p0, :cond_0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    int-to-float p1, p1

    div-float p1, p0, p1

    .line 4
    :goto_0
    invoke-static {p2, p1}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result p0

    return p0
.end method

.method public static isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getArea()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v0, p0, p1}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(IILcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTrueAspectRatio(Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z
    .locals 1

    .line 5
    invoke-static {p0}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    .line 7
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p1

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    .line 8
    invoke-static {p1, v0}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result p0

    return p0
.end method

.method public static isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getArea()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p1

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    .line 4
    invoke-static {p1, v0}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValid(Lcom/motorola/camera/PreviewSize;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getArea()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static transformFrom(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            ")",
            "Ljava/util/List<",
            "Lcom/motorola/camera/PreviewSize;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v2, v1, Landroid/util/Size;

    if-eqz v2, :cond_2

    .line 5
    new-instance v2, Lcom/motorola/camera/PreviewSize;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v2, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    instance-of v2, v1, Landroid/hardware/Camera$Size;

    if-eqz v2, :cond_1

    .line 7
    new-instance v2, Lcom/motorola/camera/PreviewSize;

    check-cast v1, Landroid/hardware/Camera$Size;

    invoke-direct {v2, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/hardware/Camera$Size;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/PreviewSize;

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/motorola/camera/PreviewSize;

    .line 3
    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v2, p1, Lcom/motorola/camera/PreviewSize;->width:I

    if-ne v1, v2, :cond_2

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getArea()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public getAspectRatio()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "dimension is zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getMin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getTrueAspectRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "dimension is zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    const/16 v1, 0x56a

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2a

    .line 2
    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    add-int/2addr v1, p0

    return v1
.end method

.method public isSameAspectRatio(Lcom/motorola/camera/PreviewSize;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result p0

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result p1

    .line 3
    invoke-static {p0, p1}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result p0

    return p0
.end method

.method public scale(F)Lcom/motorola/camera/PreviewSize;
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    return-object v0
.end method

.method public set(Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iput v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    .line 2
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iput p1, p0, Lcom/motorola/camera/PreviewSize;->height:I

    return-void
.end method

.method public toSize()Landroid/util/Size;
    .locals 2

    .line 1
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method
