.class public Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;
.super Landroid/widget/Filter;
.source "SettingsManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;->this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;->this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mOriginalData:Ljava/util/List;

    goto/16 :goto_9

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;->this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mOriginalData:Ljava/util/List;

    const-string v3, "choices"

    .line 8
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 11
    move-object v5, v4

    check-cast v5, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 12
    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 13
    invoke-static {v5, v1, v7, v6}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 14
    new-instance v5, Lcom/motorola/camera/utility/search/BoundExtractedResult;

    const/4 v6, -0x1

    invoke-direct {v5, v4, v6}, Lcom/motorola/camera/utility/search/BoundExtractedResult;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    new-array v9, v6, [[Ljava/lang/Integer;

    move v10, v7

    :goto_1
    if-ge v10, v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v8

    new-array v12, v11, [Ljava/lang/Integer;

    move v13, v7

    :goto_2
    if-ge v13, v11, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    aput-object v12, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v8, v6, :cond_8

    move v10, v8

    :goto_3
    add-int/lit8 v11, v10, 0x1

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v8, v12, :cond_6

    move v13, v8

    :goto_4
    add-int/lit8 v14, v13, 0x1

    add-int/lit8 v15, v10, -0x1

    .line 18
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v13, -0x1

    move-object/from16 v16, v0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v7, v0, :cond_4

    .line 19
    aget-object v0, v9, v10

    aget-object v7, v9, v15

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v17, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v13

    goto :goto_5

    :cond_4
    const/16 v17, 0x1

    .line 20
    aget-object v0, v9, v10

    aget-object v7, v9, v15

    aget-object v7, v7, v13

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v15, v9, v10

    aget-object v8, v15, v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Integer;->max(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v13

    :goto_5
    if-ne v13, v12, :cond_5

    goto :goto_6

    :cond_5
    move v13, v14

    move-object/from16 v0, v16

    move/from16 v8, v17

    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v16, v0

    move/from16 v17, v8

    :goto_6
    if-ne v10, v6, :cond_7

    goto :goto_7

    :cond_7
    move v10, v11

    move-object/from16 v0, v16

    move/from16 v8, v17

    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    move-object/from16 v16, v0

    .line 21
    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v0, v9, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v0, :cond_9

    .line 23
    new-instance v0, Lcom/motorola/camera/utility/search/BoundExtractedResult;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/motorola/camera/utility/search/BoundExtractedResult;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 24
    :cond_a
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/search/BoundExtractedResult;

    .line 26
    iget-object v1, v1, Lcom/motorola/camera/utility/search/BoundExtractedResult;->referent:Ljava/lang/Object;

    .line 27
    check-cast v1, Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 28
    :cond_b
    :goto_9
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 29
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;->this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;->this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method
