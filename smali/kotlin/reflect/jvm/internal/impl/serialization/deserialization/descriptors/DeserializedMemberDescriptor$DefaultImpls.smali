.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor$DefaultImpls;
.super Ljava/lang/Object;
.source "DeserializedMemberDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getVersionRequirements(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;->getProto()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v0

    invoke-interface/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;->getNameResolver()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;->getVersionRequirementTable()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    move-result-object v2

    const-string v3, "proto"

    .line 2
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nameResolver"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "table"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v3, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    if-eqz v3, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 4
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    goto :goto_0

    .line 5
    :cond_0
    instance-of v3, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    if-eqz v3, :cond_1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    .line 6
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->versionRequirement_:Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_1
    instance-of v3, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    if-eqz v3, :cond_2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    .line 8
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->versionRequirement_:Ljava/util/List;

    goto :goto_0

    .line 9
    :cond_2
    instance-of v3, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    if-eqz v3, :cond_3

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    .line 10
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->versionRequirement_:Ljava/util/List;

    goto :goto_0

    .line 11
    :cond_3
    instance-of v3, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;

    if-eqz v3, :cond_14

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;

    .line 12
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->versionRequirement_:Ljava/util/List;

    :goto_0
    const-string v3, "ids"

    .line 13
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 16
    check-cast v4, Ljava/lang/Integer;

    const-string v5, "id"

    .line 17
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 18
    iget-object v5, v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;->infos:Ljava/util/List;

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;

    const/4 v5, 0x0

    if-nez v4, :cond_5

    goto/16 :goto_c

    .line 19
    :cond_5
    iget v6, v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->bitField0_:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    const/4 v8, 0x0

    if-ne v6, v7, :cond_6

    move v6, v7

    goto :goto_2

    :cond_6
    move v6, v8

    :goto_2
    if-eqz v6, :cond_7

    .line 20
    iget v6, v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->version_:I

    .line 21
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_7
    move-object v6, v5

    .line 22
    :goto_3
    iget v9, v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->bitField0_:I

    const/4 v10, 0x2

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_8

    move v9, v7

    goto :goto_4

    :cond_8
    move v9, v8

    :goto_4
    if-eqz v9, :cond_9

    .line 23
    iget v9, v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->versionFull_:I

    .line 24
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_5

    :cond_9
    move-object v9, v5

    :goto_5
    const/16 v11, 0x10

    const/16 v12, 0x8

    if-eqz v9, :cond_a

    .line 25
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    .line 26
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    and-int/lit16 v13, v13, 0xff

    .line 27
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    shr-int/2addr v14, v12

    and-int/lit16 v14, v14, 0xff

    .line 28
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    shr-int/2addr v9, v11

    and-int/lit16 v9, v9, 0xff

    .line 29
    invoke-direct {v6, v13, v14, v9}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;-><init>(III)V

    goto :goto_6

    :cond_a
    if-eqz v6, :cond_b

    .line 30
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    .line 31
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    and-int/lit8 v13, v13, 0x7

    .line 32
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    shr-int/lit8 v14, v14, 0x3

    and-int/lit8 v14, v14, 0xf

    .line 33
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    shr-int/lit8 v6, v6, 0x7

    and-int/lit8 v6, v6, 0x7f

    .line 34
    invoke-direct {v9, v13, v14, v6}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;-><init>(III)V

    move-object v14, v9

    goto :goto_7

    .line 35
    :cond_b
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->INFINITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    :goto_6
    move-object v14, v6

    .line 36
    :goto_7
    iget-object v6, v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->level_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;

    .line 37
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_e

    if-eq v6, v7, :cond_d

    if-ne v6, v10, :cond_c

    .line 38
    sget-object v6, Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;

    goto :goto_8

    :cond_c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 39
    :cond_d
    sget-object v6, Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;

    goto :goto_8

    .line 40
    :cond_e
    sget-object v6, Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;

    :goto_8
    move-object/from16 v16, v6

    .line 41
    iget v6, v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->bitField0_:I

    and-int/2addr v6, v12

    if-ne v6, v12, :cond_f

    move v6, v7

    goto :goto_9

    :cond_f
    move v6, v8

    :goto_9
    if-eqz v6, :cond_10

    .line 42
    iget v6, v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->errorCode_:I

    .line 43
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v17, v6

    goto :goto_a

    :cond_10
    move-object/from16 v17, v5

    .line 44
    :goto_a
    iget v6, v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->bitField0_:I

    and-int/2addr v6, v11

    if-ne v6, v11, :cond_11

    goto :goto_b

    :cond_11
    move v7, v8

    :goto_b
    if-eqz v7, :cond_12

    .line 45
    iget v5, v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->message_:I

    .line 46
    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_12
    move-object/from16 v18, v5

    .line 47
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;

    .line 48
    iget-object v15, v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->versionKind_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;

    const-string v4, "info.versionKind"

    .line 49
    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;Lkotlin/DeprecationLevel;Ljava/lang/Integer;Ljava/lang/String;)V

    :goto_c
    if-eqz v5, :cond_4

    .line 50
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_13
    return-object v3

    .line 51
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Unexpected declaration: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
