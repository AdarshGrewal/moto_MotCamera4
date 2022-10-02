.class public Lcom/motorola/camera/saving/XmpData;
.super Ljava/lang/Object;
.source "XmpData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/saving/XmpData$DepthFocus;,
        Lcom/motorola/camera/saving/XmpData$GImage;,
        Lcom/motorola/camera/saving/XmpData$GDepth;
    }
.end annotation


# instance fields
.field public mExtMetadata:Lcom/adobe/xmp/XMPMeta;

.field public mMetadata:Lcom/adobe/xmp/XMPMeta;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    const-string v1, "http://ns.google.com/photos/1.0/container/"

    const-string v2, "Container"

    .line 2
    check-cast v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    const-string v1, "http://ns.google.com/photos/1.0/container/item/"

    const-string v2, "Item"

    .line 4
    check-cast v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "GCamera"

    .line 6
    check-cast v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "GDepth"

    .line 8
    check-cast v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    const-string v1, "http://ns.google.com/photos/1.0/image/"

    const-string v2, "GImage"

    .line 10
    check-cast v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    const-string v1, "http://ns.google.com/photos/1.0/panorama/"

    const-string v2, "GPano"

    .line 12
    check-cast v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    const-string v1, "http://ns.motorola.com/camera/1.0/depthfocus/"

    const-string v2, "MotDepthFocus"

    .line 14
    check-cast v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    const-string v1, "http://ns.motorola.com/camera/1.0/debuginfo/"

    const-string v2, "MotDebugInfo"

    .line 16
    check-cast v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    const-string v1, "http://ns.google.com/photos/1.0/document/"

    const-string v2, "MotDocument"

    .line 18
    check-cast v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    return-void
.end method

.method public static createMotionPhotoItemDirectory(Lcom/adobe/xmp/XMPMeta;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    check-cast v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http://ns.google.com/photos/1.0/container/"

    .line 2
    invoke-static {v1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    const-string v2, "Directory"

    invoke-static {v2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/FieldAttributes;

    move-result-object v3

    iget-object v0, v0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/google/gson/FieldAttributes;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    const-string v3, "The named property is not an array"

    const/16 v6, 0x66

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    :goto_0
    if-nez v0, :cond_8

    .line 3
    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v7, 0x400

    const/4 v8, 0x1

    .line 4
    invoke-virtual {v0, v7, v8}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    move v7, v4

    :goto_1
    const/4 v9, 0x2

    if-ge v7, v9, :cond_8

    const-string v9, ""

    .line 5
    new-instance v10, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v10}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v11, 0x100

    .line 6
    invoke-virtual {v10, v11, v8}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    .line 7
    move-object/from16 v11, p0

    check-cast v11, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 8
    invoke-static {v1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 9
    iget v12, v0, Lcom/adobe/xmp/options/Options;->options:I

    and-int/lit16 v12, v12, -0x1e01

    if-nez v12, :cond_1

    move v12, v8

    goto :goto_2

    :cond_1
    move v12, v4

    :goto_2
    const/16 v13, 0x67

    if-eqz v12, :cond_7

    .line 10
    invoke-static {v0, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-static {v1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/FieldAttributes;

    move-result-object v14

    iget-object v15, v11, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-static {v15, v14, v4, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/google/gson/FieldAttributes;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Lcom/adobe/xmp/XMPException;

    invoke-direct {v0, v3, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v15

    if-eqz v15, :cond_6

    iget-object v13, v11, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-static {v13, v14, v8, v12}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/google/gson/FieldAttributes;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 11
    :goto_3
    new-instance v12, Lcom/adobe/xmp/impl/XMPNode;

    const-string v13, "[]"

    .line 12
    invoke-direct {v12, v13, v5, v5}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 13
    invoke-static {v10, v9}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v10

    invoke-virtual {v15}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v13

    add-int/2addr v13, v8

    if-gt v8, v13, :cond_4

    invoke-virtual {v15, v13, v12}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    invoke-virtual {v11, v12, v9, v10, v4}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0x68

    const-string v2, "Array index out of bounds"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 14
    :cond_5
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Failure creating array node"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_6
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Explicit arrayOptions required to create new array"

    invoke-direct {v0, v1, v13}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Only array form flags allowed for arrayOptions"

    invoke-direct {v0, v1, v13}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_8
    return-void

    .line 15
    :cond_9
    new-instance v0, Lcom/adobe/xmp/XMPException;

    invoke-direct {v0, v3, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static embedMotionPhotoItem(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 1
    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const-string v1, "http://ns.google.com/photos/1.0/container/"

    const-string v3, "http://ns.google.com/photos/1.0/container/item/"

    const-string v4, "Semantic"

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v1, "http://ns.google.com/photos/1.0/container/"

    const-string v3, "http://ns.google.com/photos/1.0/container/item/"

    const-string v4, "Length"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://ns.google.com/photos/1.0/container/"

    const-string v3, "http://ns.google.com/photos/1.0/container/item/"

    const-string v4, "Mime"

    move-object v5, p3

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/adobe/xmp/XMPMeta;)Lcom/motorola/camera/saving/XmpData;
    .locals 6

    if-nez p1, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_1

    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 14
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 17
    :try_start_0
    new-instance v1, Lcom/adobe/xmp/options/IteratorOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/IteratorOptions;-><init>()V

    const/4 v2, 0x1

    const/16 v3, 0x200

    .line 18
    invoke-virtual {v1, v3, v2}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    .line 19
    check-cast p1, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 20
    new-instance v2, Lcom/adobe/xmp/impl/XMPIteratorImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v3, v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl;-><init>(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)V

    .line 21
    :goto_0
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 23
    invoke-interface {p1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v5, v0

    check-cast v5, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 24
    invoke-virtual {v5, v1, v4, p1, v3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-object p0
.end method

.method public add(Lcom/motorola/camera/saving/ViewPoint;)Lcom/motorola/camera/saving/XmpData;
    .locals 7

    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez p1, :cond_1

    sget-object p1, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 2
    new-instance p1, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_0
    const-string v1, "PoseHeadingDegrees"

    .line 5
    move-object v2, p1

    check-cast v2, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v3, Ljava/lang/Double;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v1, v3, v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v1, "PosePitchDegrees"

    .line 7
    move-object v2, p1

    check-cast v2, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 8
    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v2, v0, v1, v3, v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v1, "InitialViewHeadingDegrees"

    .line 9
    move-object v2, p1

    check-cast v2, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 10
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v1, v3, v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v1, "InitialViewPitchDegrees"

    .line 11
    check-cast p1, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 12
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1, v2, v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object p0
.end method

.method public embedDebugData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 2
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_1

    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 5
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 7
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    const-string v0, "http://ns.motorola.com/camera/1.0/debuginfo/"

    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
