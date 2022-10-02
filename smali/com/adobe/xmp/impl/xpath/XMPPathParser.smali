.class public final Lcom/adobe/xmp/impl/xpath/XMPPathParser;
.super Ljava/lang/Object;


# direct methods
.method public static expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/FieldAttributes;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    if-eqz v0, :cond_20

    if-eqz v1, :cond_20

    new-instance v3, Lcom/google/gson/FieldAttributes;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/gson/FieldAttributes;-><init>(I)V

    const/4 v5, 0x0

    move v6, v5

    .line 1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "/[*"

    if-ge v6, v7, :cond_0

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/16 v7, 0x66

    if-eqz v6, :cond_1f

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2
    sget-object v10, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 3
    check-cast v10, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {v10, v9}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v10

    const/high16 v11, -0x80000000

    const/4 v12, 0x5

    const/4 v13, 0x3

    if-nez v10, :cond_1

    new-instance v10, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v10, v0, v11}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 4
    iget-object v0, v3, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v0, v9, v4}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9, v11}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 6
    iget-object v9, v3, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9, v4}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 8
    iput-boolean v4, v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->alias:Z

    .line 9
    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v9

    .line 10
    iget v9, v9, Lcom/adobe/xmp/options/Options;->options:I

    .line 11
    iput v9, v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->aliasForm:I

    .line 12
    iget-object v9, v3, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v0

    const/16 v9, 0x1000

    .line 14
    invoke-virtual {v0, v9}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const-string v9, "[?xml:lang=\'x-default\']"

    invoke-direct {v0, v9, v12}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v0

    const/16 v9, 0x200

    .line 16
    invoke-virtual {v0, v9}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const-string v9, "[1]"

    invoke-direct {v0, v9, v13}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 18
    :goto_1
    iput-boolean v4, v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->alias:Z

    .line 19
    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v9

    .line 20
    iget v9, v9, Lcom/adobe/xmp/options/Options;->options:I

    .line 21
    iput v9, v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->aliasForm:I

    .line 22
    :goto_2
    iget-object v9, v3, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v0, v5

    .line 23
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_1e

    .line 24
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2f

    const-string v11, "Empty XMPPath segment"

    if-ne v9, v10, :cond_5

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_4

    goto :goto_4

    :cond_4
    new-instance v0, Lcom/adobe/xmp/XMPException;

    invoke-direct {v0, v11, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    :goto_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2a

    const/16 v12, 0x5b

    if-ne v9, v10, :cond_7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Missing \'[\' after \'*\'"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 25
    :cond_7
    :goto_5
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v12, :cond_a

    move v0, v6

    .line 26
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    if-eq v0, v6, :cond_9

    new-instance v5, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9, v4}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    move v10, v0

    goto/16 :goto_d

    :cond_9
    new-instance v0, Lcom/adobe/xmp/XMPException;

    invoke-direct {v0, v11, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_a
    add-int/lit8 v9, v6, 0x1

    .line 27
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    const/16 v12, 0x5d

    const/4 v14, 0x0

    if-gt v11, v10, :cond_c

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v15, 0x39

    if-gt v10, v15, :cond_c

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_b

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v11, v10, :cond_b

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v10, v15, :cond_b

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_b
    new-instance v10, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v10, v14, v13}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    goto :goto_9

    :cond_c
    move v10, v9

    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_d

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v12, :cond_d

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v13, 0x3d

    if-eq v11, v13, :cond_d

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_1d

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v12, :cond_f

    invoke-virtual {v1, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v11, "[last()"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    new-instance v9, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v9, v14, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    move/from16 v16, v10

    move-object v10, v9

    move/from16 v9, v16

    :goto_9
    move/from16 v16, v9

    move v9, v5

    move-object v5, v10

    move/from16 v10, v16

    goto :goto_c

    :cond_e
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid non-numeric array index"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_f
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x27

    if-eq v5, v11, :cond_11

    const/16 v11, 0x22

    if-ne v5, v11, :cond_10

    goto :goto_a

    :cond_10
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid quote in array selector"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_11
    :goto_a
    add-int/2addr v0, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v0, v11, :cond_13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v5, :cond_11

    add-int/lit8 v11, v0, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v11, v13, :cond_13

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v5, :cond_12

    goto :goto_b

    :cond_12
    move v0, v11

    goto :goto_a

    :cond_13
    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1c

    add-int/lit8 v0, v0, 0x1

    new-instance v5, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const/4 v11, 0x6

    invoke-direct {v5, v14, v11}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    move/from16 v16, v10

    move v10, v0

    move/from16 v0, v16

    :goto_c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_1b

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v12, :cond_1b

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 28
    iput-object v6, v5, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    move v6, v9

    .line 29
    :goto_d
    iget v9, v5, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->kind:I

    const-string v11, "Only xml:lang allowed with \'@\'"

    const/4 v12, 0x2

    const/16 v13, 0x3f

    const/16 v14, 0x40

    if-ne v9, v4, :cond_16

    .line 30
    iget-object v9, v5, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    const/4 v15, 0x0

    .line 31
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v14, :cond_15

    const-string v9, "?"

    invoke-static {v9}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 32
    iget-object v14, v5, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    .line 33
    invoke-static {v14, v4, v9}, Landroidx/room/RoomDatabase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    .line 34
    iput-object v9, v5, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    const-string v14, "?xml:lang"

    .line 35
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    goto :goto_e

    :cond_14
    new-instance v0, Lcom/adobe/xmp/XMPException;

    invoke-direct {v0, v11, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 36
    :cond_15
    :goto_e
    iget-object v9, v5, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    const/4 v11, 0x0

    .line 37
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_19

    add-int/lit8 v6, v6, 0x1

    .line 38
    iput v12, v5, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->kind:I

    goto :goto_10

    :cond_16
    const/4 v15, 0x6

    if-ne v9, v15, :cond_1a

    .line 39
    iget-object v9, v5, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    .line 40
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v14, :cond_18

    const-string v9, "[?"

    invoke-static {v9}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 41
    iget-object v14, v5, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    .line 42
    invoke-static {v14, v12, v9}, Landroidx/room/RoomDatabase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    .line 43
    iput-object v9, v5, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    const-string v12, "[?xml:lang="

    .line 44
    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    goto :goto_f

    :cond_17
    new-instance v0, Lcom/adobe/xmp/XMPException;

    invoke-direct {v0, v11, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 45
    :cond_18
    :goto_f
    iget-object v9, v5, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    .line 46
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_1a

    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x5

    .line 47
    iput v9, v5, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->kind:I

    .line 48
    :cond_19
    :goto_10
    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyQualName(Ljava/lang/String;)V

    .line 49
    :cond_1a
    iget-object v9, v3, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    move v5, v6

    move v6, v10

    goto/16 :goto_3

    .line 50
    :cond_1b
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Missing \']\' for array index"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1c
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "No terminating quote for array selector"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1d
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Missing \']\' or \'=\' for array index"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1e
    return-object v3

    .line 51
    :cond_1f
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty initial XMPPath step"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 52
    :cond_20
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Parameter must not be null"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static verifyQualName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x66

    if-lez v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/adobe/xmp/impl/Utils;->isXMLNameNS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 2
    check-cast v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {v0, p0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Unknown namespace prefix for qualified name"

    invoke-direct {p0, v0, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Ill-formed qualified name"

    invoke-direct {p0, v0, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static verifySimpleXMLName(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v0, v1, :cond_1

    .line 2
    sget-object v4, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    aget-boolean v0, v4, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    goto :goto_5

    :cond_2
    move v0, v3

    .line 3
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v1, :cond_4

    .line 4
    sget-object v5, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v3

    :goto_4
    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_5
    if-eqz v2, :cond_7

    return-void

    .line 5
    :cond_7
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/16 v0, 0x66

    const-string v1, "Bad XML name"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const/16 v0, 0x65

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    const/16 v4, 0x66

    if-eq v2, v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_5

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    .line 1
    sget-object v2, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 2
    check-cast v2, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {v2, p0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    invoke-static {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 4
    check-cast v2, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {v2, p0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Schema namespace URI and prefix mismatch"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Unknown schema namespace prefix"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Unregistered schema namespace URI"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_4
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Top level name must be simple"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Top level name must not be a qualifier"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Schema namespace URI is required"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
