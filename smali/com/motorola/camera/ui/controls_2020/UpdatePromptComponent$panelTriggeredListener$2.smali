.class public final Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$panelTriggeredListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UpdatePromptComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
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
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$panelTriggeredListener$2;->this$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$panelTriggeredListener$2;->this$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    .line 2
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->shouldKeepHidden:Z

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda5;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$panelTriggeredListener$2;->this$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->inAppUpdateUtils:Lcom/motorola/camera/utility/InAppUpdateUtils;

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->initAppUpdaterAndCheckForUpdate()V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$panelTriggeredListener$2;->this$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    .line 10
    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$panelTriggeredListener$2;->this$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    .line 12
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->controlPanelOpen:Z

    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
