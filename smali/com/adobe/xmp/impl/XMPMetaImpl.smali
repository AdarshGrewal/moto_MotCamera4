.class public Lcom/adobe/xmp/impl/XMPMetaImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/xmp/XMPMeta;


# instance fields
.field public tree:Lcom/adobe/xmp/impl/XMPNode;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/adobe/xmp/impl/XMPNode;

    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0, p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>(Lcom/adobe/xmp/impl/XMPNode;)V

    return-object v0
.end method

.method public setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    move-object/from16 v0, p5

    invoke-static/range {p1 .. p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_23

    .line 2
    invoke-static/range {p3 .. p3}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/FieldAttributes;

    move-result-object v4

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    new-instance v6, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v7, 0x1e00

    invoke-direct {v6, v7}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v7, 0x1

    invoke-static {v5, v4, v7, v6}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/google/gson/FieldAttributes;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    const/16 v5, 0x66

    if-eqz v4, :cond_22

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    const/16 v8, 0x1000

    .line 3
    invoke-virtual {v6, v8, v7}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Specified property is no alt-text array"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string/jumbo v9, "xml:lang"

    const/4 v10, 0x0

    const-string/jumbo v11, "x-default"

    const/4 v12, 0x0

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v8, v7}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    .line 5
    iget-object v13, v13, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 6
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v8, v7}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    .line 7
    iget-object v13, v13, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 8
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v6, v7

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Language qualifier must be first"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    move v6, v10

    move-object v8, v12

    :goto_1
    if-eqz v8, :cond_5

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v13

    if-le v13, v7, :cond_5

    invoke-virtual {v4, v8}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    invoke-virtual {v4, v7, v8}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 9
    :cond_5
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v13

    const/4 v14, 0x2

    if-nez v13, :cond_6

    new-array v1, v14, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v1, v10

    aput-object v12, v1, v7

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v13

    move-object/from16 v16, v12

    move-object/from16 v17, v16

    move v12, v10

    :cond_7
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v2, v18

    check-cast v2, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v18

    if-nez v18, :cond_c

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-virtual {v2, v7}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v15

    .line 10
    iget-object v15, v15, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 11
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v2, v7}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v15

    .line 12
    iget-object v15, v15, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 13
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    new-array v1, v14, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v1, v10

    aput-object v2, v1, v7

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_a

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    if-nez v16, :cond_9

    move-object/from16 v16, v2

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v17, v2

    goto :goto_2

    :cond_b
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Alt-text array item has no language qualifier"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_c
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Alt-text array item is not simple"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_d
    new-array v1, v14, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    if-ne v12, v7, :cond_e

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v10

    aput-object v16, v1, v7

    goto :goto_3

    :cond_e
    if-le v12, v7, :cond_f

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v10

    aput-object v16, v1, v7

    goto :goto_3

    :cond_f
    if-eqz v17, :cond_10

    const/4 v5, 0x4

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v10

    aput-object v17, v1, v7

    goto :goto_3

    :cond_10
    const/4 v5, 0x5

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v10

    invoke-virtual {v4, v7}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    aput-object v2, v1, v7

    .line 14
    :goto_3
    aget-object v2, v1, v10

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v7

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v2, :cond_1d

    if-eq v2, v7, :cond_16

    if-eq v2, v14, :cond_15

    const/4 v9, 0x3

    if-eq v2, v9, :cond_14

    const/4 v1, 0x4

    if-eq v2, v1, :cond_12

    const/4 v1, 0x5

    if-ne v2, v1, :cond_11

    invoke-static {v4, v3, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_1f

    goto/16 :goto_7

    :cond_11
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0x9

    const-string v2, "Unexpected result from ChooseLocalizedText"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_12
    if-eqz v8, :cond_13

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    if-ne v1, v7, :cond_13

    .line 15
    iput-object v0, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 16
    :cond_13
    invoke-static {v4, v3, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_14
    invoke-static {v4, v3, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_1f

    goto :goto_7

    :cond_15
    if-eqz v6, :cond_17

    if-eq v8, v1, :cond_17

    if-eqz v8, :cond_17

    .line 17
    iget-object v2, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    iget-object v3, v1, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_4

    :cond_16
    if-nez v5, :cond_18

    if-eqz v6, :cond_17

    if-eq v8, v1, :cond_17

    if-eqz v8, :cond_17

    .line 19
    iget-object v2, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    iget-object v3, v1, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 21
    :goto_4
    iput-object v0, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    :cond_17
    iput-object v0, v1, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_8

    .line 22
    :cond_18
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/xmp/impl/XMPNode;

    if-eq v2, v8, :cond_19

    .line 23
    iget-object v3, v2, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    if-eqz v8, :cond_1a

    iget-object v5, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_6

    :cond_1a
    const/4 v5, 0x0

    .line 24
    :goto_6
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_5

    .line 25
    :cond_1b
    iput-object v0, v2, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_5

    :cond_1c
    if-eqz v8, :cond_1f

    iput-object v0, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_8

    .line 26
    :cond_1d
    invoke-static {v4, v11, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_1e

    invoke-static {v4, v3, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_7
    move v6, v7

    :cond_1f
    :goto_8
    if-nez v6, :cond_20

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    if-ne v1, v7, :cond_20

    invoke-static {v4, v11, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    .line 27
    :cond_21
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Localized text array is not alt-text"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 28
    :cond_22
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Failed to find or create array node"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 29
    :cond_23
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty specific language"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p4, :cond_0

    .line 1
    iput-object p0, p1, Lcom/adobe/xmp/impl/XMPNode;->options:Lcom/adobe/xmp/options/PropertyOptions;

    iput-object p0, p1, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    iput-object p0, p1, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    iput-object p0, p1, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    iput-object p0, p1, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result p3

    if-nez p3, :cond_12

    const/4 p3, 0x0

    if-nez p2, :cond_1

    move-object p2, p0

    goto/16 :goto_2

    .line 3
    :cond_1
    instance-of p4, p2, Ljava/lang/Boolean;

    if-eqz p4, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "True"

    goto/16 :goto_2

    :cond_2
    const-string p2, "False"

    goto/16 :goto_2

    :cond_3
    instance-of p4, p2, Ljava/lang/Integer;

    if-eqz p4, :cond_4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    .line 5
    :cond_4
    instance-of p4, p2, Ljava/lang/Long;

    if-eqz p4, :cond_5

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    .line 7
    :cond_5
    instance-of p4, p2, Ljava/lang/Double;

    if-eqz p4, :cond_6

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    .line 9
    :cond_6
    instance-of p4, p2, Lcom/adobe/xmp/XMPDateTime;

    if-eqz p4, :cond_7

    check-cast p2, Lcom/adobe/xmp/XMPDateTime;

    .line 10
    invoke-static {p2}, Lcom/adobe/xmp/impl/ISO8601Converter;->render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    .line 11
    :cond_7
    instance-of p4, p2, Ljava/util/GregorianCalendar;

    if-eqz p4, :cond_8

    check-cast p2, Ljava/util/GregorianCalendar;

    sget p4, Lcom/adobe/xmp/XMPDateTimeFactory;->$r8$clinit:I

    .line 12
    new-instance p4, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {p4, p2}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    .line 13
    invoke-static {p4}, Lcom/adobe/xmp/impl/ISO8601Converter;->render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    .line 14
    :cond_8
    instance-of p4, p2, [B

    if-eqz p4, :cond_c

    check-cast p2, [B

    .line 15
    new-instance p4, Ljava/lang/String;

    sget-object v0, Lcom/adobe/xmp/impl/Base64;->base64:[B

    .line 16
    array-length v0, p2

    const/4 v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    move v2, p3

    move v3, v2

    :goto_0
    add-int/lit8 v4, v2, 0x3

    array-length v5, p2

    const v6, 0x3f000

    const/high16 v7, 0xfc0000

    if-gt v4, v5, :cond_9

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, p3

    or-int/2addr v2, v5

    and-int v5, v2, v7

    shr-int/lit8 v5, v5, 0x12

    add-int/lit8 v7, v3, 0x1

    sget-object v8, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v5, v8, v5

    aput-byte v5, v0, v3

    and-int v3, v2, v6

    shr-int/lit8 v3, v3, 0xc

    add-int/lit8 v5, v7, 0x1

    aget-byte v3, v8, v3

    aput-byte v3, v0, v7

    and-int/lit16 v3, v2, 0xfc0

    shr-int/lit8 v3, v3, 0x6

    add-int/lit8 v6, v5, 0x1

    aget-byte v3, v8, v3

    aput-byte v3, v0, v5

    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v3, v6, 0x1

    aget-byte v2, v8, v2

    aput-byte v2, v0, v6

    move v2, v4

    goto :goto_0

    :cond_9
    array-length v4, p2

    sub-int/2addr v4, v2

    const/16 v5, 0x3d

    const/4 v8, 0x1

    if-ne v4, v1, :cond_a

    aget-byte v1, p2, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v2, v8

    aget-byte p2, p2, v2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v1

    and-int v1, p2, v7

    shr-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v1, v4, v1

    aput-byte v1, v0, v3

    and-int v1, p2, v6

    shr-int/lit8 v1, v1, 0xc

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v4, v1

    aput-byte v1, v0, v2

    and-int/lit16 p2, p2, 0xfc0

    shr-int/lit8 p2, p2, 0x6

    add-int/lit8 v1, v3, 0x1

    aget-byte p2, v4, p2

    aput-byte p2, v0, v3

    aput-byte v5, v0, v1

    goto :goto_1

    :cond_a
    array-length v1, p2

    sub-int/2addr v1, v2

    if-ne v1, v8, :cond_b

    aget-byte p2, p2, v2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    and-int v1, p2, v7

    shr-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v1, v4, v1

    aput-byte v1, v0, v3

    and-int/2addr p2, v6

    shr-int/lit8 p2, p2, 0xc

    add-int/lit8 v1, v2, 0x1

    aget-byte p2, v4, p2

    aput-byte p2, v0, v2

    add-int/lit8 p2, v1, 0x1

    aput-byte v5, v0, v1

    aput-byte v5, v0, p2

    .line 17
    :cond_b
    :goto_1
    invoke-direct {p4, v0}, Ljava/lang/String;-><init>([B)V

    move-object p2, p4

    goto :goto_2

    .line 18
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    const/16 p4, 0x20

    if-eqz p2, :cond_f

    sget-object p0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    .line 19
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-ge p3, p2, :cond_e

    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_d
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    :cond_f
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p2

    .line 21
    invoke-virtual {p2, p4}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 22
    iget-object p2, p1, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    const-string/jumbo p3, "xml:lang"

    .line 23
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_4

    :cond_10
    invoke-static {p0}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    :cond_11
    :goto_4
    iput-object p0, p1, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_6

    :cond_12
    if-eqz p2, :cond_14

    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_13

    goto :goto_5

    :cond_13
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/16 p1, 0x66

    const-string p2, "Composite nodes can\'t have values"

    invoke-direct {p0, p2, p1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 26
    :cond_14
    :goto_5
    iput-object p0, p1, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    :goto_6
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p4, p3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p4

    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/FieldAttributes;

    move-result-object p1

    iget-object p2, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0, p4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/google/gson/FieldAttributes;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;Z)V

    return-void

    :cond_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/16 p1, 0x66

    const-string p2, "Specified property does not exist"

    invoke-direct {p0, p2, p1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {p2}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x66

    .line 5
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p3, p4}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/FieldAttributes;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/gson/FieldAttributes;->size()I

    move-result p4

    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    const/16 p4, 0x2f

    invoke-static {p4}, Lcom/adobe/xmp/XMPPathFactory$$ExternalSyntheticOutline0;->m(C)Ljava/lang/StringBuilder;

    move-result-object p4

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/google/gson/FieldAttributes;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object p3

    .line 7
    iget-object p3, p3, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    .line 8
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 9
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p5, p3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    return-void

    .line 10
    :cond_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "The field name must be simple"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 11
    :cond_1
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Empty f name"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/16 p1, 0x65

    const-string p2, "Empty field namespace URI"

    invoke-direct {p0, p2, p1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 13
    :cond_3
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/4 p1, 0x4

    const-string p2, "Empty array name"

    invoke-direct {p0, p2, p1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
