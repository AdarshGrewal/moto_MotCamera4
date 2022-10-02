.class public final Lcom/adobe/xmp/XMPMetaFactory;
.super Ljava/lang/Object;


# static fields
.field public static schema:Lcom/adobe/xmp/XMPSchemaRegistry;

.field public static versionInfo:Lcom/adobe/xmp/XMPVersionInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;-><init>()V

    sput-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/xmp/XMPVersionInfo;

    return-void
.end method

.method public static parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    .line 2
    invoke-static/range {p0 .. p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/adobe/xmp/options/ParseOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/ParseOptions;-><init>()V

    .line 3
    instance-of v2, v0, Ljava/io/InputStream;

    const/16 v3, 0x10

    if-eqz v2, :cond_1

    check-cast v0, Ljava/io/InputStream;

    .line 4
    invoke-virtual {v1, v3}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/adobe/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-direct {v2, v0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/adobe/xmp/XMPException;

    const/16 v2, 0xcc

    const-string v3, "Error reading the XML-file"

    invoke-direct {v1, v3, v2, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_1
    new-instance v2, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-direct {v2, v0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>([B)V

    invoke-static {v2, v1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v3, v4}, Lcom/adobe/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    aget-object v3, v0, v2

    sget-object v4, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    if-ne v3, v4, :cond_31

    const/4 v3, 0x0

    aget-object v4, v0, v3

    check-cast v4, Lorg/w3c/dom/Node;

    .line 9
    new-instance v12, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 10
    invoke-interface {v4}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 11
    iget-object v5, v12, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    move v6, v3

    .line 12
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-static {v7}, Lcom/adobe/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v12, v5, v7, v2}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    .line 13
    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    const/16 v0, 0x20

    .line 14
    invoke-virtual {v1, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 15
    sget-object v0, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    .line 16
    iget-object v0, v12, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const-string v4, "http://purl.org/dc/elements/1.1/"

    .line 17
    invoke-static {v0, v4, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    .line 18
    iget-object v5, v12, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 19
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x5

    const-string/jumbo v14, "x-default"

    const/4 v7, 0x0

    if-eqz v5, :cond_16

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/adobe/xmp/impl/XMPNode;

    .line 20
    iget-object v8, v5, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 21
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    move v6, v2

    .line 22
    :goto_3
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v8

    if-gt v6, v8, :cond_13

    invoke-virtual {v5, v6}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v8

    sget-object v9, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    .line 23
    iget-object v10, v8, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 24
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/adobe/xmp/options/PropertyOptions;

    if-nez v9, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v10

    .line 25
    iget v10, v10, Lcom/adobe/xmp/options/Options;->options:I

    and-int/lit16 v10, v10, 0x300

    if-nez v10, :cond_5

    move v10, v2

    goto :goto_4

    :cond_5
    move v10, v3

    :goto_4
    if-eqz v10, :cond_6

    .line 26
    new-instance v10, Lcom/adobe/xmp/impl/XMPNode;

    .line 27
    iget-object v11, v8, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 28
    invoke-direct {v10, v11, v7, v9}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v11, "[]"

    .line 29
    iput-object v11, v8, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 30
    invoke-virtual {v10, v8}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 31
    iput-object v5, v10, Lcom/adobe/xmp/impl/XMPNode;->parent:Lcom/adobe/xmp/impl/XMPNode;

    .line 32
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v11

    add-int/lit8 v15, v6, -0x1

    invoke-interface {v11, v15, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v9}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v9

    if-nez v9, :cond_7

    new-instance v9, Lcom/adobe/xmp/impl/XMPNode;

    const-string/jumbo v10, "xml:lang"

    invoke-direct {v9, v10, v14, v7}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    invoke-virtual {v8, v9}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v10

    const/16 v11, 0x1e00

    invoke-virtual {v10, v11, v3}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    invoke-virtual {v9}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v8}, Lcom/adobe/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/xmp/impl/XMPNode;)V

    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 34
    :cond_8
    iget-object v7, v5, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    const-string v8, "http://ns.adobe.com/exif/1.0/"

    .line 35
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "exif:GPSTimeStamp"

    .line 36
    invoke-static {v5, v7, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    if-nez v7, :cond_9

    goto :goto_6

    .line 37
    :cond_9
    :try_start_1
    iget-object v8, v7, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 38
    invoke-static {v8}, Lcom/adobe/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    .line 39
    iget v9, v9, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    if-nez v9, :cond_c

    .line 40
    move-object v9, v8

    check-cast v9, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    .line 41
    iget v9, v9, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    if-nez v9, :cond_c

    .line 42
    move-object v9, v8

    check-cast v9, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    .line 43
    iget v9, v9, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    if-eqz v9, :cond_a

    goto :goto_6

    :cond_a
    const-string v9, "exif:DateTimeOriginal"

    .line 44
    invoke-static {v5, v9, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v9

    if-nez v9, :cond_b

    const-string v9, "exif:DateTimeDigitized"

    invoke-static {v5, v9, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v9

    .line 45
    :cond_b
    iget-object v9, v9, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 46
    invoke-static {v9}, Lcom/adobe/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v9

    check-cast v8, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->getCalendar()Ljava/util/Calendar;

    move-result-object v8

    move-object v10, v9

    check-cast v10, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    .line 47
    iget v10, v10, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 48
    invoke-virtual {v8, v2, v10}, Ljava/util/Calendar;->set(II)V

    move-object v2, v9

    check-cast v2, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    .line 49
    iget v2, v2, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    const/4 v10, 0x2

    .line 50
    invoke-virtual {v8, v10, v2}, Ljava/util/Calendar;->set(II)V

    check-cast v9, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    .line 51
    iget v2, v9, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 52
    invoke-virtual {v8, v6, v2}, Ljava/util/Calendar;->set(II)V

    new-instance v2, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v2, v8}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    .line 53
    invoke-static {v2}, Lcom/adobe/xmp/impl/ISO8601Converter;->render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v2

    .line 54
    iput-object v2, v7, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_c
    :goto_6
    const-string v2, "exif:UserComment"

    .line 55
    invoke-static {v5, v2, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    if-eqz v2, :cond_13

    move-object/from16 p0, v4

    goto/16 :goto_b

    .line 56
    :cond_d
    iget-object v6, v5, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    const-string v7, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    .line 57
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string/jumbo v6, "xmpDM:copyright"

    invoke-static {v5, v6, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v15

    if-eqz v15, :cond_13

    .line 58
    :try_start_2
    iget-object v5, v12, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 59
    invoke-static {v5, v4, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v5

    .line 60
    iget-object v11, v15, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    const-string v10, "\n\n"

    const-string v6, "dc:rights"

    .line 61
    invoke-static {v5, v6, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v5

    if-nez v5, :cond_e

    goto/16 :goto_9

    :cond_e
    invoke-static {v3, v14}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_f

    invoke-virtual {v3, v2}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 62
    iget-object v2, v2, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    const-string v6, "http://purl.org/dc/elements/1.1/"

    const-string v7, "rights"

    const-string v8, ""

    const-string/jumbo v9, "x-default"
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v16, 0x0

    move-object v5, v12

    move-object/from16 p0, v4

    move-object v4, v10

    move-object v10, v2

    move-object v2, v11

    move-object/from16 v11, v16

    .line 63
    :try_start_3
    invoke-virtual/range {v5 .. v11}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    invoke-static {v3, v14}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v5

    goto :goto_7

    :cond_f
    move-object/from16 p0, v4

    move-object v4, v10

    move-object v2, v11

    :goto_7
    invoke-virtual {v3, v5}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    .line 64
    iget-object v5, v3, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_10

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_10
    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    :goto_8
    iput-object v2, v3, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_a

    :cond_11
    :goto_9
    move-object/from16 p0, v4

    move-object v4, v10

    move-object v2, v11

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v6, "http://purl.org/dc/elements/1.1/"

    const-string v7, "rights"

    const-string v8, ""

    const-string/jumbo v9, "x-default"

    const/4 v11, 0x0

    move-object v5, v12

    invoke-virtual/range {v5 .. v11}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 68
    :cond_12
    :goto_a
    iget-object v2, v15, Lcom/adobe/xmp/impl/XMPNode;->parent:Lcom/adobe/xmp/impl/XMPNode;

    .line 69
    invoke-virtual {v2, v15}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V
    :try_end_3
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_c

    :catch_2
    :cond_13
    move-object/from16 p0, v4

    goto :goto_c

    :cond_14
    move-object/from16 p0, v4

    .line 70
    iget-object v2, v5, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    const-string v3, "http://ns.adobe.com/xap/1.0/rights/"

    .line 71
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string/jumbo v2, "xmpRights:UsageTerms"

    const/4 v3, 0x0

    invoke-static {v5, v2, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    if-eqz v2, :cond_15

    :goto_b
    invoke-static {v2}, Lcom/adobe/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/xmp/impl/XMPNode;)V

    :catch_3
    :cond_15
    :goto_c
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v4, p0

    goto/16 :goto_2

    .line 72
    :cond_16
    iget-boolean v2, v0, Lcom/adobe/xmp/impl/XMPNode;->hasAliases:Z

    const/4 v3, 0x4

    if-nez v2, :cond_17

    goto/16 :goto_14

    :cond_17
    const/4 v2, 0x0

    .line 73
    iput-boolean v2, v0, Lcom/adobe/xmp/impl/XMPNode;->hasAliases:Z

    .line 74
    invoke-virtual {v1, v3}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v1

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 76
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/xmp/impl/XMPNode;

    .line 77
    iget-boolean v5, v4, Lcom/adobe/xmp/impl/XMPNode;->hasAliases:Z

    if-nez v5, :cond_18

    goto :goto_d

    .line 78
    :cond_18
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adobe/xmp/impl/XMPNode;

    .line 79
    iget-boolean v9, v8, Lcom/adobe/xmp/impl/XMPNode;->alias:Z

    if-nez v9, :cond_1a

    goto :goto_e

    :cond_1a
    const/4 v9, 0x0

    .line 80
    iput-boolean v9, v8, Lcom/adobe/xmp/impl/XMPNode;->alias:Z

    .line 81
    sget-object v10, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 82
    iget-object v11, v8, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 83
    check-cast v10, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {v10, v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v10

    if-eqz v10, :cond_19

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    invoke-static {v0, v11, v7, v13}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v11

    .line 84
    iput-boolean v9, v11, Lcom/adobe/xmp/impl/XMPNode;->implicit:Z

    .line 85
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13, v9}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v9

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v13

    if-nez v9, :cond_1d

    .line 86
    iget v9, v13, Lcom/adobe/xmp/options/Options;->options:I

    if-nez v9, :cond_1b

    const/4 v9, 0x1

    goto :goto_f

    :cond_1b
    const/4 v9, 0x0

    :goto_f
    if-eqz v9, :cond_1c

    .line 87
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 88
    iput-object v9, v8, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 89
    invoke-virtual {v11, v8}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_13

    :cond_1c
    new-instance v9, Lcom/adobe/xmp/impl/XMPNode;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v10

    .line 90
    new-instance v15, Lcom/adobe/xmp/options/PropertyOptions;

    .line 91
    iget v10, v10, Lcom/adobe/xmp/options/Options;->options:I

    .line 92
    invoke-direct {v15, v10}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    .line 93
    invoke-direct {v9, v13, v7, v15}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 94
    invoke-virtual {v11, v9}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    :goto_10
    invoke-static {v5, v8, v9}, Lcom/adobe/xmp/impl/XMPNormalizer;->transplantArrayItemAlias(Ljava/util/Iterator;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_e

    .line 95
    :cond_1d
    iget v11, v13, Lcom/adobe/xmp/options/Options;->options:I

    if-nez v11, :cond_1e

    const/4 v11, 0x1

    goto :goto_11

    :cond_1e
    const/4 v11, 0x0

    :goto_11
    if-eqz v11, :cond_1f

    if-eqz v1, :cond_23

    const/4 v10, 0x1

    .line 96
    invoke-static {v8, v9, v10}, Lcom/adobe/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;Z)V

    goto :goto_13

    :cond_1f
    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v10

    const/16 v11, 0x1000

    .line 97
    invoke-virtual {v10, v11}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 98
    invoke-static {v9, v14}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_21

    invoke-virtual {v9, v10}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    const/4 v11, 0x1

    goto :goto_12

    :cond_20
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    goto :goto_12

    :cond_21
    const/4 v11, 0x1

    move-object v10, v7

    :goto_12
    if-nez v10, :cond_22

    goto :goto_10

    :cond_22
    if-eqz v1, :cond_23

    invoke-static {v8, v10, v11}, Lcom/adobe/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;Z)V

    :cond_23
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_e

    :cond_24
    const/4 v5, 0x0

    .line 99
    iput-boolean v5, v4, Lcom/adobe/xmp/impl/XMPNode;->hasAliases:Z

    goto/16 :goto_d

    .line 100
    :cond_25
    :goto_14
    iget-object v1, v0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 101
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x24

    if-lt v1, v2, :cond_2e

    .line 102
    iget-object v1, v0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "uuid:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_26
    sget-object v5, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    if-nez v1, :cond_27

    goto :goto_17

    :cond_27
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 104
    :goto_15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_2b

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_2a

    add-int/lit8 v8, v8, 0x1

    if-eqz v6, :cond_29

    const/16 v6, 0x8

    if-eq v5, v6, :cond_28

    const/16 v6, 0xd

    if-eq v5, v6, :cond_28

    const/16 v6, 0x12

    if-eq v5, v6, :cond_28

    const/16 v6, 0x17

    if-ne v5, v6, :cond_29

    :cond_28
    const/4 v6, 0x1

    goto :goto_16

    :cond_29
    const/4 v6, 0x0

    :cond_2a
    :goto_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_2b
    if-eqz v6, :cond_2c

    if-ne v3, v8, :cond_2c

    if-ne v2, v5, :cond_2c

    const/4 v2, 0x1

    goto :goto_18

    :cond_2c
    :goto_17
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_2e

    const-string v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string v3, "InstanceID"

    .line 105
    invoke-static {v2, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/FieldAttributes;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v7}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/google/gson/FieldAttributes;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 106
    iput-object v7, v2, Lcom/adobe/xmp/impl/XMPNode;->options:Lcom/adobe/xmp/options/PropertyOptions;

    .line 107
    invoke-static {v4, v1}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    iput-object v1, v2, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 109
    iput-object v7, v2, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    .line 110
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 111
    invoke-virtual {v1, v3, v4}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    const/16 v3, 0x40

    .line 112
    invoke-virtual {v1, v3, v4}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    const/16 v3, 0x80

    .line 113
    invoke-virtual {v1, v3, v4}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    .line 114
    iput-object v7, v2, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    .line 115
    iput-object v7, v0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    goto :goto_19

    .line 116
    :cond_2d
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0x9

    const-string v2, "Failure creating xmpMM:InstanceID"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 117
    :cond_2e
    :goto_19
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1a

    .line 118
    :cond_30
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0xca

    const-string v2, "Invalid attributes of rdf:RDF element"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 119
    :cond_31
    new-instance v12, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    :cond_32
    return-object v12
.end method

.method public static serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v1, 0x1000

    .line 4
    invoke-virtual {p1, v1}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->sort()V

    .line 6
    :cond_0
    new-instance v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;

    invoke-direct {v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;-><init>()V

    .line 7
    :try_start_0
    new-instance v2, Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-direct {v2, v0}, Lcom/adobe/xmp/impl/CountOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-virtual {p1}, Lcom/adobe/xmp/options/SerializeOptions;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    iput-object p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    iput-object p1, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    .line 8
    iget p0, p1, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    .line 9
    iput p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    new-instance p0, Ljava/io/OutputStreamWriter;

    iget-object v2, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-virtual {p1}, Lcom/adobe/xmp/options/SerializeOptions;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->checkOptionsConsistence()V

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeAsRDF()Ljava/lang/String;

    move-result-object p0

    iget-object p1, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->addPadding(I)V

    .line 10
    iget-object p1, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 11
    iget-object p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 13
    :catch_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/4 p1, 0x0

    const-string v0, "Error writing to the OutputStream"

    invoke-direct {p0, v0, p1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "The serializing service works onlywith the XMPMeta implementation of this library"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
