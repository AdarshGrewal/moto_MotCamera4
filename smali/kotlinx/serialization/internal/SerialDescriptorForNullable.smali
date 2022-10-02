.class public final Lkotlinx/serialization/internal/SerialDescriptorForNullable;
.super Ljava/lang/Object;
.source "NullableSerializer.kt"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;
.implements Lkotlinx/serialization/internal/CachedNames;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of p0, p1, Lkotlinx/serialization/internal/SerialDescriptorForNullable;

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    .line 2
    :cond_1
    check-cast p1, Lkotlinx/serialization/internal/SerialDescriptorForNullable;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-static {p0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public getElementAnnotations(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getElementIndex(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getElementName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getElementsCount()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getKind()Lkotlinx/serialization/descriptors/SerialKind;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getSerialName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSerialNames()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method public isInline()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public isNullable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "null?"

    return-object p0
.end method
