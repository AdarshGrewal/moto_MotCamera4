.class public Lcom/adobe/xmp/impl/XMPSerializerRDF;
.super Ljava/lang/Object;


# static fields
.field public static final RDF_ATTR_QUALIFIER:Ljava/util/Set;


# instance fields
.field public options:Lcom/adobe/xmp/options/SerializeOptions;

.field public outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

.field public padding:I

.field public unicodeSize:I

.field public writer:Ljava/io/OutputStreamWriter;

.field public xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "xml:lang"

    const-string v2, "rdf:resource"

    const-string v3, "rdf:ID"

    const-string v4, "rdf:bagID"

    const-string v5, "rdf:nodeID"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    return-void
.end method


# virtual methods
.method public final addPadding(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    const/16 v1, 0x200

    .line 1
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    .line 3
    iget v0, v0, Lcom/adobe/xmp/impl/CountOutputStream;->bytesWritten:I

    .line 4
    iget v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    mul-int/2addr p1, v1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    if-gt p1, v0, :cond_0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/16 p1, 0x6b

    const-string v0, "Can\'t fit into specified packet size"

    invoke-direct {p0, v0, p1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    iget p1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    iget v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    iget-object p1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    .line 5
    iget-object p1, p1, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    const/16 v1, 0x20

    if-lt v0, p1, :cond_3

    sub-int/2addr v0, p1

    :goto_1
    iput v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    const/16 v2, 0x64

    add-int/lit8 v3, p1, 0x64

    if-lt v0, v3, :cond_2

    invoke-virtual {p0, v2, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeChars(IC)V

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    iget v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeChars(IC)V

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeChars(IC)V

    :goto_2
    return-void
.end method

.method public final appendNodeValue(Ljava/lang/String;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x22

    const/16 v7, 0x26

    const/16 v8, 0x3e

    const/16 v9, 0x3c

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v9, :cond_1

    if-eq v2, v8, :cond_1

    if-eq v2, v7, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    if-eqz p2, :cond_0

    if-ne v2, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    if-nez v1, :cond_3

    goto :goto_7

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_a

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_9

    if-eq v2, v4, :cond_9

    if-eq v2, v3, :cond_9

    if-eq v2, v6, :cond_7

    if-eq v2, v7, :cond_6

    if-eq v2, v9, :cond_5

    if-eq v2, v8, :cond_4

    goto :goto_5

    :cond_4
    const-string v2, "&gt;"

    goto :goto_4

    :cond_5
    const-string v2, "&lt;"

    goto :goto_4

    :cond_6
    const-string v2, "&amp;"

    goto :goto_4

    :cond_7
    if-eqz p2, :cond_8

    const-string v2, "&quot;"

    goto :goto_4

    :cond_8
    const-string v2, "\""

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_9
    const-string v10, "&#x"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3b

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_7
    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final canBeRDFAttrProp(Lcom/adobe/xmp/impl/XMPNode;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isURI()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1
    iget-object p0, p1, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    const-string p1, "[]"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkOptionsConsistence()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    .line 1
    iget v1, v0, Lcom/adobe/xmp/options/Options;->options:I

    const/4 v2, 0x3

    and-int/2addr v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    or-int/2addr v1, v6

    if-eqz v1, :cond_2

    .line 2
    iput v3, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    :cond_2
    const/16 v1, 0x200

    .line 3
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    const/16 v1, 0x67

    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v2

    or-int/2addr v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    .line 5
    iget v0, v0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    .line 6
    iget p0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    sub-int/2addr p0, v4

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Exact size must be a multiple of the Unicode element"

    invoke-direct {p0, v0, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_4
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Inconsistent options for exact size serialize"

    invoke-direct {p0, v0, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    const/16 v2, 0x20

    .line 7
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v2

    or-int/2addr v0, v2

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Inconsistent options for read-only packet"

    invoke-direct {p0, v0, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_2
    iput v5, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_4

    :cond_8
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Inconsistent options for non-packet serialize"

    invoke-direct {p0, v0, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_9
    iget v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    mul-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    :cond_a
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    const-string v1, "http://ns.adobe.com/xap/1.0/"

    const-string v2, "Thumbnails"

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :try_start_0
    invoke-static {v1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/FieldAttributes;

    move-result-object v1

    iget-object v0, v0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v2, 0x0

    invoke-static {v0, v1, v5, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/google/gson/FieldAttributes;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_b

    goto :goto_3

    :catch_0
    :cond_b
    move v4, v5

    :goto_3
    if-nez v4, :cond_c

    .line 10
    iget v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    iget v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v1, v0

    iput v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    :cond_c
    :goto_4
    return-void
.end method

.method public final declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    const/16 p2, 0x3a

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-object p1, v2

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    sget-object p2, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    const-string v0, ":"

    .line 4
    invoke-static {p1, v0}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {p2, v0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    invoke-virtual {p0, p4}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 5
    iget-object p4, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string/jumbo v0, "xmlns:"

    invoke-virtual {p4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p4, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v0, "=\""

    invoke-virtual {p4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p4, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/16 p2, 0x22

    .line 6
    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p2}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 7
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final declareUsedNamespaces(Lcom/adobe/xmp/impl/XMPNode;Ljava/util/Set;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p1, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p1, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/xmp/impl/XMPNode;

    .line 5
    iget-object v2, v2, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v2, v1, p2, p3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {p0, v2, p2, p3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/adobe/xmp/impl/XMPNode;Ljava/util/Set;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 7
    iget-object v2, v0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v2, v1, p2, p3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/adobe/xmp/impl/XMPNode;Ljava/util/Set;I)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final emitRDFArrayTag(Lcom/adobe/xmp/impl/XMPNode;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-virtual {p0, p3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    if-eqz p2, :cond_1

    const-string p3, "<rdf:"

    goto :goto_0

    :cond_1
    const-string p3, "</rdf:"

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 3
    iget-object p3, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v0, "Alt"

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p3

    const/16 v0, 0x400

    .line 5
    invoke-virtual {p3, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 6
    iget-object p3, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v0, "Seq"

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v0, "Bag"

    :goto_1
    invoke-virtual {p3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result p1

    if-nez p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string p2, "/>"

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string p2, ">"

    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :cond_5
    return-void
.end method

.method public final serializeAsRDF()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string v0, "<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>"

    .line 1
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string v0, "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\""

    .line 3
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 7
    const-class v0, Lcom/adobe/xmp/XMPMetaFactory;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/adobe/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/xmp/XMPVersionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    :try_start_1
    new-instance v2, Lcom/adobe/xmp/XMPMetaFactory$1;

    invoke-direct {v2}, Lcom/adobe/xmp/XMPMetaFactory$1;-><init>()V

    sput-object v2, Lcom/adobe/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/xmp/XMPVersionInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object v2, Lcom/adobe/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/xmp/XMPVersionInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Adobe XMP Core 5.1.0-jc003"

    .line 9
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v0, "\">"

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string v2, "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">"

    .line 11
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    const/16 v3, 0x40

    .line 13
    invoke-virtual {v2, v3}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v2

    const/4 v3, 0x3

    const/16 v4, 0x3e

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eqz v2, :cond_6

    .line 14
    invoke-virtual {p0, v6}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 15
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v7, "<rdf:Description rdf:about="

    invoke-virtual {v2, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeTreeName()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v7, "xml"

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v7, "rdf"

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 17
    iget-object v7, v7, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 18
    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {p0, v8, v2, v5}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/adobe/xmp/impl/XMPNode;Ljava/util/Set;I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 19
    iget-object v2, v2, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 20
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    move v5, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {p0, v7, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFAttrProps(Lcom/adobe/xmp/impl/XMPNode;I)Z

    move-result v7

    and-int/2addr v5, v7

    goto :goto_2

    :cond_3
    if-nez v5, :cond_5

    .line 21
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 22
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 23
    iget-object v2, v2, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 24
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {p0, v4, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/adobe/xmp/impl/XMPNode;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v6}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 25
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v3, "</rdf:Description>"

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v3, "/>"

    :goto_4
    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto/16 :goto_7

    .line 27
    :cond_6
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 28
    iget-object v2, v2, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 29
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    const-string v7, "<rdf:Description rdf:about="

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 30
    iget-object v2, v2, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 31
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adobe/xmp/impl/XMPNode;

    .line 32
    invoke-virtual {p0, v6}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 33
    iget-object v9, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v9, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeTreeName()V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v10, "xml"

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "rdf"

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v8, v9, v5}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/adobe/xmp/impl/XMPNode;Ljava/util/Set;I)V

    .line 35
    iget-object v9, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v9, v4}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 36
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {p0, v9, v1, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    goto :goto_6

    :cond_7
    invoke-virtual {p0, v6}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 37
    iget-object v8, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v9, "</rdf:Description>"

    invoke-virtual {v8, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto :goto_5

    .line 39
    :cond_8
    invoke-virtual {p0, v6}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 40
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeTreeName()V

    .line 42
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v3, "/>"

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 44
    :cond_9
    :goto_7
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string v0, "</rdf:RDF>"

    .line 45
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string v0, "</x:xmpmeta>"

    .line 47
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    const-string v0, ""

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/adobe/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    .line 49
    iget v1, v1, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    :goto_8
    if-lez v1, :cond_a

    .line 50
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    .line 51
    iget-object v2, v2, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_a
    const-string v1, "<?xpacket end=\""

    invoke-static {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    const/16 v1, 0x20

    .line 53
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0x72

    goto :goto_9

    :cond_b
    const/16 p0, 0x77

    .line 54
    :goto_9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\"?>"

    invoke-static {p0, v0}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_c
    return-object v0

    :catchall_1
    move-exception p0

    .line 55
    monitor-exit v0

    throw p0
.end method

.method public final serializeCompactRDFAttrProps(Lcom/adobe/xmp/impl/XMPNode;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    invoke-virtual {p0, p2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 1
    iget-object v3, v2, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 2
    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 3
    iget-object v2, v2, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v2, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const/16 v2, 0x22

    .line 5
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final serializeCompactRDFElementProps(Lcom/adobe/xmp/impl/XMPNode;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    iget-object v1, v0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    const-string v2, "[]"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "rdf:li"

    :cond_2
    invoke-virtual {p0, p2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const/16 v2, 0x3c

    .line 3
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 4
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/adobe/xmp/impl/XMPNode;

    sget-object v8, Lcom/adobe/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    .line 6
    iget-object v9, v6, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 7
    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move v4, v7

    goto :goto_1

    .line 8
    :cond_3
    iget-object v5, v6, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    const-string v8, "rdf:resource"

    .line 9
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v8, 0x20

    .line 10
    iget-object v9, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v9, v8}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 11
    iget-object v8, v6, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 12
    iget-object v9, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v9, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v9, "=\""

    invoke-virtual {v8, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 13
    iget-object v6, v6, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v6, v7}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const/16 v6, 0x22

    .line 15
    iget-object v7, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v7, v6}, Ljava/io/OutputStreamWriter;->write(I)V

    goto :goto_1

    :cond_4
    const-string v2, " rdf:parseType=\"Resource\">"

    const/16 v6, 0x3e

    if-eqz v4, :cond_5

    .line 16
    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v0, v7, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {p0, v4, v3, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v4

    const-string v8, "/>"

    if-nez v4, :cond_9

    .line 19
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/options/PropertyOptions;->isURI()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 20
    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v5, " rdf:resource=\""

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 21
    iget-object v0, v0, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v0, v7}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    .line 23
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v8, "\"/>"

    goto :goto_4

    .line 24
    :cond_6
    iget-object v4, v0, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 26
    :cond_7
    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 27
    iget-object v0, v0, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, v0, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    .line 29
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    :goto_4
    invoke-virtual {v0, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    :goto_5
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    aput-object v0, v4, v7

    .line 31
    aget-object v0, v4, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aget-object v2, v4, v7

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move v12, v7

    move v7, v0

    move v0, v12

    goto/16 :goto_b

    :cond_9
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 32
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2, v6}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 33
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v0, v7, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/adobe/xmp/impl/XMPNode;)V

    :cond_a
    add-int/lit8 v4, p2, 0x2

    invoke-virtual {p0, v0, v4}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/adobe/xmp/impl/XMPNode;I)V

    invoke-virtual {p0, v0, v3, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    :cond_b
    move v0, v7

    goto/16 :goto_b

    .line 34
    :cond_c
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v4

    move v9, v3

    move v10, v9

    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {p0, v11}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v11

    if-eqz v11, :cond_e

    move v9, v7

    goto :goto_6

    :cond_e
    move v10, v7

    :goto_6
    if-eqz v9, :cond_d

    if-eqz v10, :cond_d

    :cond_f
    if-eqz v5, :cond_11

    if-nez v10, :cond_10

    goto :goto_7

    :cond_10
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/16 p1, 0xca

    const-string p2, "Can\'t mix rdf:resource qualifier and element fields"

    invoke-direct {p0, p2, p1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_11
    :goto_7
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v4

    if-nez v4, :cond_12

    .line 35
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v8, " rdf:parseType=\"Resource\"/>"

    goto :goto_8

    :cond_12
    if-nez v10, :cond_13

    add-int/lit8 v2, p2, 0x1

    .line 36
    invoke-virtual {p0, v0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFAttrProps(Lcom/adobe/xmp/impl/XMPNode;I)Z

    .line 37
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    :goto_8
    invoke-virtual {v0, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto :goto_a

    :cond_13
    if-nez v9, :cond_14

    .line 39
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/adobe/xmp/impl/XMPNode;I)V

    goto :goto_9

    .line 41
    :cond_14
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2, v6}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 42
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 43
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v4, "<rdf:Description"

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v3, p2, 0x2

    .line 44
    invoke-virtual {p0, v0, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFAttrProps(Lcom/adobe/xmp/impl/XMPNode;I)Z

    .line 45
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    invoke-virtual {p0, v0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/adobe/xmp/impl/XMPNode;I)V

    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 47
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v2, "</rdf:Description>"

    invoke-virtual {v0, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :goto_9
    move v3, v7

    :goto_a
    move v0, v7

    move v7, v3

    :goto_b
    if-eqz v7, :cond_0

    if-eqz v0, :cond_15

    .line 49
    invoke-virtual {p0, p2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 50
    :cond_15
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, v6}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 52
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto/16 :goto_0

    :cond_16
    return-void
.end method

.method public final serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1
    iget-object v3, v1, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v3, "rdf:value"

    goto :goto_0

    :cond_0
    const-string v4, "[]"

    .line 2
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "rdf:li"

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const/16 v4, 0x3c

    .line 3
    iget-object v5, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5, v4}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 4
    iget-object v4, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0x22

    const-string v10, "=\""

    const/16 v11, 0x20

    const/4 v12, 0x1

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adobe/xmp/impl/XMPNode;

    sget-object v13, Lcom/adobe/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    .line 6
    iget-object v14, v8, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 7
    check-cast v13, Ljava/util/HashSet;

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    move v6, v12

    goto :goto_1

    .line 8
    :cond_3
    iget-object v7, v8, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    const-string v13, "rdf:resource"

    .line 9
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez p2, :cond_2

    .line 10
    iget-object v13, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v13, v11}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 11
    iget-object v11, v8, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 12
    iget-object v13, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v13, v11}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v11, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 13
    iget-object v8, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v8, v12}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    .line 15
    iget-object v8, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v8, v9}, Ljava/io/OutputStreamWriter;->write(I)V

    goto :goto_1

    :cond_4
    const/16 v4, 0xca

    const-string v8, " rdf:parseType=\"Resource\">"

    const/16 v13, 0x3e

    if-eqz v6, :cond_7

    if-nez p2, :cond_7

    if-nez v7, :cond_6

    .line 16
    iget-object v4, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v1, v12, v4}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/adobe/xmp/impl/XMPNode;

    sget-object v7, Lcom/adobe/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    .line 18
    iget-object v8, v6, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 19
    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v0, v6, v5, v4}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Can\'t mix rdf:resource and general qualifiers"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v6

    const-string v14, "/>"

    if-nez v6, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/options/PropertyOptions;->isURI()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 20
    iget-object v4, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v6, " rdf:resource=\""

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 21
    iget-object v1, v1, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1, v12}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    .line 23
    iget-object v1, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v4, "\"/>"

    :goto_3
    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 24
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto/16 :goto_a

    .line 25
    :cond_8
    iget-object v4, v1, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    if-eqz v4, :cond_a

    const-string v6, ""

    .line 26
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    .line 27
    :cond_9
    iget-object v4, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4, v13}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 28
    iget-object v1, v1, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1, v5}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    move v15, v12

    move v12, v5

    move v5, v15

    goto/16 :goto_a

    .line 30
    :cond_a
    :goto_5
    iget-object v1, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1, v14}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 31
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 32
    iget-object v4, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4, v13}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v1, v12, v4}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/adobe/xmp/impl/XMPNode;)V

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/adobe/xmp/impl/XMPNode;

    add-int/lit8 v8, v2, 0x2

    invoke-virtual {v0, v7, v5, v8}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    goto :goto_6

    :cond_d
    invoke-virtual {v0, v1, v5, v4}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    goto :goto_8

    :cond_e
    if-nez v7, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v4

    if-nez v4, :cond_f

    .line 34
    iget-object v1, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v4, " rdf:parseType=\"Resource\"/>"

    goto :goto_3

    :cond_f
    iget-object v4, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/xmp/impl/XMPNode;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v4, v5, v6}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    goto :goto_7

    :cond_10
    :goto_8
    move v5, v12

    goto :goto_a

    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0, v6}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 36
    iget-object v7, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v7, v11}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 37
    iget-object v7, v6, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 38
    iget-object v8, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v8, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v7, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 39
    iget-object v6, v6, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v6, v12}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    .line 41
    iget-object v6, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v6, v9}, Ljava/io/OutputStreamWriter;->write(I)V

    goto :goto_9

    .line 42
    :cond_12
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Can\'t mix rdf:resource and complex fields"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :goto_a
    if-eqz v5, :cond_14

    if-eqz v12, :cond_13

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 43
    :cond_13
    iget-object v1, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 44
    iget-object v1, v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1, v13}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :cond_14
    return-void
.end method

.method public final writeChars(IC)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p2}, Ljava/io/OutputStreamWriter;->write(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeIndent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    .line 1
    iget v0, v0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    add-int/2addr v0, p1

    :goto_0
    if-lez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    .line 3
    iget-object v1, v1, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeNewline()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    .line 1
    iget-object p0, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final writeTreeName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 2
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 3
    iget-object v0, v0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 4
    iget-object v0, v0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    return-void
.end method
