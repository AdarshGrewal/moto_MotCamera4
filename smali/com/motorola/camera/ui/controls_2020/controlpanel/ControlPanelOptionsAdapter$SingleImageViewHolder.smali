.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ControlPanelOptionsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleImageViewHolder"
.end annotation


# instance fields
.field public final imageView$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder$imageView$2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder$imageView$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;->imageView$delegate:Lkotlin/Lazy;

    return-void
.end method
