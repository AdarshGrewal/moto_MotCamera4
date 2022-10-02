.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "ControlPanelOptionsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption<",
        "TT;>;",
        "Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final canChangeValue:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final disabledToast:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final onItemSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionDiffUtil;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionDiffUtil;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;->canChangeValue:Lkotlin/jvm/functions/Function0;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;->onItemSelected:Lkotlin/jvm/functions/Function1;

    .line 5
    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;->disabledToast:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 4
    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;->imageView$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->icon:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    :goto_0
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->selected:Z

    .line 12
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 13
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->enabled:Z

    .line 14
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 15
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->contentDescription:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p0, "parent"

    .line 1
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d003d

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;

    const-string/jumbo p2, "view"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
