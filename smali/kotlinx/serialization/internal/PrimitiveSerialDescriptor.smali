.class public final Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;
.super Ljava/lang/Object;
.source "Primitives.kt"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# instance fields
.field public final kind:Lkotlinx/serialization/descriptors/PrimitiveKind;

.field public final serialName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->serialName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->kind:Lkotlinx/serialization/descriptors/PrimitiveKind;

    return-void
.end method


# virtual methods
.method public final error()Ljava/lang/Void;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Primitive descriptor does not have elements"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->error()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->error()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public getElementIndex(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->error()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public getElementName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->error()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public getElementsCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getKind()Lkotlinx/serialization/descriptors/SerialKind;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->kind:Lkotlinx/serialization/descriptors/PrimitiveKind;

    return-object p0
.end method

.method public getSerialName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->serialName:Ljava/lang/String;

    return-object p0
.end method

.method public isInline()Z
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor$DefaultImpls;->isInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public isNullable()Z
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor$DefaultImpls;->isNullable(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "PrimitiveDescriptor("

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->serialName:Ljava/lang/String;

    const/16 v1, 0x29

    .line 3
    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
