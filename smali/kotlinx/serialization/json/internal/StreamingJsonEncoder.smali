.class public final Lkotlinx/serialization/json/internal/StreamingJsonEncoder;
.super Lkotlinx/serialization/encoding/AbstractEncoder;
.source "StreamingJsonEncoder.kt"

# interfaces
.implements Lkotlinx/serialization/json/JsonEncoder;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamingJsonEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingJsonEncoder.kt\nkotlinx/serialization/json/internal/StreamingJsonEncoder\n+ 2 Polymorphic.kt\nkotlinx/serialization/json/internal/PolymorphicKt\n*L\n1#1,209:1\n15#2,8:210\n*S KotlinDebug\n*F\n+ 1 StreamingJsonEncoder.kt\nkotlinx/serialization/json/internal/StreamingJsonEncoder\n*L\n66#1:210,8\n*E\n"
.end annotation


# instance fields
.field public final composer:Lkotlinx/serialization/json/internal/Composer;

.field public final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field public forceQuoting:Z

.field public final json:Lkotlinx/serialization/json/Json;

.field public final mode:Lkotlinx/serialization/json/internal/WriteMode;

.field public final modeReuseCache:[Lkotlinx/serialization/json/JsonEncoder;

.field public final serializersModule:Lkotlinx/serialization/modules/SerializersModule;

.field public writePolymorphic:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V
    .locals 1

    const-string v0, "composer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractEncoder;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    .line 3
    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json;

    .line 4
    iput-object p3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    .line 5
    iput-object p4, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->modeReuseCache:[Lkotlinx/serialization/json/JsonEncoder;

    .line 6
    iget-object p1, p2, Lkotlinx/serialization/json/Json;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    .line 7
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    .line 8
    iget-object p1, p2, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 9
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 10
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p4, :cond_1

    .line 11
    aget-object p2, p4, p1

    if-nez p2, :cond_0

    aget-object p2, p4, p1

    if-eq p2, p0, :cond_1

    .line 12
    :cond_0
    aput-object p0, p4, p1

    :cond_1
    return-void
.end method


# virtual methods
.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json;

    .line 2
    invoke-static {v0, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->switchMode(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v0

    .line 3
    iget-char v1, v0, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {v2, v1}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    .line 5
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    .line 7
    iget v3, v1, Lkotlinx/serialization/json/internal/Composer;->level:I

    add-int/2addr v3, v2

    iput v3, v1, Lkotlinx/serialization/json/internal/Composer;->level:I

    .line 8
    :cond_0
    iget-boolean v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->writePolymorphic:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->writePolymorphic:Z

    .line 10
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/Composer;->nextItem()V

    .line 11
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 12
    iget-object v1, v1, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    .line 15
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/Composer;->space()V

    .line 16
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    .line 17
    :cond_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne p1, v0, :cond_2

    return-object p0

    .line 18
    :cond_2
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->modeReuseCache:[Lkotlinx/serialization/json/JsonEncoder;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object p1, p1, v1

    :goto_0
    if-nez p1, :cond_4

    new-instance p1, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    .line 19
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json;

    .line 20
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->modeReuseCache:[Lkotlinx/serialization/json/JsonEncoder;

    invoke-direct {p1, v1, v2, v0, p0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V

    :cond_4
    return-object p1
.end method

.method public encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x2c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x0

    const/16 v4, 0x3a

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    .line 3
    iget-boolean v3, v0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    .line 5
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/Composer;->nextItem()V

    .line 6
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {p1, v4}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    .line 8
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/Composer;->space()V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 9
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    :cond_2
    if-ne p2, v2, :cond_8

    .line 10
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    .line 11
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/Composer;->space()V

    .line 12
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    .line 14
    iget-boolean v0, p1, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    if-nez v0, :cond_5

    .line 15
    rem-int/2addr p2, v5

    if-nez p2, :cond_4

    .line 16
    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    .line 17
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/Composer;->nextItem()V

    move v3, v2

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1, v4}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    .line 19
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/Composer;->space()V

    .line 20
    :goto_0
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    goto :goto_1

    .line 21
    :cond_5
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    .line 22
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/Composer;->nextItem()V

    goto :goto_1

    .line 23
    :cond_6
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    .line 24
    iget-boolean p2, p1, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    if-nez p2, :cond_7

    .line 25
    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    .line 26
    :cond_7
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/Composer;->nextItem()V

    :cond_8
    :goto_1
    return v2
.end method

.method public encodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method

.method public encodeInt(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    .line 2
    iget-object p0, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lcom/google/android/play/core/assetpacks/zzdg;

    int-to-long v0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/assetpacks/zzdg;->append(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json;

    .line 3
    iget-object v0, v0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 4
    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "null cannot be cast to non-null type kotlin.Any"

    .line 5
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    check-cast p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 7
    invoke-static {p1, p0, p2}, Lkotlin/ExceptionsKt;->findPolymorphicSerializer(Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/SerializationStrategy;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json;

    .line 9
    iget-object v1, v1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 10
    iget-object v1, v1, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    .line 11
    instance-of v2, p1, Lkotlinx/serialization/SealedClassSerializer;

    if-nez v2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {v0}, Lkotlinx/serialization/SerializationStrategy;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/R$drawable;->jsonCachedSerialNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 13
    :goto_0
    invoke-interface {v0}, Lkotlinx/serialization/SerializationStrategy;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object p1

    const-string v1, "kind"

    .line 14
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    instance-of v1, p1, Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    if-nez v1, :cond_4

    .line 16
    instance-of v1, p1, Lkotlinx/serialization/descriptors/PrimitiveKind;

    if-nez v1, :cond_3

    .line 17
    instance-of p1, p1, Lkotlinx/serialization/descriptors/PolymorphicKind;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->writePolymorphic:Z

    .line 19
    invoke-interface {v0, p0, p2}, Lkotlinx/serialization/SerializationStrategy;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    goto :goto_2

    .line 20
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Actual serializer for polymorphic cannot be polymorphic itself"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Primitives cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Enums cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_5
    check-cast p1, Lkotlinx/serialization/SealedClassSerializer;

    .line 24
    iget-object p0, p1, Lkotlinx/serialization/SealedClassSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 25
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-interface {v0}, Lkotlinx/serialization/SerializationStrategy;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sealed class \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' cannot be serialized as base class \'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' because it has property name that conflicts with JSON class discriminator \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism"

    invoke-static {p2, v1, p0}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 28
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_6
    :goto_1
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/SerializationStrategy;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public encodeString(Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lcom/google/android/play/core/assetpacks/zzdg;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "string"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/assetpacks/zzdg;->ensureAdditionalCapacity(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/Object;

    check-cast v0, [C

    .line 7
    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x22

    .line 8
    aput-char v3, v0, v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    .line 10
    invoke-virtual {p1, v4, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, v2

    if-ge v2, v1, :cond_2

    move v4, v2

    :goto_0
    add-int/lit8 v5, v4, 0x1

    .line 11
    aget-char v6, v0, v4

    .line 12
    sget-object v7, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_MARKERS:[B

    .line 13
    array-length v8, v7

    if-ge v6, v8, :cond_0

    aget-byte v6, v7, v6

    if-eqz v6, :cond_0

    sub-int v0, v4, v2

    .line 14
    invoke-virtual {p0, v0, v4, p1}, Lcom/google/android/play/core/assetpacks/zzdg;->appendStringSlowPath(IILjava/lang/String;)V

    goto :goto_2

    :cond_0
    if-lt v5, v1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p1, v1, 0x1

    .line 15
    aput-char v3, v0, v1

    .line 16
    iput p1, p0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    :goto_2
    return-void
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p1, p1, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    .line 3
    iget v0, p1, Lkotlinx/serialization/json/internal/Composer;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lkotlinx/serialization/json/internal/Composer;->level:I

    .line 4
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/Composer;->nextItem()V

    .line 5
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p0, p0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    :cond_0
    return-void
.end method

.method public getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-object p0
.end method
