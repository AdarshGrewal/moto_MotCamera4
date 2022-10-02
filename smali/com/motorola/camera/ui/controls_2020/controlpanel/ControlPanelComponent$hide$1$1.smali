.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$hide$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ControlPanelComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $it:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$hide$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$hide$1$1;->$it:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$hide$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    .line 2
    iget-boolean v0, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->controlPanelOpen:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$hide$1$1;->$it:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$hide$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->access$hide$s-139190403(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$hide$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->ignoreClicks:Z

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
