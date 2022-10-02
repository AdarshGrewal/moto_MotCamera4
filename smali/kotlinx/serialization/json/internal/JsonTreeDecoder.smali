.class public Lkotlinx/serialization/json/internal/JsonTreeDecoder;
.super Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
.source "TreeJsonDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTreeJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonTreeDecoder\n+ 2 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt\n+ 3 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt$tryCoerceValue$1\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,300:1\n68#2,13:301\n81#2,4:315\n72#3:314\n1#4:319\n*S KotlinDebug\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonTreeDecoder\n*L\n196#1:301,13\n196#1:315,4\n196#1:314\n*E\n"
.end annotation


# instance fields
.field public final polyDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final polyDiscriminator:Ljava/lang/String;

.field public position:I

.field public final value:Lkotlinx/serialization/json/JsonObject;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->value:Lkotlinx/serialization/json/JsonObject;

    .line 8
    iput-object p3, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->polyDiscriminator:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->polyDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 0

    const-string p3, "json"

    .line 1
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "value"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->value:Lkotlinx/serialization/json/JsonObject;

    .line 4
    iput-object p3, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->polyDiscriminator:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->polyDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->polyDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p0

    return-object p0
.end method

.method public currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .locals 1

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/collections/MapsKt___MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    return-object p0
.end method

.method public decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 7

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :cond_0
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->position:I

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 2
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->position:I

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/serialization/json/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 4
    iget-boolean v1, v1, Lkotlinx/serialization/json/JsonConfiguration;->coerceInputValues:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 5
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->position:I

    sub-int/2addr v1, v2

    .line 6
    iget-object v3, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 7
    invoke-interface {p1, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v4

    instance-of v4, v4, Lkotlinx/serialization/json/JsonNull;

    if-eqz v4, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v4

    sget-object v6, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 11
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    instance-of v4, v0, Lkotlinx/serialization/json/JsonPrimitive;

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    check-cast v0, Lkotlinx/serialization/json/JsonPrimitive;

    goto :goto_0

    :cond_2
    move-object v0, v6

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    instance-of v4, v0, Lkotlinx/serialization/json/JsonNull;

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    invoke-static {v1, v3, v6}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_6

    :goto_2
    move v5, v2

    :cond_6
    :goto_3
    if-nez v5, :cond_0

    .line 14
    :cond_7
    iget p0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->position:I

    sub-int/2addr p0, v2

    return p0

    :cond_8
    const/4 p0, -0x1

    return p0
.end method

.method public elementName(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 3
    iget-boolean v1, v1, Lkotlinx/serialization/json/JsonConfiguration;->useAlternativeNames:Z

    if-nez v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 5
    :cond_1
    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 6
    invoke-static {v1}, Landroidx/appcompat/R$style;->getSchemaCache(Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->JsonAlternativeNamesKey:Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;

    new-instance v3, Lkotlinx/serialization/json/internal/JsonTreeDecoder$elementName$alternativeNamesMap$1;

    invoke-direct {v3, p1}, Lkotlinx/serialization/json/internal/JsonTreeDecoder$elementName$alternativeNamesMap$1;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-virtual {v1, p1, v2, v3}, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;->getOrPut(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    return-object v0
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 2
    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    if-nez v0, :cond_6

    .line 3
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/serialization/descriptors/PolymorphicKind;

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 5
    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->useAlternativeNames:Z

    if-nez v0, :cond_1

    .line 6
    invoke-static {p1}, Landroidx/appcompat/R$drawable;->jsonCachedSerialNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    move-result-object p1

    goto :goto_2

    .line 7
    :cond_1
    invoke-static {p1}, Landroidx/appcompat/R$drawable;->jsonCachedSerialNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 9
    invoke-static {v1}, Landroidx/appcompat/R$style;->getSchemaCache(Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->JsonAlternativeNamesKey:Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;

    invoke-virtual {v1, p1, v2}, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;->get(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    :goto_1
    invoke-static {v0, p1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 10
    :goto_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->polyDiscriminator:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "key"

    .line 13
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Encountered unknown key \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'.\nUse \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys.\nCurrent input: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    .line 15
    invoke-static {p0, v0}, Landroidx/cardview/R$dimen;->minify(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {v0, p0}, Landroidx/cardview/R$dimen;->JsonDecodingException(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    .line 18
    throw p0

    :cond_6
    :goto_4
    return-void
.end method

.method public bridge synthetic getValue()Lkotlinx/serialization/json/JsonElement;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lkotlinx/serialization/json/JsonObject;
    .locals 0

    .line 2
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->value:Lkotlinx/serialization/json/JsonObject;

    return-object p0
.end method
