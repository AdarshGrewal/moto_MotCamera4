.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$isInModeChange$2$1;
.super Ljava/lang/Object;
.source "ControlBarComponent.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $newValue:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$isInModeChange$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$isInModeChange$2$1;->$newValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$isInModeChange$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$isInModeChange$2$1;->$newValue:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setClickable(Z)V

    :goto_0
    return-void
.end method
