.class public Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fragments/SettingsManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsManagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderUnknown;,
        Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGenericArray;,
        Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;,
        Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderBoolean;,
        Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/motorola/camera/settings/SettingsManager$Key;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field public final mFragment:Lcom/motorola/camera/fragments/SettingsManagerFragment;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mOriginalData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/motorola/camera/fragments/SettingsManagerFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            ">;",
            "Lcom/motorola/camera/fragments/SettingsManagerFragment;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mOriginalData:Ljava/util/List;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mFragment:Lcom/motorola/camera/fragments/SettingsManagerFragment;

    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;-><init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;)V

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->getKeyViewType(Lcom/motorola/camera/settings/SettingsManager$Key;)I

    move-result p0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 2
    invoke-static {p1}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->getKeyViewType(Lcom/motorola/camera/settings/SettingsManager$Key;)I

    move-result v0

    if-nez p2, :cond_0

    const p2, 0x7f0d00e3

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 4
    new-instance p3, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderUnknown;

    invoke-direct {p3, p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderUnknown;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 6
    new-instance p3, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGenericArray;

    invoke-direct {p3, p0, p2}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGenericArray;-><init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;Landroid/view/View;)V

    goto :goto_1

    .line 7
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 8
    new-instance p3, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;

    invoke-direct {p3, p0, p2}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;-><init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;Landroid/view/View;)V

    goto :goto_1

    .line 9
    :pswitch_2
    iget-object p2, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00e2

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 10
    new-instance p3, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;

    invoke-direct {p3, p0, p2}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;-><init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;Landroid/view/View;)V

    goto :goto_1

    .line 11
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0d00e0

    invoke-virtual {p0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 12
    new-instance p3, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderBoolean;

    invoke-direct {p3, p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderBoolean;-><init>(Landroid/view/View;)V

    :goto_0
    move-object p2, p0

    .line 13
    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;

    .line 15
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->setContent(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method
