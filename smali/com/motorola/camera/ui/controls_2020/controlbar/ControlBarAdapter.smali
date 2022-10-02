.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "ControlBarAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem<",
        "*>;",
        "Lcom/motorola/camera/ui/controls_2020/DataBindingViewHolder<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public clickEnabled:Z

.field public dataBindingClickListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;

.field public final eventHandler:Lcom/motorola/camera/EventListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/EventListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->DIFF_UTIL:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->eventHandler:Lcom/motorola/camera/EventListener;

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->dataBindingClickListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/DataBindingViewHolder;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 4
    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 6
    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    .line 7
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/DataBindingViewHolder;->binding:Landroidx/databinding/ViewDataBinding;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 8
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9
    iget-boolean v1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->autoTrigger:Z

    if-nez v1, :cond_1

    .line 10
    iget-boolean p2, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isOn:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 11
    :goto_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->dataBindingClickListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;

    const-string p2, "clickListener"

    .line 13
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/DataBindingViewHolder;->binding:Landroidx/databinding/ViewDataBinding;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p0, "parent"

    .line 1
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 3
    sget p2, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->$r8$clinit:I

    .line 4
    sget-object p2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapper;

    const p2, 0x7f0d0039

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, p2, p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;

    const-string p1, "inflate(layoutInflater, parent, false)"

    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/DataBindingViewHolder;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/DataBindingViewHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p1
.end method
